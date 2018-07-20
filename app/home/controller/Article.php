<?php
/**
 * Created by PhpStorm.
 * User: wj008
 * Date: 2018/7/20
 * Time: 5:17
 */

namespace app\home\controller;

use beacon\DB;

class Article extends HomeController
{
    public function indexAction(int $id = 0)
    {
        $row = DB::getRow('select * from @pf_article  where allow=1 and  id=?', $id);
        if ($row == null) {
            $this->error('不存在的栏目信息');
        }
        DB::update('@pf_article', ['clicks' => DB::sql('ifnull(clicks,0)+1')], $id);
        $row['prev'] = DB::getRow('select * from @pf_article  where allow=1 and id<? order by id desc limit 0,1', $id);
        $row['next'] = DB::getRow('select * from @pf_article  where allow=1 and id>? order by id asc limit 0,1', $id);
        $this->assign('row', $row);
        $this->display('Article.tpl');
    }
}