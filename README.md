# beacon-blog
基于 beacon PHP 快开框架写的单用户博客系统

网站目录指向 /www 目录，需要在绝对URL 路径下运行 ，如 www.xxx.com/ 二级目录不支持。

数据库 wj008.sql

数据库配置在 /config/db.config.php

上线的话，请关闭调试模式

/www/index.php

define('DEV_DEBUG', true);
define('DEBUG_LOG', true);

改为

define('DEV_DEBUG', false);
define('DEBUG_LOG', false);


如果安装有 nodejs  可以在开启日志输出 DEBUG_LOG 的情况下 用命令行运行
node debug.js 查看调试输出日志。


该blog 后台 登陆 账号 admin 123456

该blog系统为全 tool 模式自动生成。

请注意 在使用 tool 的时候 会往 /app 目录中写入文件，同时 模板渲染 需要 runtime 的读写权限。

注意 该程序 需要 url 重写功能的支持。
可以参考Thinkphp 的重写方式。

例子：

![](https://raw.githubusercontent.com/wj008/beacon-blog/master/demo.png)