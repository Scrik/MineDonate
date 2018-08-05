package ru.alastar.minedonate.network.handlers;

import net.minecraftforge.fml.common.network.simpleimpl.IMessage;
import net.minecraftforge.fml.common.network.simpleimpl.IMessageHandler;
import net.minecraftforge.fml.common.network.simpleimpl.MessageContext;
import ru.alastar.minedonate.gui.ShopGUI;
import ru.alastar.minedonate.network.packets.CategoryPacket;

public class CategoryPacketHandler implements IMessageHandler<CategoryPacket, IMessage> {

    public CategoryPacketHandler() {

    }

    @Override
    public IMessage onMessage(CategoryPacket message, MessageContext ctx) {

        try {

            ShopGUI.instance.initGui();

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return null;

    }
}