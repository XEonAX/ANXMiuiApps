package com.nexstreaming.kminternal.nexvideoeditor;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.b;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.ErrorCode;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.PlayState;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.c;
import com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.d;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;

public class NexEditorEventListener {
    private static Bitmap n = null;
    private static String o = "";
    private NexEditor a = null;
    private c b = null;
    private Handler c = null;
    private PlayState d = null;
    private int e = 0;
    private boolean f = false;
    private AudioManager g;
    private c h;
    private LayerRenderer i = new LayerRenderer();
    private boolean j = false;
    private boolean k = true;
    private int l = 0;
    private ArrayList<a> m = new ArrayList();
    public AudioTrack mAudioTrack = null;
    public NexImageLoader mImage = null;

    private class a extends AsyncTask<String, Void, NexImage> {
        private String b;

        private a() {
        }

        /* synthetic */ a(NexEditorEventListener nexEditorEventListener, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a(String str) {
            this.b = str;
        }

        /* renamed from: a */
        protected NexImage doInBackground(String... strArr) {
            NexImage openThemeImage = NexEditorEventListener.this.mImage.openThemeImage(strArr[0]);
            if (openThemeImage == null) {
                return openThemeImage;
            }
            int width = openThemeImage.getWidth();
            int height = openThemeImage.getHeight();
            int loadedType = openThemeImage.getLoadedType();
            int[] iArr = new int[(width * height)];
            openThemeImage.getPixels(iArr);
            if (NexEditorEventListener.this.a != null) {
                NexEditorEventListener.this.a.a(strArr[0], iArr, width, height, loadedType);
            }
            return openThemeImage;
        }

        /* renamed from: a */
        protected void onPostExecute(NexImage nexImage) {
            NexEditorEventListener.this.m.remove(this);
            Log.d("NexEditorEventHandler", String.format("Done:image thread queue length:%d", new Object[]{Integer.valueOf(NexEditorEventListener.this.m.size())}));
        }

        /* renamed from: b */
        protected void onCancelled(NexImage nexImage) {
            if (NexEditorEventListener.this.a != null && this.b != null) {
                NexEditorEventListener.this.a.a(this.b);
            }
        }
    }

    public void setWatermark(boolean z) {
        a();
        this.k = z;
    }

    public void setSyncMode(boolean z) {
        this.j = z;
    }

    public synchronized void ignoreEventsUntilTag(int i) {
        if (!this.f) {
            this.f = true;
            this.e = i;
        } else if (this.e < i) {
            this.e = i;
        }
    }

    private synchronized void a(int i) {
        if (this.f && i >= this.e) {
            this.f = false;
        }
    }

    public NexEditorEventListener(NexEditor nexEditor, Context context, a aVar, d dVar) {
        Resources resources = null;
        if (context != null) {
            this.g = (AudioManager) context.getApplicationContext().getSystemService("audio");
        } else {
            this.g = null;
        }
        this.a = nexEditor;
        if (context != null) {
            resources = context.getResources();
        }
        this.mImage = new NexImageLoader(resources, aVar, dVar, nexEditor.f(), nexEditor.g(), nexEditor.h());
        this.c = new Handler(Looper.getMainLooper());
    }

    public void setContext(Context context) {
        this.mImage.setResources(context == null ? null : context.getApplicationContext().getResources());
        if (context != null) {
            this.g = (AudioManager) context.getApplicationContext().getSystemService("audio");
        } else {
            this.g = null;
        }
    }

    public void setUIListener(c cVar) {
        this.b = cVar;
        if (this.d != null) {
            this.b.a(PlayState.NONE, this.d);
        }
    }

    public int callbackCapture(int i, int i2, int i3, byte[] bArr) {
        final int i4 = i;
        final int i5 = i2;
        final int i6 = i3;
        final byte[] bArr2 = bArr;
        this.c.post(new Runnable() {
            public void run() {
                if (NexEditorEventListener.this.a != null) {
                    NexEditorEventListener.this.a.a(i4, i5, i6, bArr2, true);
                }
            }
        });
        return 0;
    }

