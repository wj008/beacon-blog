<?php
/**
 * Created by PhpStorm.
 * User: wj008
 * Date: 2017/12/14
 * Time: 18:02
 */

namespace beacon\widget;

use beacon\Field;
use beacon\Request;

class Hidden implements BoxInterface
{
    public function code(Field $field, $args)
    {
        $args['type'] = 'hidden';
        $field->explodeAttr($attr, $args);
        $field->explodeData($attr, $args);
        return '<input ' . join(' ', $attr) . ' />';
    }

    public function assign(Field $field, array $data)
    {
        $boxName = $field->boxName;
        $request = Request::instance();
        switch ($field->varType) {
            case 'bool':
            case 'boolean':
                $field->value = $request->input($data, $boxName . ':b', false);
                break;
            case 'int':
            case 'integer':
                $val = $request->input($data, $boxName . ':s', '');
                if (preg_match('@[+-]?\d*\.\d+@', $val)) {
                    $field->value = $request->input($data, $boxName . ':f', 0);
                } else {
                    $field->value = $request->input($data, $boxName . ':i', 0);
                }
                break;
            case 'double':
            case 'float':
                $field->value = $request->input($data, $boxName . ':f', 0);
                break;
            case 'string':
                $field->value = $request->input($data, $boxName . ':s', '');
                break;
            case 'array':
                $field->value = $request->input($data, $boxName . ':a', []);
                break;
            default :
                $field->value = $request->input($data, $boxName, '');
                break;
        }
        return $field->value;
    }

    public function fill(Field $field, array &$values)
    {
        $values[$field->name] = $field->value;
    }

    public function init(Field $field, array $values)
    {
        $field->value = isset($values[$field->name]) ? $values[$field->name] : null;
    }
}