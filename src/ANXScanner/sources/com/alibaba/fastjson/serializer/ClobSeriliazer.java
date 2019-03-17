package com.alibaba.fastjson.serializer;

public class ClobSeriliazer implements ObjectSerializer {
    public static final ClobSeriliazer instance = new ClobSeriliazer();

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.alibaba.fastjson.serializer.ClobSeriliazer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int):void, dom blocks: [B:1:0x0002, B:5:0x0015]
        	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:89)
        	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r12, java.lang.Object r13, java.lang.Object r14, java.lang.reflect.Type r15, int r16) throws java.io.IOException {
        /*
        r11 = this;
        if (r13 != 0) goto L_0x0006;
    L_0x0002:
        r12.writeNull();	 Catch:{ SQLException -> 0x002a }
    L_0x0005:
        return;	 Catch:{ SQLException -> 0x002a }
    L_0x0006:
        r0 = r13;	 Catch:{ SQLException -> 0x002a }
        r0 = (java.sql.Clob) r0;	 Catch:{ SQLException -> 0x002a }
        r3 = r0;	 Catch:{ SQLException -> 0x002a }
        r7 = r3.getCharacterStream();	 Catch:{ SQLException -> 0x002a }
        r1 = new java.lang.StringBuilder;	 Catch:{ SQLException -> 0x002a }
        r1.<init>();	 Catch:{ SQLException -> 0x002a }
        r9 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r2 = new char[r9];	 Catch:{ Exception -> 0x0038 }
    L_0x0017:
        r9 = 0;	 Catch:{ Exception -> 0x0038 }
        r10 = r2.length;	 Catch:{ Exception -> 0x0038 }
        r6 = r7.read(r2, r9, r10);	 Catch:{ Exception -> 0x0038 }
        if (r6 >= 0) goto L_0x0033;
    L_0x001f:
        r8 = r1.toString();	 Catch:{ SQLException -> 0x002a }
        r7.close();	 Catch:{ SQLException -> 0x002a }
        r12.write(r8);	 Catch:{ SQLException -> 0x002a }
        goto L_0x0005;
    L_0x002a:
        r4 = move-exception;
        r9 = new java.io.IOException;
        r10 = "write clob error";
        r9.<init>(r10, r4);
        throw r9;
    L_0x0033:
        r9 = 0;
        r1.append(r2, r9, r6);	 Catch:{ Exception -> 0x0038 }
        goto L_0x0017;
    L_0x0038:
        r5 = move-exception;
        r9 = new com.alibaba.fastjson.JSONException;	 Catch:{ SQLException -> 0x002a }
        r10 = "read string from reader error";	 Catch:{ SQLException -> 0x002a }
        r9.<init>(r10, r5);	 Catch:{ SQLException -> 0x002a }
        throw r9;	 Catch:{ SQLException -> 0x002a }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ClobSeriliazer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int):void");
    }
}
