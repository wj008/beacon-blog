<div class="list-item ibox clearfix">
    <h3>
        <a href="{url ctl='Article' act='index' id=$rs.id}" target="_blank">{$rs.title}</a>
    </h3>
    <div class="y-info">
        <ul>
            <li><i class="icofont icofont-funky-man"></i> {$rs.author} </li>
            <li><i class="icofont icofont-time"></i> {$rs.addtime}</li>
            <li><i class="icofont icofont-mathematical"></i> <a href="{url ctl='Column' act='index' columnId=$rs.columnId cateId=$rs.categoryId}" target="_blank">{$rs.columnId|dbval:'@pf_column'}{if $rs.categoryId>0} - {$rs.categoryId|dbval:'@pf_category'}{/if}</a></li>
            <li><i class="icofont icofont-brand-readernaut"></i> {$rs.clicks}</li>
            <li><i class="icofont icofont-ui-tag"></i>
                {foreach from=$this->getTagName($rs.tags) item="tag"}
                <a  href="{url ctl='Search' act='index' tag=$tag.id tagName=$tag.name}" target="_blank">{$tag.name}</a> &nbsp;
                {/foreach}
            </li>
        </ul>
    </div>
    <div class="y-row clearfix">
        <div class="y-row-img">
            <figure class="y-row-pic">
                <a href="https://baijunyao.com/article/160" target="_blank"><img src="{$rs.cover}" alt="叶子的博客" title="{$rs.title}"></a>
            </figure>
        </div>
        <div class="y-row-tex">
            {$rs.abstract}
        </div>
    </div>
    <a class="readall" href="{url ctl='Article' act='index' id=$rs.id}" target="_blank">阅读全文</a>
</div>