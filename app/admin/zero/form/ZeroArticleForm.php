<?php

namespace app\admin\zero\form;

/**
* 文章内容
* Created by Beacon AI Tool.
* User: wj008
* Date: 2018/07/20
* Time: 06:57:09
* 注意：该代码由工具生成，不要在此处修改任何代码，将会被覆盖，如要修改请在应用 form目录中创建同名类并继承该生成类进行调整
*/

use beacon\Form;
use beacon\Request;
use beacon\Route;
use beacon\DB;

class ZeroArticleForm extends Form
{
    public $title='文章内容';
    public $caption='';
    public $tbname='@pf_article';
    public $useAjax=true;

    public function __construct(string $type = ''){
        parent::__construct($type);
        if($this->isEdit()){
            $this->addHideBox('id', Request::instance()->get('id:i', 0));
        }
    }

    protected function load(){
        return [
                'title' => [
                    'label' => '文章标题',
                    'type' => 'text',
                    'dbfield' => true,
                    'box-style' => 'width:400px',
                    'data-val' => [
                            'required' => true,
                        ],
                    'data-val-msg' => [
                            'required' => '文章标题必须填写',
                        ],
                    'var-type' => 'string',
                ],
                'columnCategory' => [
                    'label' => '栏目类别',
                    'type' => 'linkage',
                    'dbfield' => true,
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
                    'data-source' => Route::url('^/admin/Index/linkage'),
                    'data-method' => 'get',
                    'data-header1' => '选择栏目',
                    'data-header2' => '选择类别',
                    'var-type' => 'string',
                ],
                'cover' => [
                    'label' => '封面图片',
                    'type' => 'upimg',
                    'dbfield' => true,
                    'data-url' => '/service/upfile',
                    'data-extensions' => 'jpg,jpeg,bmp,gif,png',
                    'data-field-name' => 'filedata',
                    'data-btn-width' => 160,
                    'data-btn-height' => 120,
                    'var-type' => 'string',
                ],
                'abstract' => [
                    'label' => '摘要',
                    'type' => 'textarea',
                    'dbfield' => true,
                    'box-style' => 'height:120px;width:500px',
                    'var-type' => 'string',
                ],
                'author' => [
                    'label' => '作者',
                    'type' => 'text',
                    'dbfield' => true,
                    'default' => 'wj008',
                    'var-type' => 'string',
                ],
                'source' => [
                    'label' => '来源',
                    'type' => 'text',
                    'dbfield' => true,
                    'default' => '叶子的博客',
                    'var-type' => 'string',
                ],
                'tags' => [
                    'label' => '选择标签',
                    'type' => 'multiple',
                    'dbfield' => true,
                    'data-href' => Route::url('^/admin/SelectTag'),
                    'text-func' => function($value=0){
                        $row = DB::getRow('select name from @pf_tag where id=?',$value);
                        $text = ($row == null || !isset($row['name'])) ? null : $row['name'];
                        return $text;
                    },
                    'item-type' => 'integer',
                    'var-type' => 'string',
                ],
                'clicks' => [
                    'label' => '点击数',
                    'type' => 'integer',
                    'dbfield' => true,
                    'force-default' => '1',
                    'default' => '0',
                    'var-type' => 'integer',
                ],
                'sort' => [
                    'label' => '排序',
                    'type' => 'integer',
                    'dbfield' => true,
                    'default' => function(){ return $this->maxSort();},
                    'var-type' => 'integer',
                ],
                'content' => [
                    'label' => '文章内容',
                    'type' => 'xheditor',
                    'dbfield' => true,
                    'box-style' => 'height:300px;',
                    'var-type' => 'string',
                ],
                'addtime' => [
                    'label' => '创建时间',
                    'type' => 'datetime',
                    'dbfield' => true,
                    'view-close' => true,
                    'off-edit' => true,
                    'force-default' => '1',
                    'default' => function(){ return date('Y-m-d H:i:s');},
                    'var-type' => 'string',
                ],
                'isTop' => [
                    'label' => '是否置顶',
                    'type' => 'check',
                    'dbfield' => true,
                    'after-text' => '勾选置顶',
                    'default' => '0',
                    'var-type' => 'bool',
                ],
                'allow' => [
                    'label' => '是否审核',
                    'type' => 'check',
                    'dbfield' => true,
                    'after-text' => '勾选审核',
                    'default' => '1',
                    'var-type' => 'bool',
                ],
                'isComment' => [
                    'label' => '是否开放评论',
                    'type' => 'check',
                    'dbfield' => true,
                    'after-text' => '勾选开放评论',
                    'default' => '0',
                    'var-type' => 'bool',
                ],
        ];
    }
}