<?php

namespace app\admin\zero\form;

/**
* Tag标签
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 09:57:13
*/

use beacon\Form;

class ZeroSelectTagSearch extends Form
{
    public $title='Tag标签';
    public $caption='Tag标签';
    public $viewUseTab=true;
    public $viewTabs=['base'=>'基础搜索','senior'=>'高级搜索'];

    protected function load(){
        return [
                'name' => [
                    'label' => 'TAG名称',
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