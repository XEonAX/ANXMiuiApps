package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.cloudcontrol.Merger;
import com.miui.gallery.util.BaseBuildUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ComponentsStrategy extends BaseStrategy {
    public static final Merger<ComponentsStrategy> CLOUD_FIRST_MERGER = new Merger<ComponentsStrategy>() {
        public ComponentsStrategy merge(ComponentsStrategy local, ComponentsStrategy cloud) {
            if (cloud.mPriorityInternational == null) {
                if (local.mPriorityInternational == null || local.mPriorityInternational.isEmpty()) {
                    cloud.mPriorityInternational = new ArrayList();
                } else {
                    cloud.mPriorityInternational = (ArrayList) local.mPriorityInternational.clone();
                }
            }
            if (cloud.mPriority == null) {
                if (local.mPriority == null || local.mPriority.isEmpty()) {
                    cloud.mPriority = new ArrayList();
                } else {
                    cloud.mPriority = (ArrayList) local.mPriority.clone();
                }
            }
            return cloud;
        }
    };
    public static final Comparator<Priority> MATCH_ORDER = new Comparator<Priority>() {
        public int compare(Priority lhs, Priority rhs) {
            if (lhs.mMatchOrder > rhs.mMatchOrder) {
                return 1;
            }
            return lhs.mMatchOrder == rhs.mMatchOrder ? 0 : -1;
        }
    };
    @SerializedName("component-priority")
    private ArrayList<Priority> mPriority;
    @SerializedName("component-priority-international")
    private ArrayList<Priority> mPriorityInternational;
    @SerializedName("share-components")
    private List<Component> mShareComponents;
    @SerializedName("share-components-international")
    private List<Component> mShareComponentsInternational;

    public static class Component {
        @SerializedName("class-name")
        private String mClassName;
        @SerializedName("order")
        private int mOrder;
        @SerializedName("package-name")
        private String mPackageName;

        public Component(String packageName, String className, int order) {
            this.mPackageName = packageName;
            this.mClassName = className;
            this.mOrder = order;
        }

        public String getPackageName() {
            return this.mPackageName;
        }

        public String getClassName() {
            return this.mClassName;
        }

        public String toString() {
            return "Component{mPackageName='" + this.mPackageName + '\'' + ", mClassName='" + this.mClassName + '\'' + ", mOrder=" + this.mOrder + '}';
        }
    }

    public static class Priority {
        @SerializedName("class-name")
        public final String className;
        int mMatchOrder;
        @SerializedName("package-name")
        public final String packageName;
        @SerializedName("package-prefix")
        public final String packagePrefix;
        @SerializedName("system")
        public final Boolean system;
        @SerializedName("value")
        public final int value;

        void initMathOrder() {
            int priority = Integer.MAX_VALUE;
            if (this.system != null) {
                priority = 3;
            }
            if (this.packagePrefix != null) {
                priority = 2;
            }
            if (this.packageName != null) {
                priority = 1;
            }
            if (this.className != null) {
                priority = 0;
            }
            this.mMatchOrder = priority;
        }

        public String toString() {
            return "Priority{packagePrefix='" + this.packagePrefix + '\'' + ", packageName='" + this.packageName + '\'' + ", className='" + this.className + '\'' + ", value=" + this.value + ", system=" + this.system + ", mMatchOrder=" + this.mMatchOrder + '}';
        }

        public boolean match(String packageName, String className, boolean isSystem) {
            if (this.packageName != null) {
                if (this.packageName.equals(packageName) && (TextUtils.isEmpty(this.className) || this.className.equals(className))) {
                    return true;
                }
                return false;
            } else if (this.packagePrefix != null) {
                return packageName.startsWith(this.packagePrefix);
            } else {
                if (this.system == null || this.system.booleanValue() != isSystem) {
                    return false;
                }
                return true;
            }
        }
    }

    public List<Component> getShareComponents() {
        List<Component> ret;
        if (BaseBuildUtil.isInternational()) {
            ret = this.mShareComponentsInternational;
        } else {
            ret = this.mShareComponents;
        }
        return ret != null ? ret : new ArrayList();
    }

    public List<Priority> getComponentPriority() {
        List<Priority> ret;
        if (BaseBuildUtil.isInternational()) {
            ret = this.mPriorityInternational;
        } else {
            ret = this.mPriority;
        }
        return ret != null ? ret : new ArrayList();
    }

    public static ComponentsStrategy createDefault() {
        ComponentsStrategy strategy = new ComponentsStrategy();
        if (BaseBuildUtil.isInternational()) {
            strategy.mShareComponentsInternational = new ArrayList();
            strategy.mShareComponentsInternational.add(new Component("com.twitter.android", "com.twitter.android.composer.ComposerActivity", 0));
            strategy.mShareComponentsInternational.add(new Component("com.instagram.android", "com.instagram.android.activity.ShareHandlerActivity", 1));
            strategy.mShareComponentsInternational.add(new Component("com.whatsapp", "com.whatsapp.ContactPicker", 2));
            strategy.mShareComponentsInternational.add(new Component("com.facebook.katana", "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias", 3));
            strategy.mShareComponentsInternational.add(new Component("com.facebook.orca", "com.facebook.messenger.intents.ShareIntentHandler", 4));
            strategy.mShareComponentsInternational.add(new Component("org.telegram.messenger", "org.telegram.ui.LaunchActivity", 5));
            strategy.mShareComponentsInternational.add(new Component("com.bsb.hike", "com.bsb.hike.ui.ComposeChatActivity", 6));
            strategy.mShareComponentsInternational.add(new Component("com.twitter.android", "com.twitter.android.DMActivity", 7));
            strategy.mShareComponentsInternational.add(new Component("com.xiaomi.midrop", "com.xiaomi.midrop.sender.ui.TransmissionActivity", 8));
        } else {
            strategy.mShareComponents = new ArrayList();
            strategy.mShareComponents.add(new Component("com.tencent.mm", "com.tencent.mm.ui.tools.ShareImgUI", 0));
            strategy.mShareComponents.add(new Component("com.tencent.mm", "com.tencent.mm.ui.tools.ShareToTimeLineUI", 1));
            strategy.mShareComponents.add(new Component("com.qzone", "com.qzonex.module.operation.ui.QZonePublishMoodActivity", 2));
            strategy.mShareComponents.add(new Component("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity", 3));
        }
        strategy.mPriorityInternational = new ArrayList();
        strategy.mPriority = new ArrayList();
        return strategy;
    }

    public String toString() {
        return "ComponentsStrategy{mShareComponents=" + this.mShareComponents + ", mShareComponentsInternational=" + this.mShareComponentsInternational + ", mPriority=" + this.mPriority + ", mPriorityInternational=" + this.mPriorityInternational + '}';
    }

    public void doAdditionalProcessing() {
        List<Priority> priorityList;
        if (BaseBuildUtil.isInternational()) {
            priorityList = this.mPriorityInternational;
        } else {
            priorityList = this.mPriority;
        }
        if (priorityList != null && !priorityList.isEmpty()) {
            for (Priority item : priorityList) {
                item.initMathOrder();
            }
            Collections.sort(priorityList, MATCH_ORDER);
        }
    }
}
