package com.miui.gallery.push;

import com.miui.gallery.push.messagehandler.CloudControlMessageHandler;
import com.miui.gallery.push.messagehandler.FeatureRedDotMessageHandler;
import com.miui.gallery.push.messagehandler.MessageHandler;
import com.miui.gallery.push.messagehandler.NotificationMessageHandler;
import com.miui.gallery.push.messagehandler.StoryNotificationMessageHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MessageHandlerFactory {
    private static Map<String, Class<? extends MessageHandler>> sModuleHandlerMap = new HashMap();

    static {
        sModuleHandlerMap.put("cloud_control", CloudControlMessageHandler.class);
        sModuleHandlerMap.put("notification", NotificationMessageHandler.class);
        sModuleHandlerMap.put("feature_red_dot", FeatureRedDotMessageHandler.class);
        sModuleHandlerMap.put("story_notification", StoryNotificationMessageHandler.class);
    }

    public static MessageHandler create(String module) {
        MessageHandler handler = null;
        Class<? extends MessageHandler> clazz = (Class) sModuleHandlerMap.get(module);
        if (clazz == null) {
            return handler;
        }
        try {
            return (MessageHandler) clazz.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
            return handler;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return handler;
        }
    }

    public static List<MessageHandler> getAllMessageHandlers() {
        List<MessageHandler> ret = new ArrayList();
        for (Class<? extends MessageHandler> clazz : sModuleHandlerMap.values()) {
            try {
                ret.add(clazz.newInstance());
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            }
        }
        return ret;
    }
}
