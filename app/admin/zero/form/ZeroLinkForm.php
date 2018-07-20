<?php

namespace app\admin\zero\form;

/**
* 友情链接
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 03:20:28
* 注意：该代码由工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 form目录中创建同名类并继承该生成类进行调整
*/

use beacon\Form;
use beacon\Request;

class ZeroLinkForm extends Form
{
    public $title='友情链接';
    public $caption='';
    public $tbname='@pf_link';
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
                    'label' => '链接名称',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'address' => [
                    'label' => '链接地址',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'sort' => [
                    'label' => '排序',
                    'type' => 'integer',
                    'dbfield' => true,
                    'default' => function(){ return $this->maxSort();},
                    'var-type' => 'integer',
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