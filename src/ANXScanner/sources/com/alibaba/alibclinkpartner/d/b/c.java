package com.alibaba.alibclinkpartner.d.b;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.j.e;

public class c implements a {
    private SharedPreferences a = b.e().getSharedPreferences("AlibcLinkPartner", 0);

    public boolean a(String str) {
        if (str != null) {
            Editor edit = this.a.edit();
            edit.remove(str);
            edit.commit();
        }
        return true;
    }

    public boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            e.a("ALPSharePreferenceExStorageImpl", "saveVal", "key/val is null");
            return false;
        }
        Editor edit = this.a.edit();
        edit.putString(str, str2);
        edit.commit();
        return true;
    }

    public String b(String str, String str2) {
        if (str != null) {
            return this.a.getString(str, str2);
        }
        e.a("ALPSharePreferenceExStorageImpl", "getVal", "key is null");
        return str2;
    }
}
