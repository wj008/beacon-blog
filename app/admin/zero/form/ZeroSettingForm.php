<?php

namespace app\admin\zero\form;

/**
* 配置设置
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 07:13:21
* 注意：该代码由工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 form目录中创建同名类并继承该生成类进行调整
*/

use beacon\Form;
use beacon\Request;

class ZeroSettingForm extends Form
{
    public $title='配置设置';
    public $caption='';
    public $tbname='@pf_setting';
    public $useAjax=true;
    public $viewNotBack=true;

    public function __construct(string $type = ''){
        parent::__construct($type);
        if($this->isEdit()){
            $this->addHideBox('id', Request::instance()->get('id:i', 0));
        }
    }

    protected function load(){
        return [
                'webname' => [
                    'label' => '网站标题',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'blogName' => [
                    'label' => '博客名称',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'blogSign' => [
                    'label' => '博客签名',
                    'type' => 'textarea',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'blogCover' => [
                    'label' => '上传封面',
                    'type' => 'upimg',
                    'dbfield' => true,
                    'data-url' => '/service/upfile',
                    'data-extensions' => 'jpg,jpeg,bmp,gif,png',
                    'data-field-name' => 'filedata',
                    'data-btn-width' => 396,
                    'data-btn-height' => 80,
                    'var-type' => 'string',
                ],
                'personalData' => [
                    'label' => '个人资料',
                    'type' => 'line',
                    'not-save' => true,
                    'var-type' => 'string',
                ],
                'blogger' => [
                    'label' => '博主',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'auxiliaryName' => [
                    'label' => '辅名',
                    'type' => 'text',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'face' => [
                    'label' => '头像',
                    'type' => 'upimg',
                    'dbfield' => true,
                    'data-url' => '/service/upfile',
                    'data-extensions' => 'jpg,jpeg,bmp,gif,png',
                    'data-field-name' => 'filedata',
                    'data-btn-width' => 64,
                    'data-btn-height' => 64,
                    'var-type' => 'string',
                ],
                'introduce' => [
                    'label' => '个人介绍',
                    'type' => 'textarea',
                    'dbfield' => true,
                    'box-style' => 'height:80px',
                    'var-type' => 'string',
                ],
        ];
    }
}