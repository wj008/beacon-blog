{extends file='Layout.tpl'}
{block name='title'}{$row.title} - {$this->getSetting('webname')}{/block}
{block name='keyword'}<meta name="keywords" content="{foreach from=$this->getTagName($row.tags) item="tag"}{$tag.name},{/foreach}叶子的博客,wj008博客"/>{/block}
{block name='description'}<meta name="description" content="{$row.abstract}"/>{/block}
{block name="main"}
    <div class="navbar-seat"></div>
    <div class="main container clearfix">
        <div class="main-left">
            <div class="ibox clearfix">
                <div class="article">
                    <h1 class="title">{$row.title}</h1>
                    <div class="y-info">
                        <ul>
                            <li><i class="icofont icofont-funky-man"></i> {$row.author}</li>
                            <li>来源：{$row.source}</li>
                            <li><i class="icofont icofont-time"></i> {$row.addtime}</li>
                            <li><i class="icofont icofont-mathematical"></i>
                                <a href="{url ctl='Column' act='index' columnId=$row.columnId cateId=$row.categoryId}"
                                   target="_blank">{$row.columnId|dbval:'@pf_column'}{if $row.categoryId>0} - {$row.categoryId|dbval:'@pf_category'}{/if}</a></li>
                            <li><i class="icofont icofont-brand-readernaut"></i> {$row.clicks}</li>
                            <li><i class="icofont icofont-ui-tag"></i>
                                {foreach from=$this->getTagName($row.tags) item="tag"}
                                    <a href="{url ctl='Search' act='index' tag=$tag.id tagName=$tag.name}" target="_blank">{$tag.name}</a>
                                    &nbsp;
                                {/foreach}
                            </li>
                        </ul>
                    </div>
                    <div class="content">
                        {$row.content|raw}
                    </div>

                    <div class="more-page">
                        {if $row.prev}
                            <div><b>上一篇：</b><a href="{url ctl='Article' act='index' id=$row.prev.id}">{$row.prev.title}</a></div>
                        {/if}
                        {if $row.next}
                            <div><b>下一篇：</b><a href="{url ctl='Article' act='index' id=$row.next.id}">{$row.next.title}</a></div>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
        {include file="Right.tpl"}
    </div>
{/block}
