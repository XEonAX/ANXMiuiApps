package com.nexstreaming.kminternal.kinemaster.codeccolorformat;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.MediaFormat;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.nexstreaming.app.common.task.ResultTask;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.TaskError;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Vector;

public class ColorFormatChecker {
    private static ResultTask<ColorFormat> a = null;
    private c b;
    private b c;
    private boolean d;
    private boolean e;
    private MediaFormat f;
    private Vector<byte[]> g;
    private Vector<byte[]> h;

    public enum ColorFormat {
        UNKNOWN,
        NV12,
        NV21
    }

    /* synthetic */ ColorFormatChecker(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static ResultTask<ColorFormat> a(Context context) {
        if (a == null) {
            a = new ResultTask();
            final SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences.contains("km_detected_codec_color_format")) {
                String string = defaultSharedPreferences.getString("km_detected_codec_color_format", null);
                for (ColorFormat colorFormat : ColorFormat.values()) {
                    if (colorFormat.name().equals(string)) {
                        a.setResult(colorFormat);
                        return a;
                    }
                }
            }
            new AsyncTask<Void, Void, ColorFormat>() {
                TaskError a = null;

                /* renamed from: a */
                protected ColorFormat doInBackground(Void... voidArr) {
                    ColorFormat colorFormat = null;
                    try {
                        return new ColorFormatChecker().b();
                    } catch (Exception e) {
                        this.a = Task.makeTaskError("Error getting color format", e);
                        return colorFormat;
                    }
                }

                /* renamed from: a */
                protected void onPostExecute(ColorFormat colorFormat) {
                    if (colorFormat != null) {
                        defaultSharedPreferences.edit().putString("km_detected_codec_color_format", colorFormat.name()).commit();
                        ColorFormatChecker.a.sendResult(colorFormat);
                    } else {
                        ColorFormatChecker.a.sendFailure(this.a);
                    }
                    super.onPostExecute(colorFormat);
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[]{(Void) null});
        }
        return a;
    }

    private ColorFormatChecker() {
        this.d = false;
        this.e = false;
    }

    private ColorFormat b() throws IOException {
        int i;
        long j = 0;
        ColorFormat colorFormat = ColorFormat.UNKNOWN;
        this.g = new Vector();
        this.h = new Vector();
        this.b = new c(1280, 720);
        this.b.a(new d() {
            public boolean a(int i, long j) {
                return true;
            }

            public boolean a(byte[] bArr, int i, int i2, long j) {
                ColorFormatChecker.this.g.add(bArr);
                Log.d("ColorFormatChecker", String.format("Encoder One Frame Received(Type:%d, Length:%d, Time:%d)", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j)}));
                return true;
            }

            public boolean a(byte[] bArr, byte[] bArr2) {
                if (ColorFormatChecker.this.f == null) {
                    ColorFormatChecker.this.f = MediaFormat.createVideoFormat("video/avc", 1280, 720);
                }
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                ByteBuffer wrap2 = ByteBuffer.wrap(bArr2);
                ColorFormatChecker.this.f.setByteBuffer("csd-0", wrap);
                ColorFormatChecker.this.f.setByteBuffer("csd-1", wrap2);
                Log.d("ColorFormatChecker", String.format("Encoder Frame config Received", new Object[0]));
                return true;
            }

            public boolean a(int i) {
                Log.d("ColorFormatChecker", "Receive flag from Encoder : " + a.a(i));
                if (i == 4) {
                    ColorFormatChecker.this.d = true;
                }
                return true;
            }
        });
        byte[] bArr = new byte[1382400];
        Arrays.fill(bArr, 0, 921600, (byte) 45);
        for (i = 0; i < 460800; i += 2) {
            bArr[921600 + i] = (byte) -44;
            bArr[(921600 + i) + 1] = (byte) -127;
        }
        long j2 = 0;
        for (i = 0; i < 5; i++) {
            this.b.a(bArr, j2);
            j2 += 30000;
        }
        while (!this.d) {
            this.b.a(null, j2);
        }
        try {
            this.b.a();
            this.b = null;
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (this.f != null) {
            byte[] bArr2;
            this.c = new b(this.f, null);
            this.c.a(new d() {
                public boolean a(int i, long j) {
                    return true;
                }

                public boolean a(byte[] bArr, int i, int i2, long j) {
                    if (ColorFormatChecker.this.h.size() <= 0) {
                        ColorFormatChecker.this.h.add(bArr);
                    }
                    Log.d("ColorFormatChecker", String.format("Decoder One Frame Received(Type:%d, Length:%d, Time:%d)", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j)}));
                    return true;
                }

                public boolean a(byte[] bArr, byte[] bArr2) {
                    return true;
                }

                public boolean a(int i) {
                    Log.d("ColorFormatChecker", "Receive flag from Decoder : " + a.a(i));
                    if (i == 4) {
                        ColorFormatChecker.this.e = true;
                        Log.d("ColorFormatChecker", "Decoder EOS received");
                    }
                    return true;
                }
            });
            while (this.g.size() > 0) {
                bArr2 = (byte[]) this.g.get(0);
                if (bArr2 != null) {
                    this.c.a(bArr2, j);
                    this.g.remove(0);
                    j += 30000;
                }
            }
            while (!this.e) {
                this.c.a((ByteBuffer) null, j);
            }
            try {
                this.c.a();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (this.h.size() > 0) {
                int c = this.c.c();
                int d = this.c.d();
                bArr2 = (byte[]) this.h.get(0);
                if (bArr2 != null) {
                    byte b = bArr[921600];
                    byte b2 = bArr[921601];
                    byte b3 = bArr[921602];
                    byte b4 = bArr[921603];
                    byte b5 = bArr2[c * d];
                    byte b6 = bArr2[(c * d) + 1];
                    byte b7 = bArr2[(c * d) + 2];
                    byte b8 = bArr2[(c * d) + 3];
                    if ((Math.abs(b4 - b8) + ((Math.abs(b - b5) + Math.abs(b2 - b6)) + Math.abs(b3 - b7))) / 4 > 10) {
                        return ColorFormat.NV21;
                    }
                    return ColorFormat.NV12;
                }
            }
        }
        return colorFormat;
    }
}
