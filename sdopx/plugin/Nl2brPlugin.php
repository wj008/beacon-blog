<?php
/**
 * Created by PhpStorm.
 * User: wj008
 * Date: 2018/7/19
 * Time: 10:15
 */

namespace sdopx\plugin;


use sdopx\lib\Outer;

class Nl2brPlugin
{
    public static function execute(array $param, Outer $out)
    {
        if (!isset($param['value'])) {
            $out->rethrow('没有值 value');
        }
        $string = $param['value'];
        if (is_string($string)) {
            $string = nl2br(htmlspecialchars($string, ENT_QUOTES));
        }
        $out->html($string);
    }
}