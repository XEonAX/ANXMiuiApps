package com.nexstreaming.kminternal.kinemaster.mediainfo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseArray;
import com.google.gson_nex.Gson;
import com.google.gson_nex.JsonIOException;
import com.google.gson_nex.JsonSyntaxException;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.app.common.task.ResultTask;
import com.nexstreaming.app.common.task.ResultTask.OnResultAvailableListener;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.OnFailListener;
import com.nexstreaming.app.common.task.Task.OnTaskEventListener;
import com.nexstreaming.app.common.task.Task.TaskError;
import com.nexstreaming.app.common.util.FileType;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.kinemaster.config.ExclusionList;
import com.nexstreaming.kminternal.kinemaster.config.NexEditorDeviceProfile;
import com.nexstreaming.kminternal.nexvideoeditor.NexClipInfo;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.ErrorCode;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.h;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.j;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.k;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor.m;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class MediaInfo {
    private static Deque<c<h, f>> B = new ArrayDeque();
    private static int C = 0;
    private static Deque<c<b, Void>> D = new ArrayDeque();
    private static Task E = null;
    private static SparseArray<c<?, ?>> F = new SparseArray();
    private static boolean G = false;
    private static boolean H = false;
    private static Object I = new Object();
    private static k J = new k() {
        public void a(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, int i8) {
            c cVar = (c) MediaInfo.F.get(i8);
            Log.d("MediaInfo", "sThumbDoneListener onGetThumbDoneListener : tag=" + i8);
            if (cVar != null) {
                Log.d("MediaInfo", "sThumbDoneListener NOTIFY TASK!");
                cVar.a(i, i2, i3, i4, i5, bArr, i6, i7);
            }
        }
    };
    private static j K = new j() {
        public void a(ErrorCode errorCode, int i) {
            c cVar = (c) MediaInfo.F.get(i);
            Log.d("MediaInfo", "sClipInfoDoneListener onGetClipInfoDone : tag=" + i + " resultCode=" + errorCode);
            if (cVar != null) {
                Log.d("MediaInfo", "sClipInfoDoneListener NOTIFY TASK!");
                cVar.a(errorCode);
            }
        }
    };
    private static h L = new h() {
        public void a() {
            Log.d("MediaInfo", "sOnEditorDestroyedListener onEditorDestroyed");
            for (int i = 0; i < MediaInfo.F.size(); i++) {
                ((c) MediaInfo.F.valueAt(i)).sendFailure(ErrorCode.EDITOR_INSTANCE_DESTROYED);
            }
            MediaInfo.F = new SparseArray();
            MediaInfo.B = new ArrayDeque();
            MediaInfo.C = 0;
        }
    };
    private static m M = new m() {
        public void a() {
            Log.d("MediaInfo", "sIdleListener onIdle!");
            MediaInfo.R();
            MediaInfo.S();
        }
    };
    private static Map<String, WeakReference<MediaInfo>> a = null;
    private static ExclusionList b;
    private static Executor v = Executors.newSingleThreadExecutor();
    private static Executor w = Executors.newSingleThreadExecutor();
    private static File y;
    private static File z;
    private boolean A = true;
    private String c;
    private int d = -1;
    private File e;
    private File f;
    private File g;
    private File h;
    private File i;
    private File j;
    private File k;
    private File l;
    private String m;
    private ErrorCode n = ErrorCode.NONE;
    private c<h, f> o = null;
    private c<b, Void> p = null;
    private ResultTask<Bitmap> q = null;
    private ResultTask<Bitmap> r = null;
    private ResultTask<int[]> s = null;
    private AsyncTask<String, Integer, int[]> t = null;
    private b u;
    private boolean x;

    private interface e {
        void a(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7);
    }

    private interface d<RESULT_TYPE, PARAM_TYPE> {
        void a(c<RESULT_TYPE, PARAM_TYPE> cVar, ErrorCode errorCode);
    }

    public enum MediaInfoError implements TaskError {
        PCMLevelsNotAvailable,
        SeekPointsNotAvailable,
        ThumbnailsNotAvailable,
        LargeStartThumbnailNotAvailable,
        LargeEndThumbnailNotAvailable;

        public Exception getException() {
            return null;
        }

        public String getMessage() {
            return name();
        }

        public String getLocalizedMessage(Context context) {
            return name();
        }
    }

    private static class a {
        final int a;
        final int b;
        final int[] c;
        final Bitmap d;

        a(int i, int i2, int[] iArr, Bitmap bitmap) {
            this.a = i;
            this.b = i2;
            this.c = iArr;
            this.d = bitmap;
        }
    }

    private static class b {
        public int a;
        public String b;
        public long c;
        public boolean d;
        public boolean e;
        public boolean f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public int z;

        private b() {
        }

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private static class c<RESULT_TYPE, PARAM_TYPE> extends ResultTask<RESULT_TYPE> {
        int a = 3;
        boolean b = false;
        private final MediaInfo c;
        private final d<RESULT_TYPE, PARAM_TYPE> d;
        private final e e;
        private final PARAM_TYPE f;

        public c(MediaInfo mediaInfo, PARAM_TYPE param_type, d<RESULT_TYPE, PARAM_TYPE> dVar) {
            this.d = dVar;
            this.e = null;
            this.c = mediaInfo;
            this.f = param_type;
            Log.d("MediaInfo", "MediaInfoTask : add to active tasks; tag=" + getTaskId());
            MediaInfo.F.put(getTaskId(), this);
        }

        public c(MediaInfo mediaInfo, PARAM_TYPE param_type, d<RESULT_TYPE, PARAM_TYPE> dVar, e eVar) {
            this.d = dVar;
            this.e = eVar;
            this.c = mediaInfo;
            this.f = param_type;
            Log.d("MediaInfo", "MediaInfoTask : add to active tasks; thumb tag=" + getTaskId());
            MediaInfo.F.put(getTaskId(), this);
        }

        private PARAM_TYPE a() {
            return this.f;
        }

        public void sendResult(RESULT_TYPE result_type) {
            Log.d("MediaInfo", "MediaInfoTask::sendResult : remove from active tasks; tag=" + getTaskId());
            if (MediaInfo.F.get(getTaskId()) != this) {
                Log.d("MediaInfo", "MediaInfoTask::sendResult : NOT THIS; tag=" + getTaskId());
                return;
            }
            MediaInfo.F.remove(getTaskId());
            Log.d("MediaInfo", "MediaInfoTask::sendResult : tag=" + getTaskId() + " sActiveTasks.size()=" + MediaInfo.F.size());
            if (MediaInfo.F.size() == 0 && MediaInfo.E != null) {
                Log.d("MediaInfo", "MediaInfoTask::sendResult : tag=" + getTaskId() + " mWaitNotBusyTask.signalEvent(COMPLETE)");
                MediaInfo.E.signalEvent(Event.COMPLETE);
            }
            super.sendResult(result_type);
        }

        public void sendFailure(TaskError taskError) {
            Log.d("MediaInfo", "MediaInfoTask::sendFailure : remove from active tasks; tag=" + getTaskId());
            if (MediaInfo.F.get(getTaskId()) != this) {
                Log.d("MediaInfo", "MediaInfoTask::sendFailure : NOT THIS; tag=" + getTaskId());
                return;
            }
            super.sendFailure(taskError);
            MediaInfo.F.remove(getTaskId());
            Log.d("MediaInfo", "MediaInfoTask::sendFailure : tag=" + getTaskId() + " sActiveTasks.size()=" + MediaInfo.F.size());
            if (MediaInfo.F.size() == 0 && MediaInfo.E != null) {
                Log.d("MediaInfo", "MediaInfoTask::sendFailure : tag=" + getTaskId() + " mWaitNotBusyTask.signalEvent(COMPLETE)");
                MediaInfo.E.signalEvent(Event.COMPLETE);
            }
        }

        private void a(ErrorCode errorCode) {
            if (MediaInfo.F.get(getTaskId()) == this && this.d != null) {
                this.d.a(this, errorCode);
            }
        }

        private void a(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7) {
            if (MediaInfo.F.get(getTaskId()) == this && this.e != null) {
                this.e.a(i, i2, i3, i4, i5, bArr, i6, i7);
            }
        }
    }

    private static class f {
        public final String a;
        public final File b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int[] i;

        protected f(String str, File file, int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = str;
            this.b = file;
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
            this.g = i5;
            this.h = i6;
            this.i = null;
        }

        protected f(String str, File file, int i, int i2, int[] iArr, int i3) {
            this.a = str;
            this.b = file;
            this.c = i;
            this.d = i2;
            this.e = 0;
            this.f = 0;
            this.g = iArr.length;
            this.h = i3;
            this.i = iArr;
        }
    }

    private static int b(String str) {
        if (str == null) {
            return -1;
        }
        if (str.startsWith("nexasset://")) {
            return 1;
        }
        return 0;
    }

    public static void a(File file) {
        z = file;
    }

    public static void a(Context context) {
        y = context.getApplicationContext().getCacheDir();
    }

    public static MediaInfo a(String str) {
        if (str == null) {
            return null;
        }
        return a(str, true);
    }

    public static MediaInfo a(String str, boolean z) {
        if (str == null) {
            return null;
        }
        Object absolutePath;
        MediaInfo mediaInfo;
        Log.d("MediaInfo", "getInfo(" + str + ")");
        if (a == null) {
            Log.d("MediaInfo", "getInfo : init cache");
            a = new HashMap();
        }
        if (b == null) {
            Log.d("MediaInfo", "getInfo : init exclusion list");
            b = ExclusionList.exclusionListBackedBy(new File(new File(y, ".km_mediainfo"), "mediainfo_exclude.dat"));
        }
        int b = b(str);
        if (b == 0) {
            absolutePath = new File(str).getAbsolutePath();
        } else {
            String absolutePath2 = str;
        }
        if (z) {
            WeakReference weakReference = (WeakReference) a.get(absolutePath2);
            if (weakReference != null) {
                mediaInfo = (MediaInfo) weakReference.get();
                if (mediaInfo != null) {
                    Log.d("MediaInfo", "getInfo(" + str + ") using cache. duration=" + mediaInfo.p());
                    return mediaInfo;
                }
            }
        }
        if (b == 1) {
            z = false;
        }
        mediaInfo = new MediaInfo(str, b, z);
        if (mediaInfo.n == ErrorCode.NO_INSTANCE_AVAILABLE) {
            return mediaInfo;
        }
        Log.d("MediaInfo", "getInfo(" + str + ") adding to cache duration=" + mediaInfo.p());
        a.put(absolutePath2, new WeakReference(mediaInfo));
        return mediaInfo;
    }

    private void M() {
        if (this.d != 0) {
            this.u = new b();
            this.u.a = 9;
            return;
        }
        File file = new File(this.c);
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        this.u = new b();
        this.u.a = 9;
        this.u.b = file.getAbsolutePath();
        this.u.d = false;
        this.u.e = false;
        this.u.f = true;
        this.u.k = 0;
        this.u.l = 0;
        this.u.c = file.length();
        this.u.g = options.outWidth;
        this.u.h = options.outHeight;
        this.u.m = 0;
        this.u.n = 0;
        this.u.o = 0;
        this.u.p = 0;
        this.u.q = 0;
        this.u.w = 0;
        this.u.x = 0;
        this.u.y = 0;
        this.u.z = 0;
        this.x = false;
        this.n = ErrorCode.NONE;
    }

    private long N() {
        if (this.d == 0) {
            return new File(this.c).length();
        }
        if (this.d == 1) {
            return (long) Integer.parseInt(this.c.substring(this.c.lastIndexOf(58) + 1));
        }
        return 0;
    }

    private MediaInfo(String str, int i, boolean z) {
        String b;
        Gson gson;
        b bVar;
        boolean z2 = true;
        this.c = str;
        this.d = i;
        if (i == 0) {
            FileType fromFile = FileType.fromFile(str);
            if (fromFile != null && fromFile.isImage()) {
                if (fromFile.isSupportedFormat()) {
                    M();
                    return;
                } else {
                    this.x = true;
                    return;
                }
            }
        }
        File file = new File(y, ".km_mediainfo");
        file.mkdirs();
        String format = String.format(Locale.US, "none_%08X", new Object[]{Integer.valueOf(str.hashCode())});
        if (i == 0) {
            b = b(new File(str));
        } else if (i == 1) {
            b = c(str);
        } else {
            b = format;
        }
        Log.d("MediaInfo", "mediaInfoDir=" + file);
        this.e = new File(file, b + "_info.dat");
        this.f = new File(file, b + "_seek.dat");
        this.g = new File(file, b + "_vthumb.dat");
        this.h = new File(file, b + "_vthumb_large.dat");
        this.i = new File(file, b + "_vthumb_large_end.dat");
        this.j = new File(file, b + "_vthumb_raw.dat");
        this.k = new File(file, b + "_pcm.dat");
        this.l = file;
        this.m = b;
        this.A = z;
        if (z && this.e.exists()) {
            Log.d("MediaInfo", "getInfo(" + str + ") info file exists -> attemptng to read");
            if (null == null) {
                gson = new Gson();
            } else {
                gson = null;
            }
            Reader bufferedReader;
            try {
                bufferedReader = new BufferedReader(new FileReader(this.e));
                bVar = (b) gson.fromJson(bufferedReader, b.class);
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                } catch (JsonSyntaxException e2) {
                } catch (JsonIOException e3) {
                }
            } catch (IOException e4) {
                bVar = null;
            } catch (JsonSyntaxException e5) {
                bVar = null;
            } catch (JsonIOException e6) {
                bVar = null;
            } catch (Throwable th) {
                bufferedReader.close();
            }
            if (bVar != null && bVar.a == 9) {
                Log.d("MediaInfo", "getInfo(" + str + ") info from disk cache");
                this.u = bVar;
                return;
            }
        }
        gson = null;
        if (b == null || !b.isExcluded(b)) {
            NexClipInfo nexClipInfo = new NexClipInfo();
            NexEditor Q = Q();
            if (Q == null) {
                this.n = ErrorCode.NO_INSTANCE_AVAILABLE;
                Log.d("MediaInfo", "getInfo(" + str + ") failure:" + this.n);
                return;
            }
            b.add(b);
            Log.d("MediaInfo", "getInfo(" + str + ") call editor for info");
            this.n = Q.a(str, nexClipInfo, false, 0);
            Log.d("MediaInfo", "getInfo(" + str + ") returned from editor");
            b.remove(b);
            this.u = new b();
            if (this.n != ErrorCode.NONE) {
                Log.d("MediaInfo", "getInfo(" + str + ") failure:" + this.n);
                return;
            }
            this.u.a = 9;
            this.u.b = str;
            this.u.d = nexClipInfo.mExistAudio != 0;
            bVar = this.u;
            if (nexClipInfo.mExistVideo == 0) {
                z2 = false;
            }
            bVar.e = z2;
            this.u.f = false;
            this.u.k = nexClipInfo.mAudioDuration;
            this.u.l = nexClipInfo.mVideoDuration;
            this.u.c = N();
            this.u.g = nexClipInfo.mVideoWidth;
            this.u.h = nexClipInfo.mVideoHeight;
            this.u.i = nexClipInfo.mDisplayVideoWidth;
            this.u.j = nexClipInfo.mDisplayVideoHeight;
            this.u.m = nexClipInfo.mSeekPointCount;
            this.u.n = nexClipInfo.mFPS;
            this.u.o = nexClipInfo.mVideoH264Profile;
            this.u.p = nexClipInfo.mVideoH264Level;
            this.u.q = nexClipInfo.mVideoH264Interlaced;
            this.u.v = nexClipInfo.mVideoOrientation;
            this.u.r = nexClipInfo.mVideoBitRate;
            this.u.s = nexClipInfo.mAudioBitRate;
            this.u.t = nexClipInfo.mAudioSampleRate;
            this.u.u = nexClipInfo.mAudioChannels;
            this.u.w = nexClipInfo.mVideoRenderType;
            this.u.x = nexClipInfo.mVideoCodecType;
            this.u.y = nexClipInfo.mAudioCodecType;
            this.u.z = nexClipInfo.mVideoHDRType;
            if (z) {
                if (gson == null) {
                    gson = new Gson();
                }
                Log.d("MediaInfo", "getInfo(" + str + ") writing:" + this.e);
                Appendable bufferedWriter;
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(this.e));
                    gson.toJson(this.u, bufferedWriter);
                    bufferedWriter.close();
                    this.e.setReadable(true);
                } catch (IOException e7) {
                    e7.printStackTrace();
                } catch (Throwable th2) {
                    bufferedWriter.close();
                    this.e.setReadable(true);
                }
            }
            Log.d("MediaInfo", "getInfo(" + str + ") out");
            return;
        }
        Log.d("MediaInfo", "getInfo(" + str + ") skip due to exclusion");
        this.x = true;
    }

    private static String c(String str) {
        String substring = str.substring(11);
        substring.replace(':', '_');
        return "nexasset_" + substring;
    }

    private static String b(File file) {
        String name = file.getName();
        int hashCode = file.getAbsolutePath().hashCode();
        long lastModified = file.lastModified();
        long length = file.length();
        if (name.length() > 32) {
            name = name.substring(0, 32);
        }
        hashCode = (int) ((((lastModified * 212501089) + (length * 194851861)) + ((long) hashCode)) % 268435455);
        return name + "_" + String.format(Locale.US, "%08X", new Object[]{Integer.valueOf(hashCode)});
    }

    private Task O() {
        final Task task = new Task();
        new File(y, ".km_mediainfo").mkdirs();
        new f(this.j, this.g, this.h, this.i) {
            protected void a() {
                MediaInfo.this.j.delete();
                task.signalEvent(Event.SUCCESS, Event.COMPLETE);
            }

            protected void a(TaskError taskError) {
                MediaInfo.this.j.delete();
                task.sendFailure(taskError);
            }
        }.executeOnExecutor(v, new Integer[]{Integer.valueOf(0)});
        return task;
    }

    public static boolean a() {
        NexEditor Q = Q();
        if (Q == null) {
            return false;
        }
        c cVar;
        Log.d("MediaInfo", "cancelAllGetThumbnails : Pending size=" + B.size());
        Log.d("MediaInfo", "cancelAllGetThumbnails : Active size=" + F.size());
        for (int i = 0; i < F.size(); i++) {
            cVar = (c) F.valueAt(i);
            cVar.a = 0;
            cVar.b = true;
        }
        for (c cVar2 : B) {
            Log.d("MediaInfo", "cancelAllGetThumbnails : id=" + cVar2.getTaskId());
            cVar2.a = 0;
            cVar2.b = true;
        }
        Q.l(0);
        return true;
    }

    public Task a(int i, int i2, int i3, int i4, final int i5, int i6, int[] iArr, c cVar) {
        Object fVar;
        C++;
        File file = this.l;
        if (z != null) {
            file = z;
            Log.d("MediaInfo", "getDetailThumbnails::temp cache dir=" + file.getAbsolutePath());
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        final File file2 = new File(file, this.m + "_detail_" + i + "_" + i2 + "_" + i3 + "_" + i4 + "_" + i5 + "_" + C);
        if (iArr != null) {
            fVar = new f(this.c, file2, i, i2, iArr, i6);
        } else {
            fVar = new f(this.c, file2, i, i2, i3, i4, i5, i6);
        }
        final c cVar2 = cVar;
        d anonymousClass9 = new d<h, f>() {
            public void a(final c<h, f> cVar, ErrorCode errorCode) {
                if (errorCode == ErrorCode.NONE) {
                    MediaInfo.S();
                    if ((((f) cVar.a()).h & nexEngine.ExportHEVCMainTierLevel52) == nexEngine.ExportHEVCMainTierLevel52) {
                        Log.d("MediaInfo", "getDetailThumbnails::onEditorAsyncDone() no cache mode");
                        cVar.signalEvent(Event.SUCCESS, Event.COMPLETE);
                        cVar.sendResult(a.a());
                        return;
                    }
                    Log.d("MediaInfo", "getDetailThumbnails::onEditorAsyncDone(" + MediaInfo.this.c + ") -> " + file2);
                    new AsyncTask<Void, Void, Void>() {
                        TaskError a = null;

                        /* renamed from: a */
                        protected Void doInBackground(Void... voidArr) {
                            if (i5 == 0) {
                                this.a = g.a(file2, 50, cVar2);
                            } else {
                                this.a = g.a(file2, i5, cVar2);
                            }
                            file2.delete();
                            return null;
                        }

                        /* renamed from: a */
                        protected void onPostExecute(Void voidR) {
                            if (this.a != null) {
                                cVar.sendFailure(this.a);
                                return;
                            }
                            cVar.signalEvent(Event.SUCCESS, Event.COMPLETE);
                            cVar.sendResult(a.a());
                        }
                    }.executeOnExecutor(MediaInfo.v, new Void[0]);
                } else if (cVar.b) {
                    Log.d("MediaInfo", "getDetailThumbnails::onEditorAsyncDone : User Cancel ID=" + cVar.getTaskId());
                    cVar.a = 0;
                    file2.delete();
                    cVar.sendFailure(ErrorCode.GETCLIPINFO_USER_CANCEL);
                    MediaInfo.S();
                } else {
                    cVar.a--;
                    if (cVar2 instanceof e) {
                        cVar.a = 0;
                        Log.d("MediaInfo", "getDetailThumbnails::Raw File. No RETRYING=" + errorCode + ", ID=" + cVar.getTaskId());
                    }
                    if (cVar.a > 0) {
                        Log.d("MediaInfo", "getDetailThumbnails::onEditorAsyncDone : RETRYING=" + errorCode + ", ID=" + cVar.getTaskId());
                        file2.delete();
                        if (errorCode == ErrorCode.GETCLIPINFO_USER_CANCEL || cVar.b) {
                            cVar.a = 0;
                            cVar.sendFailure(ErrorCode.GETCLIPINFO_USER_CANCEL);
                            MediaInfo.S();
                            return;
                        }
                        MediaInfo.B.add(cVar);
                        if (errorCode != ErrorCode.INPROGRESS_GETCLIPINFO) {
                            MediaInfo.S();
                            return;
                        }
                        return;
                    }
                    Log.d("MediaInfo", "getDetailThumbnails::onEditorAsyncDone : SEND FAILURE=" + errorCode + ", cancel=" + cVar.b);
                    if (errorCode == ErrorCode.GETCLIPINFO_USER_CANCEL || cVar.b) {
                        cVar.a = 0;
                    }
                    file2.delete();
                    cVar.sendFailure(errorCode);
                    MediaInfo.S();
                }
            }
        };
        cVar2 = cVar;
        Task cVar3 = new c(this, fVar, anonymousClass9, new e() {
            public void a(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7) {
                if (i != 1) {
                    Log.d("MediaInfo", "getDetailThumbnails::onThumbDone() not video. mode=" + i);
                    return;
                }
                try {
                    g.a(bArr, i2, i3, i4, (i5 / (i3 * i4)) * 8, i6 - 1, i7, cVar2);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });
        fVar = (Q() == null || !B.isEmpty()) ? null : 1;
        B.add(cVar3);
        if (fVar != null) {
            S();
        }
        return cVar3;
    }

    public ResultTask<h> b() {
        if (this.g == null && this.j == null) {
            return ResultTask.failedResultTask(MediaInfoError.ThumbnailsNotAvailable);
        }
        Log.d("MediaInfo", "getThumbnails(" + this.c + ") sPendingThumbnailTasks=" + B.size());
        if (this.o == null || this.o.didSignalEvent(Event.FAIL)) {
            this.o = new c(this, new f(this.c, this.j, 640, 360, 0, r(), 30, 0), new d<h, f>() {
                public void a(c<h, f> cVar, ErrorCode errorCode) {
                    Log.d("MediaInfo", "getThumbnails::onEditorAsyncDone(" + MediaInfo.this.c + ") resultCode=" + errorCode + " retry=" + cVar.a);
                    if (errorCode != ErrorCode.NONE) {
                        cVar.a--;
                        if (cVar.a > 0) {
                            Log.d("MediaInfo", "getThumbnails::onEditorAsyncDone : RETRYING ID=" + cVar.getTaskId());
                            MediaInfo.B.add(cVar);
                            if (MediaInfo.B.size() <= 1 && errorCode != ErrorCode.INPROGRESS_GETCLIPINFO) {
                                MediaInfo.S();
                                return;
                            }
                            return;
                        }
                        Log.d("MediaInfo", "getThumbnails::onEditorAsyncDone : SEND FAILURE");
                        MediaInfo.this.o.sendFailure(errorCode);
                        return;
                    }
                    MediaInfo.S();
                    Log.d("MediaInfo", "getThumbnails::onEditorAsyncDone(" + MediaInfo.this.c + ") Start JPEG Conversion");
                    MediaInfo.this.O().onComplete(new OnTaskEventListener() {
                        public void onTaskEvent(Task task, Event event) {
                            MediaInfo.this.c(MediaInfo.this.g).onResultAvailable(new OnResultAvailableListener<a>() {
                                /* renamed from: a */
                                public void onResultAvailable(ResultTask<a> resultTask, Event event, a aVar) {
                                    if (aVar != null) {
                                        MediaInfo.this.o.sendResult(new i(aVar.d, aVar.a, aVar.b, aVar.c));
                                    } else {
                                        MediaInfo.this.o.sendFailure(null);
                                    }
                                }
                            });
                        }
                    }).onFailure(new OnFailListener() {
                        public void onFail(Task task, Event event, TaskError taskError) {
                            MediaInfo.this.o.sendFailure(null);
                        }
                    });
                }
            });
            c(this.g).onResultAvailable(new OnResultAvailableListener<a>() {
                /* renamed from: a */
                public void onResultAvailable(ResultTask<a> resultTask, Event event, a aVar) {
                    if (aVar == null || aVar.d == null || aVar.a <= 0 || aVar.b <= 0 || aVar.c == null) {
                        Object obj = (MediaInfo.Q() == null || !MediaInfo.B.isEmpty()) ? null : 1;
                        MediaInfo.B.add(MediaInfo.this.o);
                        if (obj != null) {
                            MediaInfo.S();
                            return;
                        }
                        return;
                    }
                    MediaInfo.this.o.sendResult(new i(aVar.d, aVar.a, aVar.b, aVar.c));
                }
            });
            Log.d("MediaInfo", "getThumbnails(" + this.c + ") returning NEW task");
            return this.o;
        }
        Log.d("MediaInfo", "getThumbnails(" + this.c + ") returning existing task");
        return this.o;
    }

    private ResultTask<a> c(File file) {
        final ResultTask<a> resultTask = new ResultTask();
        new AsyncTask<File, Integer, a>() {
            /* renamed from: a */
            protected a doInBackground(File... fileArr) {
                try {
                    return a(fileArr[0]);
                } catch (IOException e) {
                    e.printStackTrace();
                    return null;
                }
            }

            private a a(File file) throws IOException {
                InputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file)));
                int readInt = dataInputStream.readInt();
                int readInt2 = dataInputStream.readInt();
                int readInt3 = dataInputStream.readInt();
                int[] iArr = new int[readInt3];
                for (int i = 0; i < readInt3; i++) {
                    iArr[i] = dataInputStream.readInt();
                }
                return new a(readInt, readInt2, iArr, BitmapFactory.decodeStream(dataInputStream));
            }

            /* renamed from: a */
            protected void onPostExecute(a aVar) {
                resultTask.setResult(aVar);
                resultTask.signalEvent(Event.RESULT_AVAILABLE, Event.SUCCESS, Event.COMPLETE);
            }
        }.executeOnExecutor(w, new File[]{file});
        return resultTask;
    }

    private ResultTask<b> P() {
        final ResultTask<b> resultTask = new ResultTask();
        new AsyncTask<MediaInfo, Integer, b>() {
            /* renamed from: a */
            protected b doInBackground(MediaInfo... mediaInfoArr) {
                MediaInfo mediaInfo = mediaInfoArr[0];
                if (mediaInfo.k.exists()) {
                    int min = (int) Math.min(mediaInfo.k.length(), 204800);
                    InputStream fileInputStream;
                    try {
                        byte[] bArr = new byte[min];
                        fileInputStream = new FileInputStream(MediaInfo.this.k);
                        int read = fileInputStream.read(bArr);
                        fileInputStream.close();
                        if (read >= min) {
                            return new b(bArr);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    } catch (Throwable th) {
                        fileInputStream.close();
                    }
                }
                return null;
            }

            /* renamed from: a */
            protected void onPostExecute(b bVar) {
                resultTask.setResult(bVar);
                resultTask.signalEvent(Event.RESULT_AVAILABLE, Event.SUCCESS, Event.COMPLETE);
            }
        }.executeOnExecutor(w, new MediaInfo[]{this});
        return resultTask;
    }

    public ResultTask<b> c() {
        if (this.k == null) {
            return ResultTask.failedResultTask(MediaInfoError.PCMLevelsNotAvailable);
        }
        if (this.p != null && !this.p.didSignalEvent(Event.FAIL)) {
            return this.p;
        }
        this.p = new c(this, null, new d<b, Void>() {
            public void a(final c<b, Void> cVar, ErrorCode errorCode) {
                if (errorCode == ErrorCode.INVALID_STATE) {
                    MediaInfo.D.add(cVar);
                    return;
                }
                MediaInfo.R();
                cVar.c.P().onResultAvailable(new OnResultAvailableListener<b>() {
                    /* renamed from: a */
                    public void onResultAvailable(ResultTask<b> resultTask, Event event, b bVar) {
                        if (bVar != null) {
                            cVar.sendResult(bVar);
                        } else {
                            cVar.sendFailure(null);
                        }
                    }
                });
            }
        });
        P().onResultAvailable(new OnResultAvailableListener<b>() {
            /* renamed from: a */
            public void onResultAvailable(ResultTask<b> resultTask, Event event, b bVar) {
                if (bVar != null) {
                    MediaInfo.this.p.sendResult(bVar);
                    return;
                }
                NexEditor H = MediaInfo.Q();
                if (H == null || !MediaInfo.D.isEmpty()) {
                    MediaInfo.D.add(MediaInfo.this.p);
                } else {
                    H.a(MediaInfo.this.c, MediaInfo.this.k, MediaInfo.this.p.getTaskId());
                }
            }
        });
        return this.p;
    }

    public int[] d() {
        if (this.t == null) {
            e();
            if (this.t == null) {
                throw new IllegalStateException();
            }
        }
        try {
            return (int[]) this.t.get();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public ErrorCode a(boolean z, boolean z2) {
        NexEditor Q = Q();
        if (Q == null) {
            return ErrorCode.GENERAL;
        }
        int i;
        if (z) {
            i = 256;
        } else {
            i = 0;
        }
        if (z2) {
            i |= 16;
        }
        return Q.a(this.c, new NexClipInfo(), i, 0);
    }

    public ResultTask<int[]> e() {
        if (this.f == null) {
            return ResultTask.failedResultTask(MediaInfoError.SeekPointsNotAvailable);
        }
        if (this.s != null && !this.s.didSignalEvent(Event.FAIL)) {
            return this.s;
        }
        Log.d("MediaInfo", "getSeekPoints(" + this.c + ")");
        this.s = new ResultTask();
        this.t = new AsyncTask<String, Integer, int[]>() {
            /* renamed from: a */
            protected int[] doInBackground(String... strArr) {
                int[] iArr = null;
                Log.d("MediaInfo", "getSeekPoints:doInBackground(" + strArr[0] + ")");
                try {
                    return a(MediaInfo.this.f);
                } catch (IOException e) {
                    Log.d("MediaInfo", "getSeekPoints:doInBackground(" + strArr[0] + ") -> no cache available; making");
                    NexEditor H = MediaInfo.Q();
                    if (H == null) {
                        return iArr;
                    }
                    NexClipInfo nexClipInfo = new NexClipInfo();
                    ErrorCode a = H.a(strArr[0], nexClipInfo, true, 0);
                    if (a.isError() || nexClipInfo.mSeekTable == null) {
                        Log.d("MediaInfo", "getSeekPoints(" + MediaInfo.this.c + ") FAIL -> " + a);
                        return iArr;
                    }
                    try {
                        a(MediaInfo.this.f, nexClipInfo.mSeekTable);
                    } catch (IOException e2) {
                        Log.d("MediaInfo", "getSeekPoints(" + MediaInfo.this.c + ") FAILED WRITING FILE");
                        e2.printStackTrace();
                    }
                    return nexClipInfo.mSeekTable;
                }
            }

            private int[] a(File file) throws IOException {
                DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                try {
                    int min = ((int) Math.min(file.length(), 204800)) / 4;
                    int[] iArr = new int[min];
                    for (int i = 0; i < min; i++) {
                        iArr[i] = dataInputStream.readInt();
                    }
                    Log.d("MediaInfo", "getSeekPoints():readFile : got " + min + " entries.");
                    return iArr;
                } finally {
                    dataInputStream.close();
                }
            }

            private void a(File file, int[] iArr) throws IOException {
                Log.d("MediaInfo", "getSeekPoints():writeFile(" + file + ")");
                DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                int i = 0;
                while (i < iArr.length) {
                    try {
                        dataOutputStream.writeInt(iArr[i]);
                        i++;
                    } finally {
                        DataOutputStream dataOutputStream2 = dataOutputStream;
                        dataOutputStream.close();
                        Log.d("MediaInfo", "getSeekPoints(" + MediaInfo.this.c + ") wrote file: " + file);
                        file.setReadable(true);
                        return;
                    }
                }
                Log.d("MediaInfo", "getSeekPoints(" + MediaInfo.this.c + ") wrote " + iArr.length + " points");
            }

            /* renamed from: a */
            protected void onPostExecute(int[] iArr) {
                if (iArr == null) {
                    Log.d("MediaInfo", "onPostExecute : FAIL");
                    MediaInfo.this.s.signalEvent(Event.FAIL);
                    return;
                }
                Log.d("MediaInfo", "onPostExecute : SUCCESS " + iArr.length);
                MediaInfo.this.s.setResult(iArr);
                MediaInfo.this.s.signalEvent(Event.RESULT_AVAILABLE, Event.SUCCESS, Event.COMPLETE);
            }
        }.executeOnExecutor(w, new String[]{this.c});
        return this.s;
    }

    public int f() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.m;
    }

    public boolean g() {
        int maxResolution = NexEditorDeviceProfile.getDeviceProfile().getMaxResolution();
        if (this.n != ErrorCode.UNSUPPORT_MAX_RESOLUTION && o() * n() <= (maxResolution * BaiduSceneResult.CASTLE) / 100) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if (this.x || this.n.isError() || !g()) {
            return false;
        }
        return true;
    }

    public boolean i() {
        return this.x || this.n.isError();
    }

    public int j() {
        if (!this.n.isError()) {
            return h() ? 0 : -1;
        } else {
            switch (this.n) {
                case UNSUPPORT_AUDIO_CODEC:
                    return -2;
                case UNSUPPORT_AUDIO_PROFILE:
                    return -3;
                case UNSUPPORT_FORMAT:
                    return -4;
                case UNSUPPORT_MAX_RESOLUTION:
                    return -5;
                case UNSUPPORT_MIN_DURATION:
                    return -6;
                case UNSUPPORT_MIN_RESOLUTION:
                    return -7;
                case UNSUPPORT_VIDEIO_PROFILE:
                    return -8;
                case UNSUPPORT_VIDEO_CODEC:
                    return -9;
                case UNSUPPORT_VIDEO_FPS:
                    return -10;
                case UNSUPPORT_VIDEO_LEVEL:
                    return -11;
                default:
                    return -12;
            }
        }
    }

    public static boolean k() {
        return F.size() != 0;
    }

    public boolean l() {
        if (this.x || this.n.isError()) {
            return false;
        }
        return this.u.d;
    }

    public boolean m() {
        if (this.x || this.n.isError()) {
            return false;
        }
        return this.u.e;
    }

    public int n() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.g;
    }

    public int o() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.h;
    }

    public int p() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        if (this.u.d) {
            return this.u.k;
        }
        return this.u.l;
    }

    public int q() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.k;
    }

    public int r() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.l;
    }

    public int s() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.n;
    }

    public int t() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.v;
    }

    public int u() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.o;
    }

    public int v() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.p;
    }

    public int w() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.r;
    }

    public int x() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.s;
    }

    public int y() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.t;
    }

    public int z() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.u;
    }

    public int A() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.w;
    }

    public int B() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.x;
    }

    public int C() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.y;
    }

    public int D() {
        if (this.x || this.n.isError()) {
            return 0;
        }
        return this.u.z;
    }

    private static NexEditor Q() {
        if (EditorGlobal.a() == null) {
            Log.d("MediaInfo", "getEditor : NULL EDITOR");
            return null;
        }
        Log.d("MediaInfo", "getEditor : setting sClipInfoDoneListener=" + K);
        EditorGlobal.a().a(K);
        EditorGlobal.a().a(M);
        EditorGlobal.a().a(L);
        EditorGlobal.a().a(J);
        return EditorGlobal.a();
    }

    private static void R() {
        if (!D.isEmpty()) {
            NexEditor Q = Q();
            if (Q != null) {
                c cVar = (c) D.remove();
                Q.a(cVar.c.c, cVar.c.k, cVar.getTaskId());
            }
        }
    }

    private static void S() {
        synchronized (I) {
            Log.d("MediaInfo", "startPendingThumbnailTask taskcount=" + B.size());
            if (B.isEmpty()) {
                Log.d("MediaInfo", "startPendingThumbnailTask all run end.");
            } else {
                NexEditor Q = Q();
                if (Q == null) {
                    return;
                }
                c cVar;
                Object obj;
                c cVar2 = null;
                while (!B.isEmpty()) {
                    cVar2 = (c) B.remove();
                    if (!cVar2.b) {
                        cVar = cVar2;
                        obj = null;
                        break;
                    }
                    Log.d("MediaInfo", "startPendingThumbnailTask cancel thumbnail TaskId=" + cVar2.getTaskId());
                    cVar2.sendFailure(ErrorCode.GETCLIPINFO_USER_CANCEL);
                }
                cVar = cVar2;
                int obj2 = 1;
                if (obj2 != null) {
                    Log.d("MediaInfo", "startPendingThumbnailTask all canceled.");
                    return;
                }
                f fVar = (f) cVar.a();
                try {
                    if (fVar.i != null) {
                        Log.d("MediaInfo", "startPendingThumbnailTask use TimeTable sThumbnailsRunTaskId=" + cVar.getTaskId());
                        Q.a(fVar.a, fVar.b, fVar.c, fVar.d, fVar.i.length, fVar.i, fVar.h, cVar.getTaskId());
                    } else {
                        Log.d("MediaInfo", "startPendingThumbnailTask range time sThumbnailsRunTaskId=" + cVar.getTaskId());
                        Q.a(fVar.a, fVar.b, fVar.c, fVar.d, fVar.e, fVar.f, fVar.g, fVar.h, cVar.getTaskId());
                    }
                } catch (Exception e) {
                    cVar.sendFailure(Task.makeTaskError(e));
                }
            }
        }
    }
}
