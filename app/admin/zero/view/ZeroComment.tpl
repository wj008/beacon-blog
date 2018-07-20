{extends file='layoutDataTable.tpl'}
{block name='title'}评论{/block}

{block name='listHead'}
<div class="yeeui-optbtns">
 <div class="fl caption">评论</div>
<div class="fr"><span> 共 <span id="recordsCount">0</span> 条记录</span>
<a id="refresh-btn" href="javascript:window.location.reload()" title="刷新" style="margin-right: 20px" class="yee-refresh"><i class="icofont icofont-refresh"></i>刷新</a>
<a id="add-btn" href="{url act='add'}" class="yee-btn add"><i class="icofont icofont-ui-add"></i>新增</a>
</div></div>
{/block}

{block name='listSearch'}
{if isset($search)}
{function fn=searchItem box=null}{if $box->prev}{call fn=searchItem box=$box->prev}{/if}
<label class="form-label">{if isset($box->label[0]) && $box->label[0]!='!'}{$box->label}：{/if}{box field=$box}</label>
{if $box->next}{call fn=searchItem box=$box->next}{/if}{/function}
<div class="yeeui-search">
<form id="searchform" yee-module="searchform" data-bind="#list">
<div class="form-box">
{foreach from=$search->getViewFields('base') item=box}
{call fn=searchItem box=$box}
{/foreach}
</div>
{assign $seniorItem=$search->getViewFields('senior')}
{if count($seniorItem)}
<div class="senior-item">
{foreach from=$seniorItem item=box}
<div class="form-box" style="display: block;">
{if $box->prev}{call fn=searchItem box=$box->prev}{/if}
<label class="form-label">{if isset($box->label[0]) && $box->label[0]!='!'}{$box->label}：{/if}{box field=$box}</label>
{if $box->next}{call fn=searchItem box=$box->next}{/if}
</div>
{/foreach}
</div>
{/if}
<div class="form-box">
<input class="form-btn blue" value="查询" type="submit"/>
<input class="form-btn normal" value="重置" type="reset"/><input type="hidden" name="sort">
 {foreach from=$search->getHideBox() item=value key=name}
<input type="hidden" name="{$name}" value="{$value}"/>
{/foreach}
{if count($seniorItem)}
<a class="form-btn normal senior-btn" onclick="$('.yeeui-search').toggleClass('senior')">高级搜索<i></i></a>
{/if}
</div>
</form>
</div>
{/if}
{/block}

{block name='listTable'}
<table id="list" cellspacing="0" cellpadding="0" border="0" class="yee-datatable" yee-module="datatable" data-bind-form="#searchform" data-auto-load="true">
<thead><tr>
<th align="center" width="80">id</th>
<th align="left">评论人</th>
<th align="center" width="180">评论时间</th>
<th align="center" width="180">操作</th>
</tr></thead>
<tbody>
<template v-for="rs in list">
<tr><td colspan="1000" style="padding: 0;"><table class="yee-intable" cellspacing="0" cellpadding="0" border="0">
<tr  class="first-line">
<td width="80" align="center" v-html="rs._0"></td>
<td align="left" v-html="rs._1"></td>
<td width="180" align="center" v-html="rs._2"></td>
<td width="180" align="center" v-html="rs._4"></td>
</tr>
<tr class="second-line">
<td align="left" valign="top" style='line-height:24px' colspan="1000" v-html="rs._3"></td>
</tr>
</table></td></tr>
</template>
<tr v-if="list.length==0"><td colspan="1000"> 没有任何数据信息....</td></tr>
</tbody>
</table>
{/block}

{block name='pagebar'}
<div yee-module="pagebar" data-bind="#list" class="yeeui-pagebar">
    <div class="pagebar" v-name="bar"></div>
    <div class="pagebar_info">
        共有信息：<span v-name="count"></span> 页次：<span v-name="page"></span>/<span v-name="pageCount"></span> 每页
        <span v-name="pageSize"></span>
    </div>
</div>
{/block}