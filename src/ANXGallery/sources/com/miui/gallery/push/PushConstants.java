package com.miui.gallery.push;

import android.text.TextUtils;
import com.meicam.themehelper.BuildConfig;

public interface PushConstants {

    public enum MessageScope {
        DEBUG("debug"),
        RELEASE(BuildConfig.BUILD_TYPE);
        
        private String value;

        private MessageScope(String value) {
            this.value = value;
        }

        public static MessageScope getScope(String scope) {
            if (!TextUtils.isEmpty(scope)) {
                for (MessageScope messageScope : values()) {
                    if (scope.equals(messageScope.value)) {
                        return messageScope;
                    }
                }
            }
            return null;
        }
    }

    public enum MessageType {
        SYNC("sync"),
        DIRECT("direct");
        
        private String value;

        private MessageType(String value) {
            this.value = value;
        }

        public static MessageType getType(String type) {
            if (!TextUtils.isEmpty(type)) {
                for (MessageType messageType : values()) {
                    if (type.equalsIgnoreCase(messageType.value)) {
                        return messageType;
                    }
                }
            }
            return null;
        }
    }
}
