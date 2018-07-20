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

class Column extends HomeController
{
    public function indexAction(int $columnId = 0, int $cateId = 0)
    {
        $row = DB::getRow('select * from @pf_column  where allow=1 and  id=?', $columnId);
        if ($row == null) {
            $this->error('不存在的栏目信息');
        }

        $row['cateId'] = $cateId;
        if ($cateId != 0) {
            $cateRow = DB::getRow('select * from @pf_category  where allow=1 and  id=?', $cateId);
            if ($cateRow == null) {
                $this->error('不存在的分类信息');
            }
            $row['cateName'] = $cateRow['name'];
        }
        $cateList = DB::getList('select * from @pf_category where allow=1 and  columnId=?', $columnId);
        foreach ($cateList as &$item) {
            $item['count'] = DB::getOne('select count(*) from @pf_article where allow=1 and categoryId=?', $item['id']);
        }
        $selector = new SqlSelector('@pf_article');
        $selector->where('allow=1 and columnId=?', $columnId);
        $selector->search('categoryId=?', $cateId);
        $selector->order('sort desc,id desc');
        $pageList = $selector->getPageList(10);
        $this->assign('row', $row);
        $this->assign('cateList', $cateList);
        $this->assign('list', $pageList->getList());
        $this->assign('pinfo', $pageList->getInfo());
        $this->display('Column.tpl');
    }

}