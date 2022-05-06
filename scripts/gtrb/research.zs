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

# 研究学科
// 植物学
ResearchTable.builder("basic_botania", botania_)
    .setIcons(<gtrb:basic_mana_machine>)
    .setTitle("基础植物学")
    .addCondition(<botania:livingrock>*8)
    .setRewardStages("basic_botania")
    .build();