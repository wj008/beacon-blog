{hack fn='_0' rs=null}{$rs.id}{/hack}
{hack fn='_1' rs=null}{$rs.userId}{/hack}
{hack fn='_2' rs=null}{$rs.addtime}{/hack}
{hack fn='_3' rs=null}<div style='width:90px; height:30px; float:left;'><b>回复内容：</b></div><div style='float:left;'>{nl2br value=$rs.content}</div>{/hack}
{hack fn='_4' rs=null}<a href="{url act='edit' id=$rs.id}" class="yee-btn small edit"><i class="icofont icofont-edit"></i>编辑</a>
<a href="{url act='delete' id=$rs.id}" yee-module="confirm ajaxlink" data-confirm="确定要删除该信息了吗？" class="yee-btn small del" onsuccess=" $('#list').trigger('reload');"><i class="icofont icofont-bin"></i>删除</a>{/hack}