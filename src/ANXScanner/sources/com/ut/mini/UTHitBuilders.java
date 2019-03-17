package com.ut.mini;

import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.auth.AliAuthError;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.p;
import com.alibaba.mtl.log.model.LogField;
import java.util.HashMap;
import java.util.Map;

public class UTHitBuilders {

    public static class UTHitBuilder {
        public static final String FIELD_ARG1 = "_field_arg1";
        public static final String FIELD_ARG2 = "_field_arg2";
        public static final String FIELD_ARG3 = "_field_arg3";
        public static final String FIELD_ARGS = "_field_args";
        public static final String FIELD_EVENT_ID = "_field_event_id";
        public static final String FIELD_PAGE = "_field_page";
        private Map<String, String> z = new HashMap();

        public UTHitBuilder() {
            if (!this.z.containsKey(FIELD_PAGE)) {
                this.z.put(FIELD_PAGE, "UT");
            }
        }

        public UTHitBuilder setProperty(String aKey, String aValue) {
            if (TextUtils.isEmpty(aKey) || aValue == null) {
                i.a("setProperty", (Object) "key is null or key is empty or value is null,please check it!");
            } else {
                if (this.z.containsKey(aKey)) {
                    this.z.remove(aKey);
                }
                this.z.put(aKey, aValue);
            }
            return this;
        }

        public UTHitBuilder setProperties(Map<String, String> aProperties) {
            if (aProperties != null) {
                this.z.putAll(aProperties);
            }
            return this;
        }

        public String getProperty(String aKey) {
            if (aKey == null || !this.z.containsKey(aKey)) {
                return null;
            }
            return (String) this.z.get(aKey);
        }

        public Map<String, String> build() {
            Map<String, String> hashMap = new HashMap();
            hashMap.putAll(this.z);
            if (!a(hashMap)) {
                return null;
            }
            e(hashMap);
            d(hashMap);
            if (hashMap.containsKey(LogField.EVENTID.toString())) {
                return hashMap;
            }
            return null;
        }

        private static boolean a(Map<String, String> map) {
            if (map != null) {
                if (map.containsKey(null)) {
                    map.remove(null);
                }
                if (map.containsKey("")) {
                    map.remove("");
                }
                if (map.containsKey(LogField.PAGE.toString())) {
                    i.a("checkIlleagleProperty", (Object) "IlleaglePropertyKey(PAGE) is setted when you call the method setProperty or setProperties ,please use another key to replace it!");
                    return false;
                } else if (map.containsKey(LogField.EVENTID.toString())) {
                    i.a("checkIlleagleProperty", (Object) "IlleaglePropertyKey(EVENTID) is setted when you call the method setProperty or setProperties ,please use another key to replace it!");
                    return false;
                } else if (map.containsKey(LogField.ARG1.toString())) {
                    i.a("checkIlleagleProperty", (Object) "IlleaglePropertyKey(ARG1) is setted when you call the method setProperty or setProperties ,please use another key to replace it!");
                    return false;
                } else if (map.containsKey(LogField.ARG2.toString())) {
                    i.a("checkIlleagleProperty", (Object) "IlleaglePropertyKey(ARG2) is setted when you call the method setProperty or setProperties ,please use another key to replace it!");
                    return false;
                } else if (map.containsKey(LogField.ARG3.toString())) {
                    i.a("checkIlleagleProperty", (Object) "IlleaglePropertyKey(ARG3) is setted when you call the method setProperty or setProperties ,please use another key to replace it!");
                    return false;
                }
            }
            return true;
        }

        private static void d(Map<String, String> map) {
            if (map != null) {
                String str;
                if (map.containsKey(FIELD_PAGE)) {
                    str = (String) map.get(FIELD_PAGE);
                    map.remove(FIELD_PAGE);
                    map.put(LogField.PAGE.toString(), str);
                }
                if (map.containsKey(FIELD_ARG1)) {
                    str = (String) map.get(FIELD_ARG1);
                    map.remove(FIELD_ARG1);
                    map.put(LogField.ARG1.toString(), str);
                }
                if (map.containsKey(FIELD_ARG2)) {
                    str = (String) map.get(FIELD_ARG2);
                    map.remove(FIELD_ARG2);
                    map.put(LogField.ARG2.toString(), str);
                }
                if (map.containsKey(FIELD_ARG3)) {
                    str = (String) map.get(FIELD_ARG3);
                    map.remove(FIELD_ARG3);
                    map.put(LogField.ARG3.toString(), str);
                }
                if (map.containsKey(FIELD_ARGS)) {
                    str = (String) map.get(FIELD_ARGS);
                    map.remove(FIELD_ARGS);
                    map.put(LogField.ARGS.toString(), str);
                }
                if (map.containsKey(FIELD_EVENT_ID)) {
                    str = (String) map.get(FIELD_EVENT_ID);
                    map.remove(FIELD_EVENT_ID);
                    map.put(LogField.EVENTID.toString(), str);
                }
            }
        }

