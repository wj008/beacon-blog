<?php

namespace app\admin\zero\form;

/**
* 评论
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 10:25:42
*/

use beacon\Form;

class ZeroCommentSearch extends Form
{
    public $title='评论';
    public $caption='评论';
    public $viewUseTab=true;
    public $viewTabs=['base'=>'基础搜索','senior'=>'高级搜索'];

    protected function load(){
        return [
        ];
    }
}