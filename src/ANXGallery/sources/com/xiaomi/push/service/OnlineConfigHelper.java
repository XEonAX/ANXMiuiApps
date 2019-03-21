package com.xiaomi.push.service;

import android.util.Pair;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.xmpush.thrift.ConfigListType;
import com.xiaomi.xmpush.thrift.ConfigType;
import com.xiaomi.xmpush.thrift.NormalConfig;
import com.xiaomi.xmpush.thrift.OnlineConfigItem;
import com.xiaomi.xmpush.thrift.XmPushActionCustomConfig;
import com.xiaomi.xmpush.thrift.XmPushActionNormalConfig;
import java.util.ArrayList;
import java.util.List;

public class OnlineConfigHelper {
    public static void updateNormalConfigs(OnlineConfig onlineConfig, XmPushActionNormalConfig configMessage) {
        for (NormalConfig normalConfig : configMessage.getNormalConfigs()) {
            if (normalConfig.getVersion() > getVersion(onlineConfig, normalConfig.getType())) {
                setVersion(onlineConfig, normalConfig.getType(), normalConfig.getVersion());
                onlineConfig.updateNormalConfigs(convertMessage(normalConfig.configItems, false));
            }
        }
    }

    public static void updateCustomConfigs(OnlineConfig onlineConfig, XmPushActionCustomConfig configMessage) {
        onlineConfig.updateCustomConfigs(convertMessage(configMessage.getCustomConfigs(), true));
    }

    public static int getVersion(OnlineConfig onlineConfig, ConfigListType type) {
        String key = getVersionKey(type);
        int defaultVersion = 0;
        switch (type) {
            case MISC_CONFIG:
                defaultVersion = 1;
                break;
            case PLUGIN_CONFIG:
                defaultVersion = 0;
                break;
        }
        return onlineConfig.preferences.getInt(key, defaultVersion);
    }

    public static void setVersion(OnlineConfig onlineConfig, ConfigListType type, int value) {
        onlineConfig.preferences.edit().putInt(getVersionKey(type), value).commit();
    }

    private static List<Pair<Integer, Object>> convertMessage(List<OnlineConfigItem> configList, boolean supportClear) {
        if (CollectionUtils.isEmpty(configList)) {
            return null;
        }
        List<Pair<Integer, Object>> result = new ArrayList();
        for (OnlineConfigItem config : configList) {
            Pair<Integer, Object> pair = null;
            int key = config.getKey();
            ConfigType type = ConfigType.findByValue(config.getType());
            if (type != null) {
                if (supportClear && config.clear) {
                    result.add(new Pair(Integer.valueOf(key), null));
                } else {
                    switch (type) {
                        case INT:
                            pair = new Pair(Integer.valueOf(key), Integer.valueOf(config.getIntValue()));
                            break;
                        case LONG:
                            pair = new Pair(Integer.valueOf(key), Long.valueOf(config.getLongValue()));
                            break;
                        case STRING:
                            pair = new Pair(Integer.valueOf(key), config.getStringValue());
                            break;
                        case BOOLEAN:
                            pair = new Pair(Integer.valueOf(key), Boolean.valueOf(config.isBoolValue()));
                            break;
                    }
                    result.add(pair);
                }
            }
        }
        return result;
    }

    private static String getVersionKey(ConfigListType type) {
        return "oc_version_" + type.getValue();
    }
}
