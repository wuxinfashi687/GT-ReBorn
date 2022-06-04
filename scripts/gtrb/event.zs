/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.25
此脚本为gtrb事件部分*/

#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import mods.ctintegration.gamestages.GameStageAddEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.event.PlayerChangedDimensionEvent;
import mods.ctintegration.gamestages.GameStageRemovedEvent;

# 初始物品
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var data = {loggedIn: 0} as IData;
    data = data + event.player.data;
    if (data.loggedIn == 0) {
        event.player.sendChat("欢迎来到这个世界,请查看任务书开始你的主线!");
        //event.player.executeCommand("clear");
        //event.player.dropItem(true);
        //event.player.give(<minecraft:stone>*10);
    }

    var patched = {loggedIn: data.loggedIn.asInt() + 1} as IData;
    event.player.update(patched);

});

# 禁止跳科技访问星球
events.onGameStageAdd(function(event as GameStageAddEvent) {
    var data = {canToMoon: 0} as IData;
    data = data + event.player.data;
    if (event.gameStage == "Moon") {
        var patched = {canToMoon: 1} as IData;
        event.player.update(patched);
        event.player.sendChat("你可以去月球了!");
    }
});

events.onGameStageRemoved(function(event as GameStageRemovedEvent) {
    var data = {canToMoon: 0} as IData;
    data = data + event.player.data;
    if (event.gameStage == "Moon") {
        var patched = {canToMoon: 0} as IData;
        event.player.update(patched);
        event.player.sendChat("你不可以去月球了!");
    }
});

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    var data = {canToMoon: 0} as IData;
    data = data + event.player.data;
    var player = event.player as IPlayer;
    var world = event.toWorld as IWorld;
    if (!player.world.remote) {
        if (data.canToMoon != 1 && event.to == 3) {
            player.executeCommand("advancedRocketry goto " + event.from);
            event.player.sendChat("你无法进入月球!");
        }
    }
});