<aside class="main-right">
    <div class="aside-search">
        <form method="get" action="{url ctl='Search' act='index'}">
            <input placeholder="搜博文" name="keyword" class="inp" value="{$this->get('keyword:s','')}">
            <input type="button" class="btn" value="搜全站">
        </form>
    </div>
    <div class="aside-box ibox clearfix">
        <h3 class="aside-title">个人资料</h3>
        <div class="aside-content clearfix">
            <div class="avatar-box fl">
                <img src="{$this->getSetting('face')}" class="avatar_pic">
            </div>
            <div class="user-info fr">
                <div>{$this->getSetting('blogger')}</div>
                <div>{$this->getSetting('auxiliaryName')}</div>
            </div>
        </div>
        <div class="aside-content clearfix">
            {$this->getSetting('introduce')}
        </div>
    </div>

    <div class="aside-box ibox clearfix">
        <h3 class="aside-title">最新文章</h3>
        <div class="aside-content clearfix">
            <ul>
                {list tbname='article' where='allow=1' order='id desc' lenght=10 var='rs'}
                    <li><a href="{url ctl='Article' act='index' id=$rs.id}">{$rs.title}</a></li>
                {/list}
            </ul>
        </div>
    </div>

    <div class="aside-box ibox clearfix">
        <h3 class="aside-title">推荐文章</h3>
        <div class="aside-content clearfix">
            <ul>
                {list tbname='article' where='allow=1 and isTop=1' order='id desc' lenght=10 var='rs'}
                    <li><a href="{url ctl='Article' act='index' id=$rs.id}">{$rs.title}</a></li>
                {/list}
            </ul>
        </div>
    </div>

    <div class="aside-box ibox clearfix">
        <h3 class="aside-title">按月归档</h3>
        <div class="aside-content clearfix">
            <ul>
                {foreach from=$this->getMonthList() item="rs"}
                    <li><a href="{url ctl='Search' act='index' year=$rs.nyear month=$rs.nmonth}">{$rs.nyear}-{$rs.nmonth}月</a><span class="fr">{$rs.ncount}篇</span></li>
                {/foreach}
            </ul>
        </div>
    </div>

    <div class="aside-box ibox clearfix">
        <h3 class="aside-title">热门标签</h3>
        <div class="aside-content clearfix">
            <ul class="hotkey">
                {list tbname='tag' where='allow=1' order='id desc' lenght=30 var='rs'}
                    <li><a href="{url ctl='Search' act='index' tag=$rs.id tagName=$rs.name}">{$rs.name}</a></li>
                {/list}
            </ul>
        </div>
    </div>


</aside>