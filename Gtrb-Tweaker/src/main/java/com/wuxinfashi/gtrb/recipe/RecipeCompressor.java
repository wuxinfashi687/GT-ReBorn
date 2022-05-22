package com.wuxinfashi.gtrb.recipe;

import net.minecraft.item.Item;

public class RecipeCompressor
{
    private final Item input;
    private final Item output;
    private final Item notConsume;
    private final int amount;

    public RecipeCompressor(Item inputs, int amounts, Item outputs, Item notConsumes)
    {
        this.input = inputs;
        this.amount = amounts;
        this.output = outputs;
        this.notConsume = notConsumes;
    }

    public RecipeCompressor()
    {
        this.input = null;
        this.amount = 0;
        this.output = null;
        this.notConsume = null;
    }

    public Item getInput() {
        return this.input;
    }

    public Item getOutput() {
        return this.output;
    }

    public Item getNotConsume() {
        return this.notConsume;
    }

    public int getAmount() {
        return this.amount;
    }
}
