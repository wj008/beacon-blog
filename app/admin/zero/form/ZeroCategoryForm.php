<?php

namespace app\admin\zero\form;

/**
* 博文类别
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 09:57:13
* 注意：该代码由工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 form目录中创建同名类并继承该生成类进行调整
*/

use beacon\Form;
use beacon\Request;
use beacon\DB;

class ZeroCategoryForm extends Form
{
    public $title='博文类别';
    public $caption='';
    public $tbname='@pf_category';
    public $useAjax=true;

    public function __construct(string $type = ''){
        parent::__construct($type);
        if($this->isEdit()){
            $this->addHideBox('id', Request::instance()->get('id:i', 0));
        }
    }

    protected function load(){
        return [
                'name' => [
                    'label' => '类别名称',
                    'type' => 'text',
                    'dbfield' => true,
                    'data-val' => [
                            'required' => true,
                        ],
                    'data-val-msg' => [
                            'required' => '类别名称必须填写',
                        ],
                    'var-type' => 'string',
                ],
                'columnId' => [
                    'label' => '所属栏目',
                    'type' => 'select',
                    'dbfield' => true,
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
                    'var-type' => 'integer',
                ],
                'sort' => [
                    'label' => '排序',
                    'type' => 'text',
                    'dbfield' => true,
                    'default' => function(){ return $this->maxSort();},
                    'var-type' => 'string',
                ],
                'allow' => [
                    'label' => '是否启用',
                    'type' => 'check',
                    'dbfield' => true,
                    'default' => '1',
                    'var-type' => 'bool',
                ],
        ];
    }
}