package com.nexstreaming.kminternal.kinemaster.mediainfo;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.util.Log;
import com.miui.internal.view.menu.MenuBuilder;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.TaskError;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* compiled from: ThumbnailParser */
class g {

    /* compiled from: ThumbnailParser */
    static class a implements Comparator<b> {
        a() {
        }

        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            if (bVar.a() < bVar2.a()) {
                return -1;
            }
            return bVar.a() > bVar2.a() ? 1 : 0;
        }
    }

    /* compiled from: ThumbnailParser */
    public static class b {
        private int a;
        private int b;
        private long c;

        b(int i, int i2, long j) {
            this.a = i;
            this.b = i2;
            this.c = j;
        }

        public int a() {
            return this.a;
        }

        public long b() {
            return this.c;
        }
    }

    static TaskError a(File file, int i, c cVar) {
        if (!file.exists()) {
            return ThumbnailError.RawFileNotFound;
        }
        long length = file.length();
        if (length < 8) {
            return ThumbnailError.RawFileTooSmall;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            long filePointer = randomAccessFile.getFilePointer();
            int readInt = randomAccessFile.readInt();
            int readInt2 = randomAccessFile.readInt();
            int readInt3 = randomAccessFile.readInt();
            int a = a(readInt);
            readInt = a(readInt2);
            readInt2 = a(readInt3);
            readInt3 = ((readInt * readInt2) * a) / 8;
            int min = (int) Math.min((long) i, (length - 8) / ((long) (readInt3 + 4)));
            if (min < 1) {
                return ThumbnailError.NoThumbailsFound;
            }
            byte[] bArr = new byte[readInt3];
            ByteBuffer.wrap(bArr);
            ArrayList arrayList = new ArrayList();
            readInt3 = 0;
            int i2 = 0;
            while (i2 < min) {
                int readInt4 = randomAccessFile.readInt();
                int a2 = a(readInt4);
                if (readInt3 > a2) {
                    Log.d("ThumbnailParser", "thumbnail needSort");
                }
                arrayList.add(new b(a2, readInt4, randomAccessFile.getFilePointer()));
                randomAccessFile.read(bArr);
                i2++;
                readInt3 = a2;
            }
            randomAccessFile.seek(filePointer);
            Collections.sort(arrayList, new a());
            Log.d("ThumbnailParser", "Sort thumbnail time stamp");
            readInt3 = 0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                randomAccessFile.seek(bVar.b());
                randomAccessFile.read(bArr);
                a(bArr, bVar.a(), readInt, readInt2, a, readInt3, min, cVar);
                readInt3++;
            }
            randomAccessFile.close();
            arrayList.clear();
            return null;
        } catch (Exception e) {
            return Task.makeTaskError(e);
        }
    }

    static ThumbnailError a(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, c cVar) throws IOException {
        if (cVar == null) {
            return ThumbnailError.ParameterError;
        }
        d dVar;
        e eVar;
        Bitmap bitmap;
        boolean z = cVar instanceof e;
        if (z) {
            dVar = null;
            eVar = (e) cVar;
        } else {
            dVar = (d) cVar;
            eVar = null;
        }
        Log.d("ThumbnailParser", "processRawFile: w/h/time=" + i2 + "/" + i3 + "/" + i + ", format=" + i4);
        Bitmap bitmap2 = null;
        if (i4 == 32) {
            if (!z) {
                bitmap2 = Bitmap.createBitmap(i2, i3, Config.ARGB_8888);
            }
            bitmap = bitmap2;
        } else if (i4 == 16) {
            if (!z) {
                bitmap2 = Bitmap.createBitmap(i2, i3, Config.RGB_565);
            }
            bitmap = bitmap2;
        } else if (i4 != 8) {
            return ThumbnailError.UnknownFormat;
        } else {
            if (!z) {
                bitmap2 = Bitmap.createBitmap(i2, i3, Config.ARGB_8888);
            }
            bitmap = bitmap2;
        }
        Bitmap bitmap3 = null;
        Canvas canvas = null;
        if (!z) {
            bitmap3 = Bitmap.createBitmap(i2, i3, bitmap.getConfig());
            canvas = new Canvas(bitmap3);
            canvas.scale(1.0f, -1.0f);
        }
        Buffer wrap = ByteBuffer.wrap(bArr);
        Log.d("ThumbnailParser", "processRawFile : thumbCount=" + i6);
        if (z) {
            eVar.a(bArr, i5, i6, i);
        } else {
            bitmap.copyPixelsFromBuffer(wrap);
            canvas.drawBitmap(bitmap, 0.0f, (float) (-i3), null);
            dVar.a(bitmap3, i5, i6, i);
        }
        return null;
    }

    static ThumbnailError a(InputStream inputStream, long j, int i, c cVar) throws IOException {
        if (cVar == null) {
            return ThumbnailError.ParameterError;
        }
        e eVar;
        d dVar;
        Bitmap bitmap;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        int readInt = dataInputStream.readInt();
        int readInt2 = dataInputStream.readInt();
        int readInt3 = dataInputStream.readInt();
        boolean z = cVar instanceof e;
        if (z) {
            eVar = (e) cVar;
            dVar = null;
        } else {
            dVar = (d) cVar;
            eVar = null;
        }
        boolean z2 = false;
        if (!((MenuBuilder.CATEGORY_MASK & readInt2) == 0 && (MenuBuilder.CATEGORY_MASK & readInt3) == 0)) {
            readInt = a(readInt);
            readInt2 = a(readInt2);
            readInt3 = a(readInt3);
            z2 = true;
        }
        Log.d("ThumbnailParser", "processRawFile: w/h/swap=" + readInt2 + "/" + readInt3 + "/" + z2 + " format=" + readInt);
        Bitmap bitmap2 = null;
        if (readInt == 32) {
            if (!z) {
                bitmap2 = Bitmap.createBitmap(readInt2, readInt3, Config.ARGB_8888);
            }
            bitmap = bitmap2;
        } else if (readInt == 16) {
            if (!z) {
                bitmap2 = Bitmap.createBitmap(readInt2, readInt3, Config.RGB_565);
            }
            bitmap = bitmap2;
        } else if (readInt != 8) {
            return ThumbnailError.UnknownFormat;
        } else {
            if (!z) {
                bitmap2 = Bitmap.createBitmap(readInt2, readInt3, Config.ARGB_8888);
            }
            bitmap = bitmap2;
        }
        Bitmap bitmap3 = null;
        Canvas canvas = null;
        if (!z) {
            bitmap3 = Bitmap.createBitmap(readInt2, readInt3, bitmap.getConfig());
            canvas = new Canvas(bitmap3);
            canvas.scale(1.0f, -1.0f);
        }
        int i2 = ((readInt2 * readInt3) * readInt) / 8;
        int min = (int) Math.min((long) i, (j - 8) / ((long) (i2 + 4)));
        if (min < 1) {
            return ThumbnailError.NoThumbailsFound;
        }
        byte[] bArr = new byte[i2];
        Buffer wrap = ByteBuffer.wrap(bArr);
        Log.d("ThumbnailParser", "processRawFile : thumbCount=" + min);
        for (int i3 = 0; i3 < min; i3++) {
            Log.d("ThumbnailParser", "processRawFile : i=" + i3);
            readInt2 = dataInputStream.readInt();
            if (z2) {
                readInt2 = a(readInt2);
            }
            Log.d("ThumbnailParser", "processRawFile : time=" + readInt2);
            if (dataInputStream.read(bArr) < i2 - 1) {
                if (z) {
                    eVar.a(null, i3, min, readInt2);
                } else {
                    dVar.a(null, i3, min, readInt2);
                }
            } else if (z) {
                eVar.a(bArr, i3, min, readInt2);
                wrap.rewind();
            } else {
                bitmap.copyPixelsFromBuffer(wrap);
                wrap.rewind();
                canvas.drawBitmap(bitmap, 0.0f, (float) (-readInt3), null);
                dVar.a(bitmap3, i3, min, readInt2);
            }
        }
        return null;
    }

    private static int a(int i) {
        return ((((-16777216 & i) >>> 24) | ((16711680 & i) >>> 8)) | ((65280 & i) << 8)) | ((i & 255) << 24);
    }
}
