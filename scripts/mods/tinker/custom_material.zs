/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.25
此脚本为匠魂自定义材料部分
*/

#loader contenttweaker
import mods.contenttweaker.tconstruct.MaterialBuilder;

# 魔法物质
var test as MaterialBuilder = MaterialBuilder.create("magic_material");
test.color = 0x9400D3;
test.castable = true;
test.representativeItem = <item:gregtech:meta_ingot:30004>;
test.liquid = <liquid:magic_ore>;
test.localizedName = "magic_material";
test.addHeadMaterialStats(2048, 12.5f, 3.7f, 2);
test.register();