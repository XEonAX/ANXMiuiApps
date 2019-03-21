package com.nexstreaming.kminternal.kinemaster.editorwrapper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.util.Log;
import android.util.LruCache;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: LookUpTable */
public class b {
    private static int a = 100;
    private static b b = null;
    private static int i = 100;
    private LruCache<String, b> c;
    private Map<String, a> d = new HashMap();
    private List<c> e;
    private Context f;
    private transient WeakReference<Bitmap> g;
    private boolean h;
    private Object j = new Object();
    private ArrayList<Integer> k = null;

    /* compiled from: LookUpTable */
    public class a {
        private int b;
        private b c;

        public a(int i, b bVar) {
            this.b = i;
            this.c = bVar;
        }

        public int a() {
            return this.b;
        }

        public b b() {
            return this.c;
        }
    }

    /* compiled from: LookUpTable */
    public class b {
        private int b;
        private int c;
        private IntBuffer d;
        private Bitmap e;

        private Bitmap a(int[] iArr) {
            int[] array = IntBuffer.allocate(nexEngine.ExportHEVCMainTierLevel52).array();
            for (int i = 0; i < 8; i++) {
                for (int i2 = 0; i2 < 8; i2++) {
                    for (int i3 = 0; i3 < 64; i3++) {
                        for (int i4 = 0; i4 < 64; i4++) {
                            array[(((i * 64) + ((i2 * 512) * 64)) + i3) + (i4 * 512)] = iArr[(((262080 - ((i * 512) * 64)) - ((i2 * 64) * 64)) + i3) - (i4 * 64)];
                        }
                    }
                }
            }
            return Bitmap.createBitmap(array, 512, 512, Config.ARGB_8888);
        }

        public b(byte[] bArr, int i, int i2, int i3) {
            int[] b;
            if (i3 == 2) {
                b = EditorGlobal.a().b(bArr, i, i2);
                if (b != null) {
                    this.e = a(b);
                }
            } else if (i3 == 1) {
                b = EditorGlobal.a().a(bArr, i, i2);
                if (b != null) {
                    this.e = a(b);
                }
            } else if (i3 == 0) {
                BitmapFactory.decodeByteArray(bArr, i, i2);
            }
            if (this.e != null) {
                this.b = this.e.getWidth();
                this.c = this.e.getHeight();
            }
        }

        public b(Bitmap bitmap) {
            IntBuffer allocate = IntBuffer.allocate(nexEngine.ExportHEVCMainTierLevel52);
            this.d = IntBuffer.allocate(nexEngine.ExportHEVCMainTierLevel52);
            bitmap.getPixels(allocate.array(), 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            int[] array = allocate.array();
            int[] array2 = this.d.array();
            for (int i = 0; i < 8; i++) {
                for (int i2 = 0; i2 < 8; i2++) {
                    for (int i3 = 0; i3 < 64; i3++) {
                        for (int i4 = 0; i4 < 64; i4++) {
                            array2[(((i * 64) + ((i2 * 512) * 64)) + i3) + (i4 * 512)] = array[(((262080 - ((i * 512) * 64)) - ((i2 * 64) * 64)) + i3) - (i4 * 64)];
                        }
                    }
                }
            }
            this.e = Bitmap.createBitmap(array2, 512, 512, bitmap.getConfig());
            this.b = this.e.getWidth();
            this.c = this.e.getHeight();
        }

        public int[] a() {
            return this.d.array();
        }

        public Bitmap b() {
            return this.e;
        }
    }

    /* compiled from: LookUpTable */
    public class c {
        private int b;
        private String c;
        private String d;
        private String e;
        private boolean f;

        /* synthetic */ c(b bVar, int i, String str, long j, boolean z, AnonymousClass1 anonymousClass1) {
            this(i, str, j, z);
        }

        private c(int i, String str, long j, boolean z) {
            this.b = i;
            this.c = str;
            int lastIndexOf = str.lastIndexOf(".");
            if (lastIndexOf < 0) {
                lastIndexOf = 0;
            } else {
                lastIndexOf++;
            }
            this.d = str.substring(lastIndexOf);
            this.f = z;
            f();
        }

        private void f() {
            this.e = "LUT_" + this.d.toUpperCase();
            if (this.d.compareTo("disney") == 0) {
                this.e = "LUT_DBRIGHT";
            }
        }

        public String a() {
            return this.d;
        }

        public int b() {
            return this.b;
        }

        public boolean c() {
            return this.f;
        }

        public String d() {
            return this.e;
        }

        public String e() {
            return this.c;
        }
    }

    public static b a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (!(b == null || b.f.getPackageName().equals(applicationContext.getPackageName()))) {
            b = null;
        }
        if (b == null) {
            b = new b(applicationContext);
            b.d();
        }
        return b;
    }

    public void a() {
        Log.d("LookUpTable", "releaseResource2LookUpTable()");
        if (this.c != null) {
            this.c.evictAll();
            this.c = null;
        }
        if (this.e != null) {
            this.e.clear();
            this.e = null;
        }
        b = null;
    }

