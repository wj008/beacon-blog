<?php

namespace app\admin\zero\controller;

/**
* 评论
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 10:25:42
* 注意：该代码由代码工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 controller目录中创建同名类并继承该生成类进行调整
*/

use app\admin\controller\ZeroController;
use beacon\SqlSelectInterface;
use beacon\SqlSelector;

class ZeroComment extends ZeroController
{

    //为ZeroController所需的配置信息
    protected function zeroLoad(){ 
        return [
            'actionForm' => 'app\\admin\\zero\\form\\ZeroCommentForm',
            'tbname' => '@pf_comment',
            'usePageList' => true,
            'pageSize' => 20,
            'template' => 'ZeroComment.tpl',
            'templateHack' => 'ZeroComment.hack.tpl',
        ];
    }

    //为ZeroController所需的条件查询
    protected function zeroWhere(SqlSelectInterface $selector){ 
        return $selector;
    }

    //为ZeroController所需的自动查询器
    protected function zeroSelector(){ 
        $selector = new SqlSelector('@pf_comment');
        $selector->order('id desc');
        $this->zeroWhere($selector);
        return $selector;
    }

    //公开 indexAction 方法
    public function indexAction(){
        return parent::indexAction();
    }

    //公开 addAction 方法
    public function addAction(){
        return parent::addAction();
    }

    //公开 editAction 方法
    public function editAction(){
        return parent::editAction();
    }

    //公开 deleteAction 方法
    public function deleteAction(){
        return parent::deleteAction();
    }
}