    public int callbackThumb(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, byte[] bArr) {
        Log.d("NexEditorEventHandler", "callbackThumb start iMode=" + i + ", iTime=" + i3 + ", iWidth=" + i4 + ", iHeight=" + i5 + ", iSize=" + i8 + ", tag=" + i2);
        final int i9 = i;
        final int i10 = i3;
        final int i11 = i4;
        final int i12 = i5;
        final int i13 = i8;
        final byte[] bArr2 = bArr;
        final int i14 = i6;
        final int i15 = i7;
        final int i16 = i2;
        this.c.post(new Runnable() {
            public void run() {
                if (NexEditorEventListener.this.a != null) {
                    NexEditorEventListener.this.a.a(i9, i10, i11, i12, i13, bArr2, i14, i15, i16);
                }
            }
        });
        Log.d("NexEditorEventHandler", "salabara callbackThumb end");
        return 0;
    }

    public int callbackHighLightIndex(final int i, final int[] iArr) {
        Log.d("NexEditorEventHandler", "callbackHighLightIndex start iCount=" + i);
        this.c.post(new Runnable() {
            public void run() {
                if (NexEditorEventListener.this.a != null) {
                    NexEditorEventListener.this.a.a(i, iArr);
                }
            }
        });
        Log.d("NexEditorEventHandler", "callbackHighLightIndex end");
        return 0;
    }

    public int callbackHighLightIndexForVAS(final int i, final int[] iArr, final int[] iArr2) {
        Log.d("NexEditorEventHandler", "callbackHighLightIndexForVAS start iCount=" + i);
        this.c.post(new Runnable() {
            public void run() {
                if (NexEditorEventListener.this.a != null) {
                    NexEditorEventListener.this.a.a(i, iArr, iArr2);
                }
            }
        });
        Log.d("NexEditorEventHandler", "callbackHighLightIndexForVAS end");
        return 0;
    }

    public NexImage callbackGetThemeImage(String str, int i) {
        if (i != 1 && i != 3) {
            return this.mImage.openThemeImage(str);
        }
        if (i == 3) {
            Iterator it = this.m.iterator();
            while (it.hasNext()) {
                ((a) it.next()).cancel(false);
            }
            this.m.clear();
            Log.d("NexEditorEventHandler", String.format("CLEAR:image thread queue length:%d", new Object[]{Integer.valueOf(this.m.size())}));
        }
        a aVar = new a(this, null);
        aVar.a(str);
        this.m.add(aVar);
        Log.d("NexEditorEventHandler", String.format("NEW:image thread queue length:%d asyncmode:%d", new Object[]{Integer.valueOf(this.m.size()), Integer.valueOf(i)}));
        aVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{str});
        return null;
    }

    public int callbackCheckImageWorkDone() {
        return this.m.size();
    }

    public byte[] callbackGetThemeFile(String str) {
        String substring;
        if (str.contains(".force_effect/")) {
            str = str.replace(".force_effect/", "/");
        }
        int indexOf = str.indexOf(47);
        if (indexOf >= 0) {
            String substring2 = str.substring(0, indexOf);
            substring = str.substring(indexOf + 1);
            str = substring2;
        } else {
            substring = "";
        }
        return this.mImage.callbackReadAssetItemFile(str, substring);
    }

    public NexImage callbackGetThemeImageUsingResource(String str) {
        return this.mImage.openFile(str, 0);
    }

    public NexImage callbackGetImageUsingFile(String str, int i) {
        return this.mImage.openFile(str, i);
    }

    public NexImage callbackGetImageUsingText(String str) {
        return this.mImage.openFile(str, 0);
    }

    public void callbackReleaseImage() {
    }

