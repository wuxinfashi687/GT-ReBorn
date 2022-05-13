/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.02
此脚本为cot自定义物品部分
*/

#priority 9003
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

# 蓝色科技瓶
create_custom_item("blue_tech_bottle");

# 黄色科技瓶
create_custom_item("yellow_tech_bottle");

# 绿色科技瓶
create_custom_item("green_tech_bottle");

# 紫色科技瓶
create_custom_item("purple_tech_bottle");

# 橙色科技瓶
create_custom_item("orange_tech_bottle");

# 草绿色科技瓶
create_custom_item("grass_tech_bottle");