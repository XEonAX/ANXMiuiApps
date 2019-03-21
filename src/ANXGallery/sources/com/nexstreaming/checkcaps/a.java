package com.nexstreaming.checkcaps;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.CodecException;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.view.Surface;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Checker */
public class a {
    private static String a = "CapChecker";
    private boolean b = false;
    private b c = null;
    private a d;
    private MediaCodec e = null;
    private BufferInfo f = null;
    private MediaFormat g = null;
    private ByteBuffer[] h = null;

    /* compiled from: Checker */
    public interface a {
        void a(a aVar, int i);

        void a(a aVar, String str);
    }

    /* compiled from: Checker */
    private static class b extends Thread {
        private a a = null;
        private AbstractMap<String, Object> b = null;

        private b(a aVar, AbstractMap<String, Object> abstractMap) {
            this.a = aVar;
            this.b = abstractMap;
        }

        public void run() {
            if (this.b != null) {
                switch (((Integer) this.b.get("command")).intValue()) {
                    case 1:
                        this.a.d.a(this.a, this.a.b(((Integer) this.b.get(nexExportFormat.TAG_FORMAT_WIDTH)).intValue(), ((Integer) this.b.get(nexExportFormat.TAG_FORMAT_HEIGHT)).intValue()));
                        return;
                    default:
                        return;
                }
            }
        }

        public static void a(a aVar, AbstractMap<String, Object> abstractMap) {
            new b(aVar, abstractMap).start();
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    private static int a(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        int i = 0;
        int i2 = 0;
        while (i < codecCount) {
            int i3;
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                for (String equalsIgnoreCase : supportedTypes) {
                    if (equalsIgnoreCase.equalsIgnoreCase(str)) {
                        i3 = i2 + 1;
                        break;
                    }
                }
                i3 = i2;
            } else {
                i3 = i2;
            }
            i++;
            i2 = i3;
        }
        return i2;
    }

    private static MediaCodecInfo[] b(String str) {
        int a = a(str);
        MediaCodecInfo[] mediaCodecInfoArr = new MediaCodecInfo[a];
        if (a == 0) {
            return mediaCodecInfoArr;
        }
        int codecCount = MediaCodecList.getCodecCount();
        int i = 0;
        int i2 = 0;
        while (i < codecCount) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                for (String equalsIgnoreCase : supportedTypes) {
                    if (equalsIgnoreCase.equalsIgnoreCase(str)) {
                        a = i2 + 1;
                        mediaCodecInfoArr[i2] = codecInfoAt;
                        break;
                    }
                }
                a = i2;
            } else {
                a = i2;
            }
            i++;
            i2 = a;
        }
        return mediaCodecInfoArr;
    }

    @TargetApi(21)
    private MediaCodec a(MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat, AtomicReference<Surface> atomicReference) {
        MediaCodec createByCodecName;
        int i;
        RuntimeException e;
        Object i2 = null;
        try {
            createByCodecName = MediaCodec.createByCodecName(mediaCodecInfo.getName());
        } catch (IOException e2) {
            e2.printStackTrace();
            i2 = 1;
            createByCodecName = null;
        }
        if (i2 != null) {
            return null;
        }
        try {
            createByCodecName.configure(mediaFormat, null, null, 1);
        } catch (CodecException e3) {
            i2 = 1;
        } catch (IllegalArgumentException e4) {
            e = e4;
            e.printStackTrace();
            i2 = 1;
        } catch (IllegalStateException e5) {
            e = e5;
            e.printStackTrace();
            i2 = 1;
        }
        if (i2 != null) {
            return null;
        }
        atomicReference.set(createByCodecName.createInputSurface());
        createByCodecName.start();
        return createByCodecName;
    }

    public a(boolean z) {
        this.b = z;
    }

    public void a(int i, int i2) {
        AbstractMap hashMap = new HashMap();
        hashMap.put("command", Integer.valueOf(1));
        hashMap.put(nexExportFormat.TAG_FORMAT_WIDTH, Integer.valueOf(i));
        hashMap.put(nexExportFormat.TAG_FORMAT_HEIGHT, Integer.valueOf(i2));
        b.a(this, hashMap);
    }

    @TargetApi(18)
    private int b(int i, int i2) {
        MediaCodecInfo[] b = b("video/avc");
        if (this.d != null) {
            this.d.a(this, "The count of 'video/avc' Encoder : " + b.length);
            for (int i3 = 0; i3 < b.length; i3++) {
                this.d.a(this, i3 + " th encoder's name is '" + b[i3].getName() + "'");
            }
        }
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        createVideoFormat.setInteger("color-format", 2130708361);
        createVideoFormat.setInteger("bitrate", 3000000);
        createVideoFormat.setInteger("frame-rate", 30);
        createVideoFormat.setInteger("i-frame-interval", 2);
        if (this.d != null) {
            this.d.a(this, "Video Format of Encoder : " + createVideoFormat);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.e = a(b[0], createVideoFormat, atomicReference);
        if (this.e == null) {
            return -1;
        }
        this.c = new b((Surface) atomicReference.get());
        this.c.b();
        this.e.stop();
        this.e.release();
        this.e = null;
        this.c.a();
        this.c = null;
        return 0;
    }
}
