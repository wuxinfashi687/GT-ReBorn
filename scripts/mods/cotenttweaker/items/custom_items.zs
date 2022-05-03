/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.02
此脚本为cot自定义物品部分
*/

#priority 802
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

function create_custom_item(item_name as string) as void {
    var cot_item as Item = VanillaFactory.createItem(item_name);
    cot_item.creativeTab = <creativetab:gtrb>;
    cot_item.register();        
}

# 红色科技瓶
create_custom_item("red_tech_bottle");