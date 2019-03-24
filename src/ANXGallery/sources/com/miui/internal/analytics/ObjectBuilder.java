package com.miui.internal.analytics;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class ObjectBuilder<T> {
    private static final String TAG = "ObjectBuilder";
    private ArrayList<BuilderData> ac = new ArrayList();

    private class BuilderData {
        Class<? extends T> ad;
        String ae;

        BuilderData(Class<? extends T> cls, String str) {
            this.ad = cls;
            this.ae = str;
        }
    }

    public T buildObject(String str) {
        Iterator it = this.ac.iterator();
        T t = null;
        while (it.hasNext()) {
            BuilderData builderData = (BuilderData) it.next();
            if (builderData.ae.equals(str)) {
                try {
                    t = builderData.ad.newInstance();
                } catch (Throwable e) {
                    Log.e(TAG, "InstantiationException catched when buildObject", e);
                } catch (Throwable e2) {
                    Log.e(TAG, "IllegalAccessException catched when buildObject", e2);
                }
            }
        }
        return t;
    }

    public boolean registerClass(Class<? extends T> cls, String str) {
        Iterator it = this.ac.iterator();
        while (it.hasNext()) {
            if (str.equals(((BuilderData) it.next()).ae)) {
                return false;
            }
        }
        return this.ac.add(new BuilderData(cls, str));
    }
}