    public AudioTrack callbackGetAudioTrack(int i, int i2) {
        int i3;
        Log.d("NexEditorEventHandler", String.format("callbackGetAudioTrack(SampleRate(%d) Channel(%d)", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        if (this.mAudioTrack != null) {
            this.mAudioTrack.release();
        }
        if (i2 != 1) {
            i3 = 3;
        } else {
            i3 = 2;
        }
        this.mAudioTrack = new AudioTrack(3, i, i3, 2, AudioTrack.getMinBufferSize(i, i3, 2), 1);
        return this.mAudioTrack;
    }

    public void callbackReleaseAudioTrack() {
        Log.d("NexEditorEventHandler", String.format("callbackReleaseAudioTrack", new Object[0]));
        if (this.mAudioTrack != null) {
            this.mAudioTrack.release();
            this.mAudioTrack = null;
        }
    }

    public AudioManager callbackGetAudioManager() {
        Log.d("NexEditorEventHandler", "callbackGetAudioManager " + this.g);
        return this.g;
    }

    private void a(PlayState playState, PlayState playState2) {
        if (this.d != playState2) {
            this.d = playState2;
            if (this.b != null) {
                this.b.a(playState, playState2);
            }
            if (playState2 == PlayState.IDLE) {
                this.a.l();
            }
            if (playState != null && playState != PlayState.NONE) {
                switch (playState2) {
                    case RUN:
                    case RECORD:
                        this.a.b(ErrorCode.NONE);
                        return;
                    default:
                        this.a.c(ErrorCode.NONE);
                        return;
                }
            }
        }
    }

    public int notifyEvent(int i, final int i2, final int i3, final int i4, int i5) {
        if (i == 18) {
            Log.d("NexEditorEventHandler", "REACHED MARKER " + i2);
            a(i2);
            this.c.post(new Runnable() {
                public void run() {
                    if (NexEditorEventListener.this.a != null) {
                        NexEditorEventListener.this.a.b(ErrorCode.NONE, i2);
                    }
                }
            });
        }
        if (!this.f) {
            final int i6;
            final int i7;
            final int i8;
            final int i9;
            switch (i) {
                case 0:
                    if (!this.j) {
                        this.c.post(new Runnable() {
                            public void run() {
                                PlayState fromValue = PlayState.fromValue(i2);
                                PlayState fromValue2 = PlayState.fromValue(i3);
                                if (fromValue2 == PlayState.RESUME) {
                                    fromValue2 = PlayState.RECORD;
                                }
                                NexEditorEventListener.this.a(fromValue, fromValue2);
                            }
                        });
                        break;
                    }
                    PlayState fromValue = PlayState.fromValue(i2);
                    PlayState fromValue2 = PlayState.fromValue(i3);
                    if (fromValue2 == PlayState.RESUME) {
                        fromValue2 = PlayState.RECORD;
                    }
                    a(fromValue, fromValue2);
                    break;
                case 1:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a == null || !NexEditorEventListener.this.a.e(i2)) {
                                if (NexEditorEventListener.this.b != null) {
                                    NexEditorEventListener.this.b.a(i2);
                                }
                                if (NexEditorEventListener.this.a != null) {
                                    NexEditorEventListener.this.a.k(i2);
                                }
                            }
                        }
                    });
                    break;
                case 5:
                    i6 = i2;
                    i7 = i3;
                    i8 = i4;
                    i9 = i5;
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.a(i6, i7, i8, i9);
                            }
                        }
                    });
                    break;
                case 6:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.a(i2, i3);
                            }
                        }
                    });
                    break;
                case 7:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.f(i2);
                            }
                        }
                    });
                    break;
                case 8:
                    break;
                case 10:
                    i6 = i3;
                    i7 = i4;
                    i8 = i5;
                    i9 = i2;
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                if (i6 == 1) {
                                    NexEditorEventListener.this.a.v();
                                } else {
                                    NexEditorEventListener.this.a.d(i7, i8);
                                }
                            }
                            if (NexEditorEventListener.this.b == null) {
                                return;
                            }
                            if (i6 == 1) {
                                NexEditorEventListener.this.b.a();
                            } else if (i9 != 0) {
                                NexEditorEventListener.this.b.a(ErrorCode.fromValue(i9));
                            } else {
                                NexEditorEventListener.this.b.b(i7);
                            }
                        }
                    });
                    break;
                case 11:
                    this.c.post(new Runnable() {
                        public void run() {
                            NexEditorEventListener.this.a.s();
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.b(ErrorCode.fromValue(i2));
                            }
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.a(ErrorCode.fromValue(i2), i3);
                            }
                        }
                    });
                    break;
                case 13:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a == null || !NexEditorEventListener.this.a.o()) {
                                if (NexEditorEventListener.this.b != null) {
                                    NexEditorEventListener.this.b.b(ErrorCode.NONE);
                                }
                                if (NexEditorEventListener.this.a != null) {
                                    NexEditorEventListener.this.a.d(ErrorCode.NONE);
                                }
                                NexEditorEventListener.this.a(NexEditorEventListener.this.d, PlayState.IDLE);
                                return;
                            }
                            NexEditorEventListener.this.a(NexEditorEventListener.this.d, PlayState.IDLE);
                        }
                    });
                    break;
                case 14:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a == null || !NexEditorEventListener.this.a.f(ErrorCode.fromValue(i2))) {
                                if (NexEditorEventListener.this.b != null) {
                                    NexEditorEventListener.this.b.b(ErrorCode.fromValue(i2));
                                }
                                if (NexEditorEventListener.this.a != null) {
                                    NexEditorEventListener.this.a.d(ErrorCode.fromValue(i2));
                                }
                                NexEditorEventListener.this.a(NexEditorEventListener.this.d, PlayState.IDLE);
                                return;
                            }
                            NexEditorEventListener.this.a(NexEditorEventListener.this.d, PlayState.IDLE);
                        }
                    });
                    break;
                case 17:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.b();
                            }
                            NexEditorEventListener.this.a(NexEditorEventListener.this.d, PlayState.IDLE);
                        }
                    });
                    break;
                case 19:
                    Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] VIDEO_STARTED ", new Object[0]));
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.n();
                            }
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.c();
                            }
                        }
                    });
                    break;
                case 20:
                    this.c.post(new Runnable() {
                        public void run() {
                            Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_GETCLIPINFO_DONE delivery p1=" + i2 + " p2=" + i3);
                            if (NexEditorEventListener.this.a != null) {
                                Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_GETCLIPINFO_DONE deliver to editor");
                                NexEditorEventListener.this.a.c(ErrorCode.fromValue(i2), i3);
                            }
                            if (NexEditorEventListener.this.b != null) {
                                Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_GETCLIPINFO_DONE deliver to UI listener");
                                NexEditorEventListener.this.b.d();
                            }
                        }
                    });
                    Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_GETCLIPINFO_DONE p1=" + i2, new Object[0]));
                    break;
                case 21:
                    Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_CAPTURE_DONE p1=" + i2, new Object[0]));
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.e(ErrorCode.fromValue(i2));
                            }
                        }
                    });
                    break;
                case 22:
                    Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_PREPARE_CLIP_LOADING p1=" + i2, new Object[0]));
                    break;
                case 23:
                    Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_TRANSCODING_DONE delivery p1=" + i2 + " p2=" + i3);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.a(ErrorCode.fromValue(i2), i3);
                            }
                        }
                    });
                    break;
                case 24:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.b(i2, i3, i4);
                            }
                        }
                    });
                    break;
                case 26:
                    Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_FAST_OPTION_PREVIEW_DONE");
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.a(ErrorCode.fromValue(i2));
                            }
                        }
                    });
                    break;
                case 27:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_MAKE_HIGHLIGHT_DONE errcode=" + i2);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.c(i2);
                            }
                        }
                    });
                    break;
                case 28:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_MAKE_HIGHLIGHT_PROGRESS_INDEX=" + i2 + ", p2=" + i3);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.a(i2, i3);
                            }
                        }
                    });
                    break;
                case 30:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_CHECK_DIRECT_EXPORT p1=" + i2);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.b(ErrorCode.fromValue(i2), i3);
                            }
                        }
                    });
                    break;
                case 31:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_DIRECT_EXPORT_DONE p1=" + i2);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.b(ErrorCode.fromValue(i2));
                            }
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.d(ErrorCode.fromValue(i2));
                            }
                            NexEditorEventListener.this.a(NexEditorEventListener.this.d, PlayState.IDLE);
                        }
                    });
                    break;
                case 32:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_DIRECT_EXPORT_PROGRESS=" + i2);
                    break;
                case 33:
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_GETCLIPINFO_STOP_DONE deliver to editor p1=" + i2 + ", p2=" + i3);
                                NexEditorEventListener.this.a.c(ErrorCode.GETCLIPINFO_USER_CANCEL, i3);
                            }
                            if (NexEditorEventListener.this.b != null) {
                                Log.d("NexEditorEventHandler", "VIDEOEDITOR_EVENT_GETCLIPINFO_STOP_DONE deliver to UI listener");
                                NexEditorEventListener.this.b.d();
                            }
                        }
                    });
                    Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_GETCLIPINFO_STOP_DONE p1=" + i2, new Object[0]));
                    break;
                case 35:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_FAST_PREVIEW_START_DONE p1= " + i2 + ", p2= " + i3 + ", p3: " + i4);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.a(ErrorCode.fromValue(i2), i3, i4);
                            }
                        }
                    });
                    break;
                case 36:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_FAST_PREVIEW_STOP_DONE p1= " + i2);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.d(ErrorCode.fromValue(i2));
                            }
                        }
                    });
                    break;
                case 37:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_FAST_PREVIEW_TIME_DONE p1= " + i2);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.e(ErrorCode.fromValue(i2));
                            }
                        }
                    });
                    break;
                case 38:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_HIGHLIGHT_THUMBNAIL_PROGRESS=" + i2 + ", p2=" + i3);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.a(i2, i3);
                            }
                        }
                    });
                    break;
                case 39:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_MAKE_REVERSE_DONE p1= " + i2 + ", p2= " + i3);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null && NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.c(ErrorCode.fromValue(i2));
                            }
                        }
                    });
                    break;
                case 40:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_MAKE_REVERSE_PROGRESS p1= " + i2 + ", p2= " + i3 + ", p3: " + i4);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.b(i2, 100);
                            }
                        }
                    });
                    break;
                case 41:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_MAKE_VAS_HIGHLIGHT_DONE errcode=" + i2);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.a != null) {
                                NexEditorEventListener.this.a.d(i2);
                            }
                        }
                    });
                    break;
                case 51:
                    Log.i("NexEditorEventHandler", "[nexEditorEventHandler.java] VIDEOEDITOR_EVENT_PREVIEW_PEAKMETER cts=" + i2 + ", value=" + i3);
                    this.c.post(new Runnable() {
                        public void run() {
                            if (NexEditorEventListener.this.b != null) {
                                NexEditorEventListener.this.b.c(i2, i3);
                            }
                        }
                    });
                    break;
                default:
                    Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] not implement event(%d) Param(%d %d %d %d) ", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)}));
                    break;
            }
        }
        Log.d("NexEditorEventHandler", "IGNORING EVENT iEventType=" + i + " (awaiting tag " + this.e + ")");
        return 0;
    }

    public int notifyError(int i, int i2, int i3, int i4) {
        Log.i("NexEditorEventHandler", String.format("[nexEditorEventHandler.java] event(%d) Param(%d %d) ", new Object[]{Integer.valueOf(i), Integer.valueOf(i3), Integer.valueOf(i4)}));
        return 0;
    }

    private void a() {
        if (this.l == 0) {
            try {
                InputStream open = com.nexstreaming.kminternal.kinemaster.config.a.a().b().getAssets().open(EditorGlobal.b());
                MessageDigest instance = MessageDigest.getInstance("SHA-256");
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    instance.update(bArr, 0, read);
                }
                open.close();
                if (Base64.encodeToString(instance.digest(), 0).startsWith("5i/mnZqgIegSRcn19oeAQavHHw9HeyJZugRi3/4ASTY=")) {
                    this.l = 2;
                    return;
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            this.l = 1;
        }
    }

    private void b() {
        if (this.l != 2) {
            this.i.a(-65281, 0.0f, 0.0f, this.i.a(), this.i.b());
            return;
        } else if (true == this.k) {
            String language = com.nexstreaming.kminternal.kinemaster.config.a.a().b().getResources().getConfiguration().locale.getLanguage();
            if (n == null || language != o) {
                o = language;
                new Options().inScaled = false;
                try {
                    InputStream open = com.nexstreaming.kminternal.kinemaster.config.a.a().b().getAssets().open(EditorGlobal.b());
                    n = BitmapFactory.decodeStream(open);
                    open.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (n != null) {
                float b = this.i.b() / 1080.0f;
                float a = 0.96484375f * this.i.a();
                float b2 = 0.048611112f * this.i.b();
                this.i.a(n, a - (((float) n.getWidth()) * b), b2, a, (((float) n.getHeight()) * b) + b2);
                return;
            }
            return;
        } else {
            return;
        }
    }

    public int callbackPrepareCustomLayer(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        if (this.h == null) {
            return 1;
        }
        this.i.d((i16 & 1) != 0);
        int a = NexEditor.a();
        int b = NexEditor.b();
        if (NexEditor.c() == 0) {
            if (i17 > i18) {
                a = Math.round((720.0f * ((float) i17)) / ((float) i18));
                b = 720;
            } else {
                a = 720;
                b = Math.round((720.0f * ((float) i18)) / ((float) i17));
            }
        }
        int d = this.a.d();
        NexEditor nexEditor = this.a;
        if (d == 1) {
            a *= 2;
        }
        this.i.a(a, b);
        this.i.b(i17, i18);
        this.i.a(i2);
        this.i.m();
        this.h.a(this.i);
        b();
        this.i.n();
        return 0;
    }

    public void setCustomRenderCallback(c cVar) {
        this.h = cVar;
    }

    public int getLutTextWithID(int i, int i2) {
        if (this.a == null) {
            Log.d("NexEditorEventHandler", "getLutTextWithID() engine is null");
            return 0;
        }
        b c = b.c();
        if (c == null) {
            Log.d("NexEditorEventHandler", "getLutTextWithID() getLookUpTable is null");
            return 0;
        }
        b.b a = c.a(i);
        if (a != null) {
            return this.i.a(a.b(), i2);
        }
        Log.d("NexEditorEventHandler", "getLutTextWithID() lut is null");
        return 0;
    }

    public int getVignetteTexID(int i) {
        b c = b.c();
        if (c == null) {
            Log.d("NexEditorEventHandler", "getVignetteTexID() getLookUpTable is null");
            return 0;
        }
        Log.d("NexEditorEventHandler", "getVignetteTexID() call... export_flag=" + i);
        return this.i.a(c.g(), i);
    }

    public String getAssetResourceKey(String str) {
        String substring = str.substring("[ThemeImage]".length());
        String str2 = "16v9";
        int indexOf = substring.indexOf(47);
        if (indexOf < 0) {
            return str;
        }
        String substring2 = substring.substring(0, indexOf);
        substring = substring.substring(indexOf + 1);
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).c(substring2);
        if (c == null) {
            return str;
        }
        if (substring2.contains("9v16")) {
            str2 = "9v16";
        } else if (substring2.contains("2v1")) {
            str2 = "2v1";
        } else if (substring2.contains("1v2")) {
            str2 = "1v2";
        } else if (substring2.contains("1v1")) {
            str2 = "1v1";
        } else if (substring2.contains("4v3")) {
            str2 = "4v3";
        } else if (substring2.contains("3v4")) {
            str2 = "3v4";
        }
        return "[ThemeImage]" + c.getAssetPackage().getAssetId() + "/" + str2 + "/" + substring;
    }
}
