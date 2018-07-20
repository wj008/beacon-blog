<?php

namespace app\admin\zero\form;

/**
* 栏目版块
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 03:22:25
*/

use beacon\Form;

class ZeroColumnSearch extends Form
{
    public $title='栏目版块';
    public $caption='栏目版块';
    public $viewUseTab=true;
    public $viewTabs=['base'=>'基础搜索','senior'=>'高级搜索'];

    protected function load(){
        return [
                'name' => [
                    'label' => '栏目名称',
                    'type' => 'text',
                    'view-tab-index' => 'base',
                    'var-type' => 'string',
                ],
                'allow' => [
                    'label' => '是否启用',
                    'type' => 'select',
                    'view-tab-index' => 'base',
                    'var-type' => 'string',
                    'header' => [
                            0 => '',
                            1 => '全部',
                        ],
                    'options' => [
                            0 => [
                                'value' => '1',
                                'text' => '启用',
                                'tips' => '',
                            ],
                            1 => [
                                'value' => '0',
                                'text' => '禁用',
                                'tips' => '',
                            ],
                        ],
                ],
        ];
    }
}