<?php

namespace app\admin\zero\form;

/**
* 文章内容
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 03:37:14
*/

use beacon\Form;
use beacon\Route;

class ZeroArticleSearch extends Form
{
    public $title='文章内容';
    public $caption='文章内容';
    public $viewUseTab=true;
    public $viewTabs=['base'=>'基础搜索','senior'=>'高级搜索'];

    protected function load(){
        return [
                'title' => [
                    'label' => '文章标题',
                    'type' => 'text',
                    'view-tab-index' => 'base',
                    'var-type' => 'string',
                ],
                'columnCategory' => [
                    'label' => '栏目类别',
                    'type' => 'linkage',
                    'names' => [
                            0 => [
                                'field' => 'columnId',
                                'type' => 'int',
                            ],
                            1 => [
                                'field' => 'categoryId',
                                'type' => 'int',
                            ],
                        ],
                    'view-tab-index' => 'base',
                    'var-type' => 'string',
                    'data-source' => Route::url('^/admin/Index/linkage'),
                    'data-method' => 'get',
                    'data-level' => 2,
                    'data-header1' => '选择栏目',
                    'data-header2' => '选择类别',
                    'data-val-group' => [
                            'rule' => [
                                0 => [
                                    'required' => true,
                                ],
                                1 => [
                                    'required' => true,
                                ],
                            ],
                            'msg' => [
                                0 => [
                                    'required' => '请选择栏目',
                                ],
                                1 => [
                                    'required' => '请选择类别',
                                ],
                            ],
                        ],
                ],
                'isTop' => [
                    'label' => '是否置顶',
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
                                'text' => '置顶',
                                'tips' => '',
                            ],
                            1 => [
                                'value' => '0',
                                'text' => '默认',
                                'tips' => '',
                            ],
                        ],
                ],
                'allow' => [
                    'label' => '是否审核',
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