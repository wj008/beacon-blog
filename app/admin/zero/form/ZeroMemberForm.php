<?php

namespace app\admin\zero\form;

/**
* 用户管理
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 10:27:28
* 注意：该代码由工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 form目录中创建同名类并继承该生成类进行调整
*/

use beacon\Form;
use beacon\Request;

class ZeroMemberForm extends Form
{
    public $title='用户管理';
    public $caption='';
    public $tbname='@pf_member';
    public $useAjax=true;

    public function __construct(string $type = ''){
        parent::__construct($type);
        if($this->isEdit()){
            $this->addHideBox('id', Request::instance()->get('id:i', 0));
        }
    }

    protected function load(){
        return [
                'userName' => [
                    'label' => '用户名称',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'face' => [
                    'label' => '用户头像',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
        ];
    }
}