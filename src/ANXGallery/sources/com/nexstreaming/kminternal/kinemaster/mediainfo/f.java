package com.nexstreaming.kminternal.kinemaster.mediainfo;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.TaskError;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: ThumbnailConversionTask */
abstract class f extends AsyncTask<Integer, Integer, TaskError> {
    private File a;
    private File b;
    private File c;
    private File d;
    private long e;
    private Bitmap f;
    private Bitmap g;
    private Bitmap h;
    private int[] i;

    protected abstract void a();

    protected abstract void a(TaskError taskError);

    public f(File file, File file2, File file3, File file4) {
        this.a = file2;
        this.d = file;
        this.b = file3;
        this.c = file4;
    }

    /* renamed from: a */
    protected TaskError doInBackground(Integer... numArr) {
        if (this.d.exists()) {
            this.e = this.d.length();
            Log.d("KMMediaInfo_ThumbConv", "doInBackground : mThumbFileSize=" + this.e);
            if (this.e < 8) {
                Log.d("KMMediaInfo_ThumbConv", "doInBackground : raw thumbnail file too small");
                return ThumbnailError.RawFileTooSmall;
            }
            try {
                TaskError b = b();
                if (b != null) {
                    Log.d("KMMediaInfo_ThumbConv", "doInBackground : raw thumbnail file parse error");
                    return b;
                }
                c();
                Log.d("KMMediaInfo_ThumbConv", "doInBackground : out");
                return null;
            } catch (Exception e) {
                Log.d("KMMediaInfo_ThumbConv", "doInBackground : EXCEPTION", e);
                return Task.makeTaskError(e);
            }
        }
        Log.d("KMMediaInfo_ThumbConv", "doInBackground : raw thumbnail file not found");
        return ThumbnailError.RawFileNotFound;
    }

    private TaskError a(InputStream inputStream) throws IOException {
        return g.a(inputStream, this.e, 50, new d() {
            int a;
            int b;
            Bitmap c;
            Canvas d;
            Rect e;
            Paint f;

            public void a(Bitmap bitmap, int i, int i2, int i3) {
                if (i == 0) {
                    this.a = 90;
                    this.b = i2 * 160;
                    this.c = Bitmap.createBitmap(this.b, this.a, Config.RGB_565);
                    f.this.f = this.c;
                    this.d = new Canvas(this.c);
                    this.e = new Rect(0, 0, 160, 90);
                    this.f = new Paint();
                    this.f.setFilterBitmap(true);
                    f.this.i = new int[i2];
                    Log.d("KMMediaInfo_ThumbConv", "processRawFile : totalCount=" + i2);
                }
                f.this.i[i] = i3;
                if (bitmap == null) {
                    this.e.offset(160, 0);
                    return;
                }
                Bitmap createBitmap;
                if (i == 0) {
                    Log.d("KMMediaInfo_ThumbConv", "Make large thumnail at i==0");
                    createBitmap = Bitmap.createBitmap(640, 360, Config.RGB_565);
                    new Canvas(createBitmap).drawBitmap(bitmap, null, new Rect(0, 0, 640, 360), this.f);
                    f.this.g = createBitmap;
                } else if (i == i2 - 1) {
                    Log.d("KMMediaInfo_ThumbConv", "Make large end thumnail at i==" + i);
                    createBitmap = Bitmap.createBitmap(640, 360, Config.RGB_565);
                    new Canvas(createBitmap).drawBitmap(bitmap, null, new Rect(0, 0, 640, 360), this.f);
                    f.this.h = createBitmap;
                }
                this.d.save();
                this.d.scale(-1.0f, -1.0f, 80.0f, 45.0f);
                this.d.drawBitmap(bitmap, null, this.e, this.f);
                this.d.restore();
                this.d.translate(160.0f, 0.0f);
            }
        });
    }

    private TaskError b() throws IOException {
        InputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.d));
        try {
            TaskError a = a(bufferedInputStream);
            return a;
        } finally {
            bufferedInputStream.close();
        }
    }

    /* renamed from: b */
    protected final void onPostExecute(TaskError taskError) {
        if (taskError == null) {
            a();
        } else {
            a(taskError);
        }
    }

    private void c() throws IOException {
        a(null, this.g, this.b);
        a(null, this.h == null ? this.g : this.h, this.c);
        a(this.i, this.f, this.a);
    }

    private void a(int[] iArr, Bitmap bitmap, File file) throws IOException {
        Log.d("KMMediaInfo_ThumbConv", "writeBitmapToFile(" + file + ") : " + (iArr == null ? "no index" : "width index"));
        OutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
        if (iArr != null) {
            try {
                dataOutputStream.writeInt(160);
                dataOutputStream.writeInt(90);
                dataOutputStream.writeInt(iArr.length);
                for (int writeInt : iArr) {
                    dataOutputStream.writeInt(writeInt);
                }
            } catch (Throwable th) {
                dataOutputStream.close();
                file.setReadable(true);
            }
        }
        bitmap.compress(CompressFormat.JPEG, 70, dataOutputStream);
        dataOutputStream.close();
        file.setReadable(true);
    }
}
