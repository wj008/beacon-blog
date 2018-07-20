<?php
/**
 * Created by PhpStorm.
 * User: wj008
 * Date: 2018/7/20
 * Time: 4:19
 */

namespace app\home\controller;


use beacon\DB;
use beacon\SqlSelector;

class Search extends HomeController
{
    public function indexAction()
    {
        $data = [];
        $data['keyword'] = $this->get('keyword:s', '');
        $data['tag'] = $this->get('tag:i', 0);
        $data['tagName'] = $this->get('tagName:s', '');
        $data['year'] = $this->get('year:i', 0);
        $data['month'] = $this->get('month:i', 0);


        $selector = new SqlSelector('@pf_article');
        $selector->where('allow=1');
        $selector->search('title like concat("%",?,"%")', $data['keyword']);
        $selector->search('json_contains(tags->"$[*]",?,"$")', $data['tag']);

        $selector->search('year(addtime)=?', $data['year']);
        $selector->search('month(addtime)=?', $data['month']);


        $selector->order('sort desc,id desc');
        $pageList = $selector->getPageList(10);
        $this->assign('data', $data);
        $this->assign('list', $pageList->getList());
        $this->assign('pinfo', $pageList->getInfo());
        $this->display('Search.tpl');
    }

}