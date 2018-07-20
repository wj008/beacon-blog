<?php

namespace app\admin\zero\form;

/**
* 博文类别
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 11:28:59
*/

use beacon\Form;
use beacon\Request;
use beacon\DB;

class ZeroCategorySearch extends Form
{
    public $title='博文类别';
    public $caption='博文类别';
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
                'columnId' => [
                    'label' => '所属栏目',
                    'type' => 'select',
                    'view-tab-index' => 'base',
                    'var-type' => 'string',
                    'header' => [
                            0 => '',
                            1 => '请选择栏目',
                        ],
                    'options' => function(){
                        $options=[];
                        $rows = DB::getList('select id,name from @pf_column');
                        foreach($rows as $rs){
                            $item=[];
                            $item[] = isset($rs['id']) ? $rs['id'] : '';
                            $item[] = isset($rs['name']) ? $rs['name'] : '';
                            $options[] = $item;
                        }
                        return $options;
                    },
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