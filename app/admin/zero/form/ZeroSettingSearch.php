<?php

namespace app\admin\zero\form;

/**
* 配置设置
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 02:22:36
*/

use beacon\Form;

class ZeroSettingSearch extends Form
{
    public $title='配置设置';
    public $caption='配置设置';
    public $viewUseTab=true;
    public $viewTabs=['base'=>'基础搜索','senior'=>'高级搜索'];

    protected function load(){
        return [
        ];
    }
}