package com.alibaba.baichuan.trade.biz.utils;

import android.text.TextUtils;

public enum AlibcURLCheck {
    regular(0) {
        public boolean check(String[] strArr, String str) {
            if (str == null) {
                return false;
            }
            for (Object obj : strArr) {
                if (!TextUtils.isEmpty(obj) && !TextUtils.isEmpty(str) && str.matches(obj)) {
                    return true;
                }
            }
            return false;
        }
    },
    contains(1) {
        public boolean check(String[] strArr, String str) {
            if (str == null) {
                return false;
            }
            for (CharSequence charSequence : strArr) {
                if (!TextUtils.isEmpty(charSequence) && !TextUtils.isEmpty(str) && str.contains(charSequence)) {
                    return true;
                }
            }
            return false;
        }
    },
    equal(2) {
        public boolean check(String[] strArr, String str) {
            if (str == null) {
                return false;
            }
            for (CharSequence charSequence : strArr) {
                if (!TextUtils.isEmpty(charSequence) && !TextUtils.isEmpty(str) && TextUtils.equals(charSequence, str)) {
                    return true;
                }
            }
            return false;
        }
    };
    
    public int type;
    public String[] urlList;

    private AlibcURLCheck(int i) {
        this.type = -1;
    }

    public static AlibcURLCheck getUrlCheckType(int i) {
        AlibcURLCheck alibcURLCheck = regular;
        switch (i) {
            case 0:
                return regular;
            case 1:
                return contains;
            case 2:
                return equal;
            default:
                return alibcURLCheck;
        }
    }

    public abstract boolean check(String[] strArr, String str);
}
