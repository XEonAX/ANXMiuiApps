package com.miui.internal.hybrid;

import java.util.Set;
import java.util.TreeSet;

public class ConfigUtils {
    private static final String eJ = "timestamp";
    private static final String eK = "vendor";
    private static final String eL = "features";
    private static final String eM = "params";
    private static final String eN = "name";
    private static final String eO = "value";
    private static final String eP = "permissions";
    private static final String eQ = "origin";
    private static final String eR = "subdomains";

    private ConfigUtils() {
    }

    public static String getRawConfig(Config config) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{");
        stringBuilder.append("timestamp");
        stringBuilder.append(":");
        stringBuilder.append(config.getSecurity().getTimestamp());
        stringBuilder.append(",");
        stringBuilder.append(eK);
        stringBuilder.append(":");
        stringBuilder.append("\"");
        stringBuilder.append(config.getVendor());
        stringBuilder.append("\"");
        stringBuilder.append(",");
        stringBuilder.append(a(config));
        stringBuilder.append(",");
        stringBuilder.append(c(config));
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    private static String a(Config config) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("features");
        stringBuilder.append(":");
        stringBuilder.append("[");
        stringBuilder.append(b(config));
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    private static String b(Config config) {
        StringBuilder stringBuilder = new StringBuilder();
        Set<String> treeSet = new TreeSet(config.getFeatures().keySet());
        if (treeSet.isEmpty()) {
            return "";
        }
        for (String str : treeSet) {
            stringBuilder.append("{");
            stringBuilder.append("name");
            stringBuilder.append(":");
            stringBuilder.append("\"");
            stringBuilder.append(str);
            stringBuilder.append("\"");
            stringBuilder.append(",");
            stringBuilder.append("params");
            stringBuilder.append(":");
            stringBuilder.append("[");
            stringBuilder.append(a(config.getFeature(str)));
            stringBuilder.append("]");
            stringBuilder.append("}");
            stringBuilder.append(",");
        }
        return stringBuilder.substring(0, stringBuilder.length() - 1);
    }

    private static String a(Feature feature) {
        StringBuilder stringBuilder = new StringBuilder();
        Set<String> treeSet = new TreeSet(feature.getParams().keySet());
        if (treeSet.isEmpty()) {
            return "";
        }
        for (String str : treeSet) {
            stringBuilder.append("{");
            stringBuilder.append("name");
            stringBuilder.append(":");
            stringBuilder.append("\"");
            stringBuilder.append(str);
            stringBuilder.append("\"");
            stringBuilder.append(",");
            stringBuilder.append("value");
            stringBuilder.append(":");
            stringBuilder.append("\"");
            stringBuilder.append(feature.getParam(str));
            stringBuilder.append("\"");
            stringBuilder.append("}");
            stringBuilder.append(",");
        }
        return stringBuilder.substring(0, stringBuilder.length() - 1);
    }

    private static String c(Config config) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(eP);
        stringBuilder.append(":");
        stringBuilder.append("[");
        stringBuilder.append(d(config));
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    private static Object d(Config config) {
        StringBuilder stringBuilder = new StringBuilder();
        Set<String> treeSet = new TreeSet(config.getPermissions().keySet());
        if (treeSet.isEmpty()) {
            return "";
        }
        for (String str : treeSet) {
            stringBuilder.append("{");
            stringBuilder.append(eQ);
            stringBuilder.append(":");
            stringBuilder.append("\"");
            stringBuilder.append(str);
            stringBuilder.append("\"");
            stringBuilder.append(",");
            stringBuilder.append(eR);
            stringBuilder.append(":");
            stringBuilder.append(config.getPermission(str).isApplySubdomains());
            stringBuilder.append("}");
            stringBuilder.append(",");
        }
        return stringBuilder.substring(0, stringBuilder.length() - 1);
    }
}
