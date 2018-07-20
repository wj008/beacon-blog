<?php

namespace beacon;

/**
 * Created by PhpStorm.
 * User: wj008
 * Date: 2017/12/11
 * Time: 20:40
 */


abstract class Controller
{
    public function initialize()
    {
    }

    protected function engine()
    {
        View::instance()->initialize();
        return View::instance()->engine;
    }

    protected function assign($key, $val = null)
    {
        View::instance()->assign($key, $val);
    }

    protected function getAssign()
    {
        return View::instance()->getAssign();
    }

    protected function display(string $tplname, string $parent = null)
    {
        $this->setContentType('html');
        if ($parent !== null) {
            return View::instance()->display($this, 'extends:' . $parent . '|' . $tplname);
        }
        return View::instance()->display($this, $tplname);
    }

    protected function fetch(string $tplname, string $parent = null)
    {
        if ($parent !== null) {
            return View::instance()->fetch($this, 'extends:' . $parent . '|' . $tplname);
        }
        return View::instance()->fetch($this, $tplname);
    }

    protected function redirect(string $url, array $query = [])
    {
        $url = empty($url) ? '/' : $url;
        $url = Route::url($url, $query);
        Request::instance()->setHeader('Location', $url);
        exit;
    }

    public function error($error, $code = null, $jump = null)
    {
        $out = [];
        $out['status'] = false;
        $out['code'] = $code;
        if ($jump != null) {
            $out['jump'] = $jump;
        }
        if (is_array($error)) {
            $out['formError'] = $error;
            reset($error);
            $out['error'] = current($error);
            $out['error'] = $out['error'] == null ? '错误' : $out['error'];
        } else {
            $out['error'] = $error;
        }

        if ($this->getContentType() == 'application/json' || $this->getContentType() == 'text/json') {
            echo json_encode($out, JSON_UNESCAPED_UNICODE);
            exit;
        } else {
            if (empty($jump)) {
                $jump = $this->getReferrer();
            }
            if (empty($jump)) {
                $jump = '#';
            }
            $out['jump'] = $jump;
            $this->assign('info', $out);
            $this->display('@error.tpl');
            exit;
        }
    }

    public function success($message, $data = null, $jump = null)
    {
        $out = [];
        $out['status'] = true;
        $out['data'] = $data;
        $out['message'] = $message;
        if ($jump != null) {
            $out['jump'] = $jump;
        }
        if ($this->getContentType() == 'application/json' || $this->getContentType() == 'text/json') {
            echo json_encode($out, JSON_UNESCAPED_UNICODE);
            exit;
        } else {
            if (empty($jump)) {
                $jump = $this->param('__BACK__');
            }
            if (empty($jump)) {
                $jump = $this->getReferrer();
            }
            if (empty($jump)) {
                $jump = '#';
            }
            $out['jump'] = $jump;
            $this->assign('info', $out);
            $this->display('@success.tpl');
            exit;
        }
    }

    public function get(string $name = null, $def = null)
    {
        return Request::instance()->get($name, $def);
    }

    public function post(string $name = null, $def = null)
    {
        return Request::instance()->post($name, $def);
    }

    public function param(string $name = null, $def = null)
    {
        return Request::instance()->param($name, $def);
    }

    public function getSession(string $name = null, $def = null)
    {
        return Request::instance()->getSession($name, $def);
    }

    protected function setSession(string $name, $value)
    {
        return Request::instance()->setSession($name, $value);
    }

    protected function delSession()
    {
        return Request::instance()->delSession();
    }

    public function getCookie(string $name, $def = null)
    {
        return Request::instance()->getCookie($name, $def);
    }

    protected function setCookie(string $name, $value, $options)
    {
        return Request::instance()->setCookie($name, $value, $options);
    }

    protected function file(string $name = null)
    {
        return Request::instance()->file($name);
    }

    public function route(string $name = null, $def = null)
    {
        return Request::instance()->route($name, $def);
    }

    public function getHeader(string $name = null)
    {
        return Request::instance()->getHeader($name);
    }

    protected function setHeader(string $name, string $value, bool $replace = true, $http_response_code = null)
    {
        return Request::instance()->setHeader($name, $value, $replace, $http_response_code);
    }

    public function getIP(bool $proxy = false, bool $forward = false)
    {
        return Request::instance()->getIP($proxy, $forward);
    }

    protected function getContentType(bool $whole = false)
    {
        return Request::instance()->getContentType($whole);
    }

    protected function setContentType(string $type, string $encoding = 'utf-8')
    {
        return Request::instance()->setContentType($type, $encoding);
    }

    protected function config(string $name, $def = null)
    {
        return Request::instance()->config($name, $def);
    }

    /**
     * 根据模板补丁修正输出数据
     * @param string $tplname
     * @param array|null $list
     * @param array $orgFields
     * @param string $itemKeyName
     * @return array
     */
    protected function hackData(string $tplname, array $list = null, array $orgFields = [], string $itemKeyName = 'rs')
    {
        if ($list == null) {
            $data = $this->getAssign();
            $list = (isset($data['list']) && is_array($data['list'])) ? $data['list'] : [];
        }
        if (!isset($list[0])) {
            return $list;
        }
        $this->fetch($tplname);
        $retList = [];
        $engine = $this->engine();
        $hackFuncs = $engine->getHack();
        foreach ($list as $item) {
            $column = [];
            foreach ($orgFields as $key) {
                if (isset($item[$key])) {
                    $column[$key] = $item;
                }
            }
            foreach ($hackFuncs as $key => $func) {
                $column[$key] = $func([$itemKeyName => $item]);
            }
            $retList[] = $column;
        }
        return $retList;
    }

    public function isGet()
    {
        return Request::instance()->isGet();
    }

    public function isMethod(string $method)
    {
        return Request::instance()->isMethod($method);
    }

    public function getMethod()
    {
        return Request::instance()->getMethod();
    }

    public function isPost()
    {
        return Request::instance()->isPost();
    }

    public function isAjax()
    {
        return Request::instance()->isAjax();
    }

    public function getReferrer()
    {
        return Request::instance()->getReferrer();
    }
}
