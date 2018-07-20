{hack fn='_0' rs=null}{$rs.id}{/hack}
{hack fn='_1' rs=null}{$rs.name}{/hack}
{hack fn='_2' rs=null}{sort id=$rs.id sort=$rs.sort}{/hack}
{hack fn='_3' rs=null}{if $rs.allow}<span class=green>启用</span>{else}禁用{/if}{/hack}
{hack fn='_4' rs=null}<input type="checkbox" data-text="{$rs.name}" class="check-item" name="sel_id" value='{$rs.id}'/>{/hack}