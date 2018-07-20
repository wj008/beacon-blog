{extends file='Layout.tpl'}
{block name='title'}{$row.name} - {$this->getSetting('webname')}{/block}
{block name='keyword'}<meta name="keywords" content="{$row.name},叶子的博客,wj008博客"/>{/block}
{block name="main"}
    <div class="navbar-seat"></div>
    <div class="main container clearfix">
        <div class="main-left">
            <div class="main-path ibox clearfix">
                <div><b>当前位置：</b>
                    <a href="/">首页</a>
                    &gt; <a href="{url ctl='Column' act='index' columnId=$row.id}">{$row.name}</a>
                    {if $row.cateId!=0}
                        &gt;
                        <a href="{url ctl='Column' act='index' columnId=$row.id cateId=$row.cateId}">{$row.cateName}</a>
                    {/if}
                </div>
                {if count($cateList)>0}
                    <div class="cate-list" style="border-top: 1px #eee solid;">
                        子类：
                        {foreach from=$cateList item="rs" attr='attr'}
                            {if !$attr.first}<span>|</span>{/if}
                            <a {if $row.cateId == $rs.id}class="active"{/if} href="{url ctl='Column' act='index' columnId=$row.id cateId=$rs.id}">
                                {$rs.name} ({$rs.count})
                            </a>
                        {/foreach}
                    </div>
                {/if}
            </div>
            {foreach from=$list item="rs"}
                {include file="Section.tpl" rs=$rs}
                {foreachelse}
                <div class="empty-item">
                    没有找到任何相关的数据..
                </div>
            {/foreach}
            <div class="pages">
                {pagebar info=$pinfo}
            </div>
        </div>
        {include file="Right.tpl"}
    </div>
{/block}
