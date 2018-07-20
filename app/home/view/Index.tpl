{extends file='Layout.tpl'}
{block name="main"}
    <div class="banner" style="background-image:url('{$this->getSetting('blogCover')}');">
        <div class="banner-content container">
            <div class="blog-name">{$this->getSetting('blogName')}</div>
            <div class="blog-sign">{$this->getSetting('blogSign')}</div>
        </div>
    </div>
    <div class="main container clearfix">
        <div class="main-left">
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
