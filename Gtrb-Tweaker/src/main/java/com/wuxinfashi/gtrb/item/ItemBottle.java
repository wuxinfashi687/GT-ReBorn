package com.wuxinfashi.gtrb.item;

import java.util.ArrayList;

public class ItemBottle
{
    public static ArrayList<GtrbBaseItem> bottleItemArrayList = new ArrayList<>();

    public ItemBottle()

    {
        bottleItemArrayList.add(
                new GtrbBaseItem("red_tech_bottle")
        );
        bottleItemArrayList.add(
                new GtrbBaseItem("blue_tech_bottle")
        );
        bottleItemArrayList.add(
                new GtrbBaseItem("yellow_tech_bottle")
        );
    }
}
