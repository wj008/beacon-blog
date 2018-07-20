<?php
/**
 * Created by PhpStorm.
 * User: wj008
 * Date: 2018/7/20
 * Time: 4:26
 */

namespace app\home\controller;

use beacon\Controller;
use beacon\DB;
use beacon\Utils;

class HomeController extends Controller
{
    public function getSetting(string $name)
    {
        static $setting = null;
        if ($setting == null) {
            $setting = DB::getRow('select * from @pf_setting where id=1');
        }
        if ($setting != null && isset($setting[$name])) {
            return $setting[$name];
        }
        return '';
    }

    //获取文章标签
    public function getTagName(string $tag = '')
    {
        if (!Utils::isJsonString($tag)) {
            return [];
        }
        $data = json_decode($tag, true);
        if (!is_array($data) || count($data) == 0) {
            return [];
        }
        $list = DB::getList('select * from @pf_tag where id in (' . join($data, ',') . ')');
        return $list;
    }

    //获取月份数据
    public function getMonthList()
    {
        $list = DB::getList('select date_format(addtime, \'%Y\') as nyear,date_format(addtime, \'%m\') as nmonth,count(*) as ncount from @pf_article group by date_format(addtime, \'%Y-%m\') limit 0,5');
        return $list;
    }
}