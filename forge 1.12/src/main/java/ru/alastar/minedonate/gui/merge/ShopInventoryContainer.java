package ru.alastar.minedonate.gui.merge;

import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.entity.player.InventoryPlayer;
import net.minecraft.inventory.Container;
import net.minecraft.inventory.IInventory;
import net.minecraft.inventory.Slot;
import net.minecraft.item.ItemStack;
import net.minecraft.util.text.ITextComponent;

public class ShopInventoryContainer extends Container {

    public InventoryPlayer inventory;
    public Inv mdInv;

    public ShopInventoryContainer(InventoryPlayer _inventory) {

        inventory = _inventory;

        mdInv = new Inv();

        this.addSlotToContainer(new Slot(this.mdInv, 0, 80, 33));
        int i;

        for (i = 0; i < 3; ++i) {
            for (int j = 0; j < 9; ++j) {
                this.addSlotToContainer(new Slot(inventory, j + i * 9 + 9, 8 + j * 18, 84 + i * 18));
            }
        }

        for (i = 0; i < 9; ++i) {
            this.addSlotToContainer(new Slot(inventory, i, 8 + i * 18, 142));
        }

    }

    @Override
    public void onContainerClosed(EntityPlayer p_75134_1_) {
        super.onContainerClosed(p_75134_1_);

        ItemStack itemstack = this.mdInv.getStackInSlot(0);
        this.mdInv.setInventorySlotContents(0, null);

        if (itemstack != null) {
            p_75134_1_.dropItem(itemstack, false);
        }

    }

    @Override
    public ItemStack transferStackInSlot(EntityPlayer p_82846_1_, int p_82846_2_) {

        return null;

    }

    public boolean canInteractWith(EntityPlayer p_75145_1_) {
        return true;
    }

    public interface UpdateInventorySlot {

        public void onUpdate(ItemStack is);

    }

    public class Inv implements IInventory {

        UpdateInventorySlot uis;
        private ItemStack[] theInventory = new ItemStack[1];

        @Override
        public int getSizeInventory() {
            return this.theInventory.length;
        }

        @Override
        public boolean isEmpty() {
            return theInventory[0] == null;
        }

        @Override
        public ItemStack getStackInSlot(int p_70301_1_) {
            return this.theInventory[p_70301_1_];
        }

        @Override
        public ItemStack decrStackSize(int p_70298_1_, int p_70298_2_) {
            if (this.theInventory[p_70298_1_] != null) {
                ItemStack itemstack;

                if (p_70298_1_ == 2) {
                    itemstack = this.theInventory[p_70298_1_];
                    this.theInventory[p_70298_1_] = null;
                    return itemstack;
                } else if (this.theInventory[p_70298_1_].getCount() <= p_70298_2_) {
                    itemstack = this.theInventory[p_70298_1_];
                    this.theInventory[p_70298_1_] = null;

                    if (this.inventoryResetNeededOnSlotChange(p_70298_1_)) {
                        this.resetRecipeAndSlots();
                    }

                    return itemstack;
                } else {
                    itemstack = this.theInventory[p_70298_1_].splitStack(p_70298_2_);

                    if (this.theInventory[p_70298_1_].getCount() == 0) {
                        this.theInventory[p_70298_1_] = null;
                    }

                    if (this.inventoryResetNeededOnSlotChange(p_70298_1_)) {
                        this.resetRecipeAndSlots();
                    }

                    return itemstack;
                }
            } else {
                return null;
            }
        }

        @Override
        public ItemStack removeStackFromSlot(int index) {
            return null;
        }

        private boolean inventoryResetNeededOnSlotChange(int p_70469_1_) {
            return p_70469_1_ == 0 || p_70469_1_ == 1;
        }

       /* @Override
        public ItemStack getStackInSlotOnClosing(int p_70304_1_) {

            if (this.theInventory[p_70304_1_] != null) {
                ItemStack itemstack = this.theInventory[p_70304_1_];
                this.theInventory[p_70304_1_] = null;

                return itemstack;
            } else {
                return null;
            }
        } */

        public void setInventorySlotContents(int p_70299_1_, ItemStack p_70299_2_) {
            this.theInventory[p_70299_1_] = p_70299_2_;

            if (p_70299_2_ != null && p_70299_2_.getCount() > this.getInventoryStackLimit()) {
                p_70299_2_.setCount(this.getInventoryStackLimit());
            }

            if (this.inventoryResetNeededOnSlotChange(p_70299_1_)) {
                this.resetRecipeAndSlots();
            }
        }

        @Override
        public int getInventoryStackLimit() {
            return 64;
        }

        @Override
        public void markDirty() {
            this.resetRecipeAndSlots();
        }

        @Override
        public boolean isUsableByPlayer(EntityPlayer p_70300_1_) {
            return true;
        }

        @Override
        public void openInventory(EntityPlayer player) {

        }

        @Override
        public void closeInventory(EntityPlayer player) {

        }


        @Override
        public boolean isItemValidForSlot(int p_94041_1_, ItemStack p_94041_2_) {
            return true;
        }

        @Override
        public int getField(int id) {
            return 0;
        }

        @Override
        public void setField(int id, int value) {

        }

        @Override
        public int getFieldCount() {
            return 0;
        }

        @Override
        public void clear() {

        }

        public void resetRecipeAndSlots() {

            if (uis != null) {

                uis.onUpdate(this.theInventory[0]);

            }

        }

        @Override
        public String getName() {
            return null;
        }

        @Override
        public boolean hasCustomName() {
            return false;
        }

        @Override
        public ITextComponent getDisplayName() {
            return null;
        }
    }

}
