package com.alibaba.mtl.appmonitor.f;

import com.alibaba.mtl.appmonitor.SdkMeta;
import com.alibaba.mtl.appmonitor.a.d;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.a.h;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;
import com.alibaba.mtl.appmonitor.model.UTDimensionValueSet;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.model.LogField;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

/* compiled from: UTUtil */
public class c {
    public static void b(Map<UTDimensionValueSet, List<d>> map) {
        for (Entry entry : map.entrySet()) {
            StringBuilder stringBuilder = new StringBuilder();
            StringBuilder stringBuilder2 = new StringBuilder();
            b bVar = (UTDimensionValueSet) entry.getKey();
            List<b> list = (List) entry.getValue();
            if (list.size() != 0) {
                Integer eventId = bVar.getEventId();
                if (eventId != null) {
                    f a = f.a(eventId.intValue());
                    h hVar = (h) a.a().a(h.class, new Object[0]);
                    hVar.e = eventId.intValue();
                    if (bVar.getMap() != null) {
                        hVar.n.putAll(bVar.getMap());
                    }
                    Map hashMap = new HashMap();
                    hashMap.put("meta", SdkMeta.getSDKMetaData());
                    b bVar2 = (com.alibaba.mtl.appmonitor.c.d) a.a().a(com.alibaba.mtl.appmonitor.c.d.class, new Object[0]);
                    int i = 0;
                    for (b bVar3 : list) {
                        bVar2.put(bVar3.a());
                        if (i == 0) {
                            stringBuilder.append(bVar3.o);
                            stringBuilder2.append(bVar3.p);
                        } else {
                            stringBuilder.append(",");
                            stringBuilder.append(bVar3.o);
                            stringBuilder2.append(",");
                            stringBuilder2.append(bVar3.p);
                        }
                        i++;
                        a.a().a(bVar3);
                    }
                    hashMap.put(com.alipay.sdk.packet.d.k, bVar2);
                    hVar.n.put(a.a(), new JSONObject(hashMap).toString());
                    String stringBuilder3 = stringBuilder.toString();
                    String stringBuilder4 = stringBuilder2.toString();
                    hVar.n.put(LogField.ARG1.toString(), stringBuilder3);
                    hVar.n.put(LogField.ARG2.toString(), stringBuilder4);
                    hVar.v = stringBuilder3;
                    hVar.w = stringBuilder4;
                    b(hVar);
                    a.a().a(bVar2);
                }
            }
            a.a().a(bVar);
        }
    }

    public static void a(UTDimensionValueSet uTDimensionValueSet, d dVar) {
        Integer eventId = uTDimensionValueSet.getEventId();
        if (eventId != null) {
            f a = f.a(eventId.intValue());
            h hVar = (h) a.a().a(h.class, new Object[0]);
            hVar.e = 6699;
            if (uTDimensionValueSet.getMap() != null) {
                hVar.n.putAll(uTDimensionValueSet.getMap());
            }
            Map hashMap = new HashMap();
            hashMap.put("meta", SdkMeta.getSDKMetaData());
            hashMap.put("_event_id", eventId);
            b bVar = (com.alibaba.mtl.appmonitor.c.d) a.a().a(com.alibaba.mtl.appmonitor.c.d.class, new Object[0]);
            bVar.put(dVar.a());
            a.a().a((b) dVar);
            hashMap.put(com.alipay.sdk.packet.d.k, bVar);
            hVar.n.put(a.a(), new JSONObject(hashMap).toString());
            hVar.n.put(LogField.EVENTID.toString(), String.valueOf(6699));
            b(hVar);
            a.a().a(bVar);
        }
    }

    public static void a(h hVar) {
        if (hVar != null) {
            com.alibaba.mtl.log.a.a(hVar.u, String.valueOf(hVar.e), hVar.v, hVar.w, hVar.x, hVar.n);
            a.a().a((b) hVar);
        }
    }

    public static void b(h hVar) {
        i.a("UTUtil", "upload without flowback. args:", hVar.n);
        com.alibaba.mtl.appmonitor.e.a.a().a(hVar.n);
        a.a().a((b) hVar);
    }
}
