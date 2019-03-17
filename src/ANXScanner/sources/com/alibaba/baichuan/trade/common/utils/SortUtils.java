package com.alibaba.baichuan.trade.common.utils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SortUtils {

    public static class SortInfo implements Serializable {
        private static final long serialVersionUID = 3959903664223165585L;
        public String[] after;
        public Boolean afterAll;
        public String[] before;
        public Boolean beforeAll;
        public String name;
    }

    private static void a(String str, String str2, Set<String> set, Map<String, Set<String>> map) {
        Set<String> set2 = (Set) map.get(str2);
        if (set2 != null && !set2.contains(str)) {
            for (String str3 : set2) {
                if (set.add(str3)) {
                    a(str, str3, set, map);
                }
            }
        }
    }

    public static void sorts(SortInfo[] sortInfoArr) {
        SortInfo sortInfo;
        Entry entry;
        Map hashMap = new HashMap();
        Map hashMap2 = new HashMap();
        for (SortInfo sortInfo2 : sortInfoArr) {
            if (sortInfo2.before != null) {
                for (Object obj : sortInfo2.before) {
                    Set set = (Set) hashMap.get(obj);
                    if (set == null) {
                        set = new HashSet();
                        hashMap.put(obj, set);
                    }
                    set.add(sortInfo2.name);
                }
            }
            Collection collection = (Set) hashMap.get(sortInfo2.name);
            if (collection == null) {
                collection = new HashSet();
                hashMap.put(sortInfo2.name, collection);
            }
            if (sortInfo2.after != null) {
                Collections.addAll(collection, sortInfo2.after);
            }
            hashMap2.put(sortInfo2.name, sortInfo2);
        }
        Object hashSet = new HashSet();
        for (SortInfo sortInfo3 : sortInfoArr) {
            a(sortInfo3.name, sortInfo3.name, hashSet, hashMap);
            ((Set) hashMap.get(sortInfo3.name)).addAll(hashSet);
            hashSet.clear();
        }
        Collection hashSet2 = new HashSet();
        Object<String> hashSet3 = new HashSet();
        for (SortInfo sortInfo32 : sortInfoArr) {
            String str = sortInfo32.name;
            if (sortInfo32.beforeAll != null && sortInfo32.beforeAll.booleanValue()) {
                hashSet2.add(str);
                hashSet2.addAll((Set) hashMap.get(str));
            } else if (sortInfo32.afterAll != null && sortInfo32.afterAll.booleanValue()) {
                hashSet3.add(str);
                for (Entry entry2 : hashMap.entrySet()) {
                    if (((Set) entry2.getValue()).contains(str)) {
                        hashSet3.add(entry2.getKey());
                    }
                }
            }
        }
        for (Entry entry22 : hashMap.entrySet()) {
            if (!hashSet2.contains(entry22.getKey())) {
                ((Set) entry22.getValue()).addAll(hashSet2);
            }
        }
        Collection hashSet4 = new HashSet(hashMap.keySet());
        hashSet4.removeAll(hashSet3);
        for (String str2 : hashSet3) {
            ((Set) hashMap.get(str2)).addAll(hashSet4);
        }
        hashSet = new HashSet();
        Set hashSet5 = new HashSet();
        List<String> arrayList = new ArrayList(sortInfoArr.length);
        while (hashMap.size() > 0) {
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                entry22 = (Entry) it.next();
                ((Set) entry22.getValue()).removeAll(hashSet5);
                ((Set) entry22.getValue()).retainAll(hashMap.keySet());
                if (((Set) entry22.getValue()).size() == 0) {
                    hashSet.add(entry22.getKey());
                    arrayList.add(entry22.getKey());
                    it.remove();
                }
            }
            if (hashSet.size() == 0) {
                throw new IllegalStateException("Circular found for " + hashMap);
            }
            hashSet5.clear();
            hashSet5.addAll(hashSet);
            hashSet.clear();
        }
        int i = 0;
        for (String str22 : arrayList) {
            int i2;
            sortInfo32 = (SortInfo) hashMap2.get(str22);
            if (sortInfo32 != null) {
                int i3 = i + 1;
                sortInfoArr[i] = sortInfo32;
                i2 = i3;
            } else {
                i2 = i;
            }
            i = i2;
        }
    }
}