        private static void e(Map<String, String> map) {
            if (map != null) {
                if (map.containsKey(LogField.PAGE.toString())) {
                    map.remove(LogField.PAGE.toString());
                }
                if (map.containsKey(LogField.EVENTID.toString())) {
                    map.remove(LogField.EVENTID.toString());
                }
                if (map.containsKey(LogField.ARG1.toString())) {
                    map.remove(LogField.ARG1.toString());
                }
                if (map.containsKey(LogField.ARG2.toString())) {
                    map.remove(LogField.ARG2.toString());
                }
                if (map.containsKey(LogField.ARG3.toString())) {
                    map.remove(LogField.ARG3.toString());
                }
                if (map.containsKey(LogField.ARGS.toString())) {
                    map.remove(LogField.ARGS.toString());
                }
            }
        }
    }

    public static class UTControlHitBuilder extends UTHitBuilder {
        public UTControlHitBuilder(String aControlName) {
            if (TextUtils.isEmpty(aControlName)) {
                throw new IllegalArgumentException("Control name can not be empty.");
            }
            String currentPageName = UTPageHitHelper.getInstance().getCurrentPageName();
            if (TextUtils.isEmpty(currentPageName)) {
                throw new IllegalArgumentException("Please call in at PageAppear and PageDisAppear.");
            }
            String str = currentPageName + LoginConstants.UNDER_LINE + aControlName;
            super.setProperty(UTHitBuilder.FIELD_PAGE, currentPageName);
            super.setProperty(UTHitBuilder.FIELD_EVENT_ID, AliAuthError.ERRNO_COMPONENT_AUTH_FAIL);
            super.setProperty(UTHitBuilder.FIELD_ARG1, str);
        }

        public UTControlHitBuilder(String aPageName, String aControlName) {
            if (TextUtils.isEmpty(aControlName)) {
                throw new IllegalArgumentException("Control name can not be empty.");
            } else if (TextUtils.isEmpty(aPageName)) {
                throw new IllegalArgumentException("Page name can not be empty.");
            } else {
                String str = aPageName + LoginConstants.UNDER_LINE + aControlName;
                super.setProperty(UTHitBuilder.FIELD_PAGE, aPageName);
                super.setProperty(UTHitBuilder.FIELD_EVENT_ID, AliAuthError.ERRNO_COMPONENT_AUTH_FAIL);
                super.setProperty(UTHitBuilder.FIELD_ARG1, str);
            }
        }
    }

    public static class UTCustomHitBuilder extends UTHitBuilder {
        public UTCustomHitBuilder(String aEventLabel) {
            if (!TextUtils.isEmpty(aEventLabel)) {
                super.setProperty(UTHitBuilder.FIELD_ARG1, aEventLabel);
            }
            super.setProperty(UTHitBuilder.FIELD_EVENT_ID, "19999");
            super.setProperty(UTHitBuilder.FIELD_ARG3, "0");
        }

        public UTCustomHitBuilder setDurationOnEvent(long aDuration) {
            if (aDuration < 0) {
                aDuration = 0;
            }
            super.setProperty(UTHitBuilder.FIELD_ARG3, "" + aDuration);
            return this;
        }

        public UTCustomHitBuilder setEventPage(String aPage) {
            if (!TextUtils.isEmpty(aPage)) {
                super.setProperty(UTHitBuilder.FIELD_PAGE, aPage);
            }
            return this;
        }

        public Map<String, String> build() {
            Map<String, String> build = super.build();
            if (build != null) {
                String str = (String) build.get(LogField.PAGE.toString());
                String str2 = (String) build.get(LogField.ARG1.toString());
                if (str2 != null) {
                    build.remove(LogField.ARG1.toString());
                    build.remove(LogField.PAGE.toString());
                    build = p.b(build);
                    build.put(LogField.ARG1.toString(), str2);
                    build.put(LogField.PAGE.toString(), str);
                    return build;
                }
            }
            return build;
        }
    }

    public static class UTPageHitBuilder extends UTHitBuilder {
        public UTPageHitBuilder(String aPageName) {
            if (!TextUtils.isEmpty(aPageName)) {
                super.setProperty(UTHitBuilder.FIELD_PAGE, aPageName);
            }
            super.setProperty(UTHitBuilder.FIELD_EVENT_ID, "2001");
            super.setProperty(UTHitBuilder.FIELD_ARG3, "0");
        }

        public UTPageHitBuilder setReferPage(String aReferPage) {
            if (!TextUtils.isEmpty(aReferPage)) {
                super.setProperty(UTHitBuilder.FIELD_ARG1, aReferPage);
            }
            return this;
        }

        public UTPageHitBuilder setDurationOnPage(long aDuration) {
            if (aDuration < 0) {
                aDuration = 0;
            }
            super.setProperty(UTHitBuilder.FIELD_ARG3, "" + aDuration);
            return this;
        }
    }
}
