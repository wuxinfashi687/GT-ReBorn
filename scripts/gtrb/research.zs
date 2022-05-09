/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.03
此脚本为研究台部分
*/

# priority 8999

import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;

# 研究种类
var botania_ = ResearchTable.addCategory(
    <botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}),
    "植物学"
);

var tc = ResearchTable.addCategory(
    <tconstruct:tooltables:3>, "匠魂学"
);

/// 研究学科
// 植物学
# 植物学基础
ResearchTable.builder("basic_botania", botania_)
    .setIcons(<gtrb:basic_mana_machine>)
    .setTitle("基础植物学")
    .addCondition(<botania:livingrock>*8)
    .setRewardStages("basic_botania")
    .build();

# 植物学自动控制理论
ResearchTable.builder("botania_auto_control", botania_)
    .setIcons(<gtrb:basic_mana_item_output_bus>)
    .setTitle("基础魔法自动化理论")
    .addCondition(<contenttweaker:red_tech_bottle>*64)
    .setRewardStages("botania_auto_control")
    .build();

# 基础植魔自动化装置
ResearchTable.builder("basic_botania_auto_machine", botania_)
    .setIcons(<gtrb:large_macerator>)
    .setTitle("基础植魔自动化装置")
    .addCondition(<contenttweaker:red_tech_bottle>*128)
    .setRewardStages("basic_botania_auto_machine")
    .build();
    