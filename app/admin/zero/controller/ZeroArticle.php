<?php

namespace app\admin\zero\controller;

/**
* 文章内容
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 03:37:14
* 注意：该代码由代码工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 controller目录中创建同名类并继承该生成类进行调整
*/

use app\admin\controller\ZeroController;
use beacon\SqlSelectInterface;
use beacon\Form;
use beacon\SqlSelector;

class ZeroArticle extends ZeroController
{

    //为ZeroController所需的配置信息
    protected function zeroLoad(){ 
        return [
            'actionForm' => 'app\\admin\\zero\\form\\ZeroArticleForm',
            'searchForm' => 'app\\admin\\zero\\form\\ZeroArticleSearch',
            'tbname' => '@pf_article',
            'template' => 'ZeroArticle.tpl',
            'templateHack' => 'ZeroArticle.hack.tpl',
        ];
    }

    //为ZeroController所需的条件查询
    protected function zeroWhere(SqlSelectInterface $selector){ 
          //从搜索表单获取数据
        $search = Form::instance('app\\admin\\zero\\form\\ZeroArticleSearch');
        $vals = $search->autoComplete('param');
        $title  = isset($vals['title']) ? $vals['title'] : $this->param('title');
        $title  = is_array($title ) ? '' : $title ;
        $selector->search('`title` like concat(\'%\',?,\'%\')', $title , 2);

        $columnCategory  = isset($vals['columnCategory']) ? $vals['columnCategory'] : $this->param('columnCategory');
        $columnCategory  = is_array($columnCategory ) ? '' : $columnCategory ;
        $selector->search('`columnCategory` like concat(\'%\',?,\'%\')', $columnCategory , 2);

        $isTop  = isset($vals['isTop']) ? $vals['isTop'] : $this->param('isTop');
        $isTop  = is_array($isTop ) ? '' : $isTop ;
        $selector->search('`isTop` = ?', $isTop , 2);

        $allow  = isset($vals['allow']) ? $vals['allow'] : $this->param('allow');
        $allow  = is_array($allow ) ? '' : $allow ;
        $selector->search('`allow` = ?', $allow , 2);

        return $selector;
    }

    //为ZeroController所需的自动查询器
    protected function zeroSelector(){ 
        $selector = new SqlSelector('@pf_article');
        $selector->order('sort desc,id desc');
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

    //公开 sortAction 方法
    public function sortAction(){
        return parent::sortAction();
    }

    //公开 changeAllowAction 方法
    public function changeAllowAction(){
        return parent::changeAllowAction();
    }
}