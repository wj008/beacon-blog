<!doctype html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>{block name='title'}{$this->getSetting('webname')}{/block}</title>
    <link rel="stylesheet" type="text/css" href="/yeeui/css/base.css">
    <link rel="stylesheet" href="/yeeui/icofont/css/icofont.css">
    <link rel="stylesheet" type="text/css" href="/static/home/css/main.css">
    <script src="/yeeui/js/jquery-3.2.1.min.js"></script>
    <script src="/static/home/js/gotop.js"></script>
    {block name='keyword'}
        <meta name="keywords" content="Beacon,PHP,Sdopx模板引擎,叶子的博客,wj008博客,千一叶"/>
    {/block}
    {block name='description'}
        <meta name="description" content="这是一个个人博客，记录一个程序员编程的点点滴滴，10年的程序生涯. 该博客既是本人的编程备忘录，也可以提供大家学习参考，并分享本人开源项目"/>
    {/block}
</head>
<body>
<header id="navbar" class="navbar">
    <div class="container">
        <div class="navbar-logo">
            <a class="logo" href="/">
                <img src="/static/home/images/logo.png">
            </a>
        </div>

        <div class="collapse">
            <ul class="navbar-nav">
                <li {if $this->route('ctl')=='index'}class="active"{/if}>
                    <a href="/">首页</a>
                </li>
                {list tbname='column' where='allow=1' var='rs'}
                    <li {if $this->get('columnId:i',0)==$rs.id}class="active"{/if}>
                        <a href="{url ctl='Column' act='index' columnId=$rs.id}">{$rs.name}</a>
                    </li>
                {/list}
            </ul>
            <ul class="navbar-login">
                <li class="b-nav-cname b-nav-login">
                    <div class="hidden-xs b-login-mobile"></div>
                    <a class="js-login-btn" href="javascript:;">登录</a>
                </li>
            </ul>
        </div>
    </div>
</header>

{block name="main"}{/block}

<footer>
    <div class="container">
        <div class="foot-links">
            <div class="tit">合作链接</div>
            <div class="list">
                <ul>
                    {list tbname='link' where='allow=1' lenght=15 var='rs'}
                        <li><a href="{$rs.address}" target="_blank">{$rs.name}</a></li>
                    {/list}
                </ul>
            </div>
        </div>
        <div class="foot-copy">
            <div class="txt">Copyright © 2018 海南的叶子 All Rights Reserved</div>
        </div>
    </div>
</footer>

<div id="goToTop" class="gotop"><a href="javascript:;" class="gotop-in"></a></div>
</body>
</html>