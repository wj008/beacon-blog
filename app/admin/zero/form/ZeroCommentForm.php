<?php

namespace app\admin\zero\form;

/**
* 评论
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/19
* Time: 09:57:13
* 注意：该代码由工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 form目录中创建同名类并继承该生成类进行调整
*/

use beacon\Form;
use beacon\Request;

class ZeroCommentForm extends Form
{
    public $title='评论';
    public $caption='';
    public $tbname='@pf_comment';
    public $useAjax=true;

    public function __construct(string $type = ''){
        parent::__construct($type);
        if($this->isEdit()){
            $this->addHideBox('id', Request::instance()->get('id:i', 0));
        }
    }

    protected function load(){
        return [
                'userId' => [
                    'label' => '评论人',
                    'type' => 'integer',
                    'dbfield' => true,
                    'var-type' => 'integer',
                ],
                'addtime' => [
                    'label' => '评论时间',
                    'type' => 'datetime',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
                'allow' => [
                    'label' => '是否审核',
                    'type' => 'check',
                    'dbfield' => true,
                    'default' => '0',
                    'var-type' => 'bool',
                ],
                'articleId' => [
                    'label' => '文章id',
                    'type' => 'integer',
                    'dbfield' => true,
                    'var-type' => 'integer',
                ],
                'replyId' => [
                    'label' => '回复id',
                    'type' => 'integer',
                    'dbfield' => true,
                    'var-type' => 'integer',
                ],
                'content' => [
                    'label' => '评论内容',
                    'type' => 'textarea',
                    'dbfield' => true,
                    'var-type' => 'string',
                ],
        ];
    }
}