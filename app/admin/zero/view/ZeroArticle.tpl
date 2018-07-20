{extends file='layoutDataTable.tpl'}
{block name='title'}文章内容{/block}

{block name='listHead'}
<div class="yeeui-optbtns">
 <div class="fl caption">文章内容</div>
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
<th align="center" width="40">id</th>
<th align="left">文章标题</th>
<th align="center" width="80">栏目类别</th>
<th align="center" width="80">栏目类别</th>
<th align="center" width="80">点击数</th>
<th align="center" width="120">创建时间</th>
<th align="center" width="80">排序</th>
<th align="center" width="80">是否置顶</th>
<th align="center" width="80">是否审核</th>
<th align="center" width="80">开放评论</th>
<th align="center" width="180">操作</th>
</tr></thead>
<tbody>
<tr v-for="rs in list">
<td align="center" v-html="rs._0"></td>
<td align="left" v-html="rs._1"></td>
<td align="center" v-html="rs._2"></td>
<td align="center" v-html="rs._3"></td>
<td align="center" v-html="rs._4"></td>
<td align="center" v-html="rs._5"></td>
<td align="center" v-html="rs._6"></td>
<td align="center" v-html="rs._7"></td>
<td align="center" v-html="rs._8"></td>
<td align="center" v-html="rs._9"></td>
<td align="center" v-html="rs._10"></td>
</tr>
<tr v-if="list.length==0"><td colspan="1000"> 没有任何数据信息....</td></tr>
</tbody>
</table>
{/block}