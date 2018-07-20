{extends file='Layout.tpl'}
{block name="main"}
    <div class="navbar-seat"></div>
    <div class="main container clearfix">
        <div class="main-left">
            <div class="main-path ibox clearfix">
                <div><b>当前位置：</b>
                    <a href="/">首页</a>
                    {if !empty($data['keyword'])} &gt; 搜索关键字：<a href="{url ctl='Search' act='index'}"><span class="red">{$data['keyword']}</span></a>{/if}
                    {if !empty($data['tag']) && !empty($data['tagName'])} &gt; 搜索标签：<a href="{url ctl='Search' act='index'}"><span class="red">{$data['tagName']}</span></a>{/if}
                    {if !empty($data['year']) && !empty($data['month'])} &gt; 搜索月份：<a href="{url ctl='Search' act='index'}"><span class="red">{$data['year']}-{$data['month']}月</span></a>{/if}
                </div>
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
