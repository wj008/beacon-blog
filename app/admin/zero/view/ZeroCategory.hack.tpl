{hack fn='_0' rs=null}{$rs.id}{/hack}
{hack fn='_1' rs=null}{$rs.name}{/hack}
{hack fn='_2' rs=null}{$rs.columnId|dbval:'@pf_column'}{/hack}
{hack fn='_3' rs=null}{sort id=$rs.id sort=$rs.sort}{/hack}
{hack fn='_4' rs=null}{if $rs.allow}<span class=green>启用</span>{else}禁用{/if}{/hack}
{hack fn='_5' rs=null}<a href="{url act='edit' id=$rs.id}" class="yee-btn small edit"><i class="icofont icofont-edit"></i>编辑</a>
<a href="{url act='changeAllow' id=$rs.id}" yee-module="ajaxlink" onsuccess=" $('#list').trigger('reload');" class="yee-btn small edit">{if $rs.allow}<i class="icofont icofont-not-allowed"></i>撤审{else}<i class="icofont icofont-check-circled"></i>审核{/if}</a>
<a href="{url act='delete' id=$rs.id}" yee-module="confirm ajaxlink" data-confirm="确定要删除该信息了吗？" class="yee-btn small del" onsuccess=" $('#list').trigger('reload');"><i class="icofont icofont-bin"></i>删除</a>{/hack}