    public void b() {
        synchronized (this.j) {
            if (this.c != null && this.c.size() > 0) {
                this.c.evictAll();
            }
        }
    }

    public static b c() {
        return b;
    }

    private b(Context context) {
        this.f = context;
    }

    public int d() {
        if (this.e != null) {
            this.e.clear();
        } else {
            this.e = new ArrayList();
        }
        int i = 1;
        for (f fVar : com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(ItemCategory.filter)) {
            if (fVar.getType() == ItemType.lut) {
                this.e.add(new c(this, i, fVar.getId(), 0, fVar.isHidden(), null));
                i++;
            }
        }
        Iterator it = this.d.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2 - 1;
            }
            Entry entry = (Entry) it.next();
            a aVar = (a) entry.getValue();
            this.e.add(new c(this, aVar.a(), (String) entry.getKey(), 0, false, null));
            i = i2 + 1;
        }
    }

    private int i() {
        int i;
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList();
                for (i = i; i < i + 10; i++) {
                    this.k.add(Integer.valueOf(i));
                }
            }
            i = ((Integer) this.k.get(0)).intValue();
            this.k.remove(0);
        }
        return i;
    }

    private void b(int i) {
        synchronized (this) {
            this.k.add(Integer.valueOf(i));
        }
    }

    public int a(String str, b bVar) throws Exception {
        if (this.d.size() >= 10) {
            throw new Exception("Exceed the capacity of custom lut - it is 10");
        }
        j();
        a aVar = new a(i(), bVar);
        this.d.put(str, aVar);
        h();
        return aVar.a();
    }

    public int a(String str) {
        a aVar = (a) this.d.get(str);
        if (aVar != null) {
            this.d.remove(str);
            EditorGlobal.a().m(aVar.a());
            b(aVar.a());
            h();
        }
        return 0;
    }

    public void e() {
        for (a aVar : this.d.values()) {
            EditorGlobal.a().m(aVar.a());
            b(aVar.a());
        }
        this.d.clear();
        h();
    }

    public boolean b(String str) {
        return this.d.get(str) != null;
    }

    public int c(String str) {
        k();
        if (this.e == null || this.e.size() == 0) {
            return 0;
        }
        a aVar = (a) this.d.get(str);
        if (aVar != null) {
            return aVar.a();
        }
        for (int i = 0; i < this.e.size(); i++) {
            if (((c) this.e.get(i)).d.compareTo(str) == 0) {
                return ((c) this.e.get(i)).b;
            }
        }
        return 0;
    }

    private int c(int i) {
        k();
        if (this.e == null) {
            return -1;
        }
        if (this.e.size() == 0) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.e.size()) {
                return -1;
            }
            if (((c) this.e.get(i3)).b == i) {
                return i3;
            }
            i2 = i3 + 1;
        }
    }

    private int e(String str) {
        k();
        if (this.e == null) {
            return -1;
        }
        if (this.e.size() == 0) {
            return -1;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.e.size()) {
                return -1;
            }
            if (((c) this.e.get(i2)).d.compareTo(str) == 0) {
                return i2;
            }
            i = i2 + 1;
        }
    }

    public List<c> f() {
        k();
        return this.e;
    }

    private void j() {
        synchronized (this.j) {
            if (this.c == null) {
                this.c = new LruCache(a) {
                    protected void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
                        Log.d("LookUpTable", "The entry is being removed / key:" + ((String) obj));
                        ((b) obj2).b().recycle();
                        int a = b.this.e((String) obj);
                        if (a < 0) {
                            Log.d("LookUpTable", "The entry is not found");
                            return;
                        }
                        Log.d("LookUpTable", "The entry index =" + a + ", id=" + ((c) b.this.e.get(a)).b);
                        EditorGlobal.a().m(((c) b.this.e.get(a)).b);
                    }
                };
            }
        }
    }

    public b a(int i) {
        IOException e;
        Closeable closeable = null;
        int c = c(i);
        if (c < 0) {
            return null;
        }
        b bVar;
        j();
        synchronized (this.j) {
            bVar = (b) this.c.get(((c) this.e.get(c)).c);
            if (bVar == null) {
                a aVar = (a) this.d.get(((c) this.e.get(c)).c);
                if (aVar != null) {
                    bVar = aVar.b();
                } else {
                    Options options = new Options();
                    options.inScaled = false;
                    f c2 = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(((c) this.e.get(c)).c);
                    if (c2 != null) {
                        b bVar2;
                        try {
                            closeable = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c2.getPackageURI(), c2.getAssetPackage().getAssetId());
                            if (closeable != null) {
                                InputStream a = closeable.a(c2.getFilePath());
                                Bitmap decodeStream = BitmapFactory.decodeStream(a, null, options);
                                a.close();
                                LruCache lruCache = this.c;
                                String c3 = ((c) this.e.get(c)).c;
                                bVar2 = new b(decodeStream);
                                try {
                                    lruCache.put(c3, bVar2);
                                    bVar = bVar2;
                                } catch (IOException e2) {
                                    e = e2;
                                    try {
                                        e.printStackTrace();
                                        bVar = bVar2;
                                        return bVar;
                                    } finally {
                                        com.nexstreaming.app.common.util.b.a(closeable);
                                    }
                                }
                            }
                            com.nexstreaming.app.common.util.b.a(closeable);
                        } catch (IOException e3) {
                            IOException iOException = e3;
                            bVar2 = bVar;
                            e = iOException;
                            e.printStackTrace();
                            bVar = bVar2;
                            return bVar;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    public Bitmap a(Bitmap bitmap, int i) {
        b a = a(i);
        if (a == null) {
            return null;
        }
        return a(bitmap, a);
    }

    private Bitmap a(Bitmap bitmap, b bVar) {
        int[] a = bVar.a();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        IntBuffer allocate = IntBuffer.allocate(width * height);
        bitmap.getPixels(allocate.array(), 0, width, 0, 0, width, height);
        int[] array = allocate.array();
        int length = array.length;
        for (int i = 0; i < length; i++) {
            width = array[i];
            float f = (((float) ((width >> 16) & 255)) / 256.0f) * 63.0f;
            float f2 = (((float) ((width >> 8) & 255)) / 256.0f) * 63.0f;
            float f3 = (((float) (width & 255)) / 256.0f) * 63.0f;
            int floor = (int) Math.floor((double) f3);
            height = (int) Math.ceil((double) f3);
            int i2 = floor % 8;
            int i3 = height % 8;
            floor = ((floor - i2) / 8) * 64;
            i2 *= 64;
            height = ((height - i3) / 8) * 64;
            i3 *= 64;
            int floor2 = (int) Math.floor((double) f);
            int floor3 = (int) Math.floor((double) f2);
            int ceil = (int) Math.ceil((double) f);
            int ceil2 = (int) Math.ceil((double) f2);
            int i4 = a[(((i2 + floor2) * 512) + floor) + floor3];
            int i5 = a[(((i2 + ceil) * 512) + floor) + floor3];
            floor = (a[(floor + ((i2 + floor2) * 512)) + ceil2] >> 8) & 255;
            f -= (float) floor2;
            f2 -= (float) floor3;
            f3 -= (float) Math.floor((double) f3);
            i2 = (int) ((((float) ((i4 >> 16) & 255)) * (1.0f - f)) + (((float) ((i5 >> 16) & 255)) * f));
            float f4 = ((float) floor) * f2;
            floor = (int) (f4 + (((float) ((i4 >> 8) & 255)) * (1.0f - f2)));
            i4 &= 255;
            i5 = a[(((i3 + floor2) * 512) + height) + floor3];
            f2 *= (float) ((a[(height + ((i3 + floor2) * 512)) + ceil2] >> 8) & 255);
            int i6 = (int) ((((float) ((int) ((f * ((float) ((a[floor3 + (((ceil + i3) * 512) + height)] >> 16) & 255))) + (((float) ((i5 >> 16) & 255)) * (1.0f - f))))) * f3) + (((float) i2) * (1.0f - f3)));
            i6 = (int) ((((float) floor) * (1.0f - f3)) + (((float) ((int) (f2 + (((float) ((i5 >> 8) & 255)) * (1.0f - f2))))) * f3));
            f = ((float) i4) * (1.0f - f3);
            width = (int) ((f3 * ((float) (i5 & 255))) + f);
            array[i] = ((-16777216 | (i2 << 16)) | (floor << 8)) | i4;
        }
        if (bitmap.getConfig() != null) {
            return Bitmap.createBitmap(array, bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        }
        return Bitmap.createBitmap(array, bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
    }

    public final Bitmap g() {
        Bitmap bitmap;
        if (this.g != null) {
            bitmap = (Bitmap) this.g.get();
        } else {
            bitmap = null;
        }
        Options options = new Options();
        options.inScaled = false;
        if (bitmap == null) {
            File file = new File(EditorGlobal.f().getAbsolutePath() + File.separator + "vignette.webp");
            if (file.isFile()) {
                bitmap = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            } else {
                try {
                    bitmap = BitmapFactory.decodeStream(this.f.getResources().getAssets().open("vignette.webp"), null, options);
                } catch (IOException e) {
                    e.printStackTrace();
                    bitmap = null;
                }
            }
        }
        if (bitmap == null) {
            return null;
        }
        this.g = new WeakReference(bitmap);
        return bitmap;
    }

    public c d(String str) {
        k();
        for (c cVar : this.e) {
            if (cVar.c.compareTo(str) == 0) {
                return cVar;
            }
        }
        return null;
    }

    public String[] a(boolean z) {
        k();
        List arrayList = new ArrayList();
        for (c cVar : this.e) {
            if (z) {
                arrayList.add(cVar.c);
            } else if (!cVar.c()) {
                arrayList.add(cVar.c);
            }
        }
        String[] strArr = new String[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return strArr;
            }
            strArr[i2] = (String) arrayList.get(i2);
            i = i2 + 1;
        }
    }

    public void h() {
        this.h = true;
    }

    private void k() {
        if (this.h) {
            this.h = false;
            d();
        }
    }
}
