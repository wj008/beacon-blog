<?php

namespace app\home\controller;

use beacon\DB;
use beacon\PageList;

class Index extends HomeController
{
    public function indexAction()
    {
        $pageList = new PageList('select * from @pf_article where allow=1 order by sort desc,id desc', [], 10);
        $this->assign('list', $pageList->getList());
        $this->assign('pinfo', $pageList->getInfo());
        $this->display('Index.tpl');
    }

}