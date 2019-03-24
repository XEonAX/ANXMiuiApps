package miui.media;

import android.media.MediaRecorder;
import android.media.MediaRecorder.OnErrorListener;
import android.media.MediaRecorder.OnInfoListener;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import miui.reflect.Method;

class LocalMediaRecorder implements Recorder {
    private static final Method Aq;
    private static final String TAG = "Media:LocalMediaRecorder";
    private long AA = -1;
    private int AB = -1;
    private long AH = 0;
    private int AJ = -1;
    private OnErrorListener AK;
    private OnInfoListener AP;
    private Recorder.OnErrorListener AQ;
    private boolean AV;
    private long AX = 0;
    private int AY;
    private Object Ao = new Object();
    private MediaRecorder Ap = new MediaRecorder();
    private ParcelFileDescriptor Ar;
    private RecorderAppendThread As;
    private String At;
    private String Au;
    private int Av = -1;
    private int Aw = -1;
    private int Ax = -1;
    private int Ay = -1;
    private int Az = -1;

    private class RecorderAppendThread extends Thread {
        private ParcelFileDescriptor Bb;
        private AtomicBoolean Bc;

        RecorderAppendThread(ParcelFileDescriptor parcelFileDescriptor) {
            this.Bb = parcelFileDescriptor;
        }

        /* JADX WARNING: Removed duplicated region for block: B:43:0x008e A:{SYNTHETIC, Splitter: B:43:0x008e} */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x0096 A:{Catch:{ IOException -> 0x0092 }} */
        /* JADX WARNING: Removed duplicated region for block: B:52:0x00aa A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x00bf A:{SYNTHETIC, Splitter: B:63:0x00bf} */
        /* JADX WARNING: Removed duplicated region for block: B:67:0x00c7 A:{Catch:{ IOException -> 0x00c3 }} */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x00db A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x00bf A:{SYNTHETIC, Splitter: B:63:0x00bf} */
        /* JADX WARNING: Removed duplicated region for block: B:67:0x00c7 A:{Catch:{ IOException -> 0x00c3 }} */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x00db A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:52:0x00aa A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x00db A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:43:0x008e A:{SYNTHETIC, Splitter: B:43:0x008e} */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x0096 A:{Catch:{ IOException -> 0x0092 }} */
        /* JADX WARNING: Removed duplicated region for block: B:52:0x00aa A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x00bf A:{SYNTHETIC, Splitter: B:63:0x00bf} */
        /* JADX WARNING: Removed duplicated region for block: B:67:0x00c7 A:{Catch:{ IOException -> 0x00c3 }} */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x00db A:{SYNTHETIC} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            Throwable e;
            InputStream inputStream;
            if (LocalMediaRecorder.this.canPause()) {
                this.Bc = new AtomicBoolean(true);
                byte[] bArr = new byte[1024];
                OutputStream outputStream = null;
                InputStream fileInputStream;
                OutputStream fileOutputStream;
                try {
                    fileInputStream = new FileInputStream(this.Bb.getFileDescriptor());
                    try {
                        fileOutputStream = new FileOutputStream(LocalMediaRecorder.this.At, true);
                        try {
                            int cv = LocalMediaRecorder.this.cv();
                            int i = 0;
                            while (cv - i > 0) {
                                i = fileInputStream.read(bArr, 0, cv);
                                cv -= i;
                            }
                            while (true) {
                                cv = fileInputStream.read(bArr);
                                if (cv > 0) {
                                    fileOutputStream.write(bArr, 0, cv);
                                } else {
                                    try {
                                        break;
                                    } catch (Throwable e2) {
                                        Log.e(LocalMediaRecorder.TAG, "IOException", e2);
                                    }
                                }
                            }
                            fileInputStream.close();
                            fileOutputStream.close();
                            this.Bb.close();
                            synchronized (this.Bc) {
                                this.Bc.set(false);
                                this.Bc.notify();
                            }
                        } catch (IOException e3) {
                            e2 = e3;
                            inputStream = fileInputStream;
                            try {
                                Log.e(LocalMediaRecorder.TAG, "IOException", e2);
                                if (inputStream != null) {
                                }
                                if (fileOutputStream != null) {
                                }
                                this.Bb.close();
                                synchronized (this.Bc) {
                                }
                            } catch (Throwable th) {
                                e2 = th;
                                fileInputStream = inputStream;
                                outputStream = fileOutputStream;
                                if (fileInputStream != null) {
                                }
                                if (outputStream != null) {
                                }
                                this.Bb.close();
                                synchronized (this.Bc) {
                                }
                                throw e2;
                            }
                        } catch (Throwable th2) {
                            e2 = th2;
                            outputStream = fileOutputStream;
                            if (fileInputStream != null) {
                            }
                            if (outputStream != null) {
                            }
                            this.Bb.close();
                            synchronized (this.Bc) {
                            }
                            throw e2;
                        }
                    } catch (IOException e4) {
                        e2 = e4;
                        fileOutputStream = null;
                        inputStream = fileInputStream;
                        Log.e(LocalMediaRecorder.TAG, "IOException", e2);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable e22) {
                                Log.e(LocalMediaRecorder.TAG, "IOException", e22);
                                synchronized (this.Bc) {
                                }
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        this.Bb.close();
                        synchronized (this.Bc) {
                            this.Bc.set(false);
                            this.Bc.notify();
                        }
                    } catch (Throwable th3) {
                        e22 = th3;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable e5) {
                                Log.e(LocalMediaRecorder.TAG, "IOException", e5);
                                synchronized (this.Bc) {
                                }
                                throw e22;
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        this.Bb.close();
                        synchronized (this.Bc) {
                            this.Bc.set(false);
                            this.Bc.notify();
                        }
                        throw e22;
                    }
                } catch (IOException e6) {
                    e22 = e6;
                    fileOutputStream = null;
                    Log.e(LocalMediaRecorder.TAG, "IOException", e22);
                    if (inputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    this.Bb.close();
                    synchronized (this.Bc) {
                    }
                } catch (Throwable th4) {
                    e22 = th4;
                    fileInputStream = null;
                    if (fileInputStream != null) {
                    }
                    if (outputStream != null) {
                    }
                    this.Bb.close();
                    synchronized (this.Bc) {
                    }
                    throw e22;
                }
            }
        }
    }

    static {
        Method of;
        try {
            of = Method.of(MediaRecorder.class, "setParameter", "(Ljava/lang/String;)V");
        } catch (Throwable e) {
            Log.e(TAG, "Could not get method:setParameter", e);
            of = null;
        }
        Aq = of;
    }

    protected void cw() {
        this.At = null;
        this.Au = null;
        this.Av = -1;
        this.Aw = -1;
        this.Ay = -1;
        this.Ax = -1;
        this.Az = -1;
        this.AA = -1;
        this.AJ = -1;
        this.AH = 0;
        this.AK = null;
        this.AP = null;
        this.AQ = null;
    }

    public void setAudioSource(int i) {
        synchronized (this.Ao) {
            this.Av = i;
            this.Ap.setAudioSource(i);
        }
    }

    public void setAudioSamplingRate(int i) {
        synchronized (this.Ao) {
            this.Aw = i;
            this.Ap.setAudioSamplingRate(i);
        }
    }

    public void setOutputFormat(int i) {
        synchronized (this.Ao) {
            this.Ax = i;
            this.Ap.setOutputFormat(i);
        }
    }

    public void setAudioEncoder(int i) {
        synchronized (this.Ao) {
            this.Ay = i;
            this.Ap.setAudioEncoder(i);
        }
    }

    public void setOutputFile(String str) {
        synchronized (this.Ao) {
            this.At = str;
            this.Ap.setOutputFile(str);
        }
    }

    public void prepare() throws IOException {
        synchronized (this.Ao) {
            this.Ap.prepare();
        }
    }

    public void reset() {
        synchronized (this.Ao) {
            cw();
            this.Ap.reset();
        }
    }

    public void release() {
        synchronized (this.Ao) {
            cw();
            if (this.Ap != null) {
                this.Ap.release();
                this.Ap = null;
            }
        }
    }

    public void start() {
        synchronized (this.Ao) {
            this.Ap.start();
            this.AX = SystemClock.elapsedRealtime();
            this.AY = 0;
        }
    }

    public void stop() {
        synchronized (this.Ao) {
            cw();
            if (this.Ap != null) {
                this.Ap.stop();
                if (this.Ar != null) {
                    try {
                        this.Ar.close();
                        cx();
                    } catch (Throwable e) {
                        throw new IllegalStateException(e);
                    }
                }
            }
            this.AV = false;
        }
    }

    public int getMaxAmplitude() {
        int maxAmplitude;
        synchronized (this.Ao) {
            maxAmplitude = this.AV ? 0 : this.Ap.getMaxAmplitude();
        }
        return maxAmplitude;
    }

    public boolean canPause() {
        synchronized (this.Ao) {
        }
        return false;
    }

    public void pause() {
        synchronized (this.Ao) {
            this.AV = true;
            this.Ap.stop();
            this.Ap.release();
            this.Ap = null;
            this.AY = (int) (((long) this.AY) + (SystemClock.elapsedRealtime() - this.AX));
            if (this.Ar != null) {
                try {
                    this.Ar.close();
                    cx();
                } catch (Throwable e) {
                    throw new IllegalStateException(e);
                }
            }
            this.AH = new File(this.At).length();
        }
    }

    public void resume() throws IllegalStateException, IOException {
        synchronized (this.Ao) {
            if (this.AV) {
                this.Ap = new MediaRecorder();
                if (!TextUtils.isEmpty(this.Au)) {
                    setExtraParameters(this.Au);
                }
                if (this.Av != -1) {
                    this.Ap.setAudioSource(this.Av);
                }
                if (this.Aw != -1) {
                    this.Ap.setAudioSamplingRate(this.Aw);
                }
                if (this.Ax != -1) {
                    this.Ap.setOutputFormat(this.Ax);
                }
                if (this.Ay != -1) {
                    this.Ap.setAudioEncoder(this.Ay);
                }
                if (this.Az != -1) {
                    this.Ap.setAudioEncodingBitRate(this.Az);
                }
                if (this.AJ != -1) {
                    this.Ap.setAudioChannels(this.AJ);
                }
                if (this.AA != -1) {
                    this.Ap.setMaxFileSize(this.AA - this.AH);
                }
                if (this.AB != -1) {
                    this.Ap.setMaxDuration(this.AB);
                }
                if (this.AK != null) {
                    this.Ap.setOnErrorListener(this.AK);
                }
                if (this.AP != null) {
                    this.Ap.setOnInfoListener(this.AP);
                }
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                this.Ar = createPipe[1];
                this.As = new RecorderAppendThread(createPipe[0]);
                this.Ap.setOutputFile(this.Ar.getFileDescriptor());
                this.As.start();
                this.Ap.prepare();
                this.Ap.start();
                this.AV = false;
                this.AX = SystemClock.elapsedRealtime();
            }
        }
    }

    public boolean isPaused() {
        boolean z;
        synchronized (this.Ao) {
            z = this.AV;
        }
        return z;
    }

    public void setAudioEncodingBitRate(int i) {
        synchronized (this.Ao) {
            this.Az = i;
            this.Ap.setAudioEncodingBitRate(i);
        }
    }

    public void setMaxFileSize(long j) {
        synchronized (this.Ao) {
            this.AA = j;
            this.Ap.setMaxFileSize(j);
        }
    }

    public void setMaxDuration(int i) {
        synchronized (this.Ao) {
            this.AB = i;
            this.Ap.setMaxDuration(i);
        }
    }

    public void setExtraParameters(String str) {
        synchronized (this.Ao) {
            this.Au = str;
            A(str);
        }
    }

    public void setOnErrorListener(Recorder.OnErrorListener onErrorListener) {
        this.AQ = onErrorListener;
        setOnErrorListener(new OnErrorListener() {
            public void onError(MediaRecorder mediaRecorder, int i, int i2) {
                LocalMediaRecorder.this.AQ.onError(LocalMediaRecorder.this, d.e(i, true));
            }
        });
        setOnInfoListener(new OnInfoListener() {
            public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
                LocalMediaRecorder.this.AQ.onError(LocalMediaRecorder.this, d.e(i, true));
            }
        });
    }

    public long getRecordingTimeInMillis() {
        if (isPaused()) {
            return (long) this.AY;
        }
        return (SystemClock.elapsedRealtime() - this.AX) + ((long) this.AY);
    }

    public void setQuality(int i) {
    }

    public void setAudioChannel(int i) {
        synchronized (this.Ao) {
            if (i == 16) {
                this.AJ = 1;
            } else {
                this.AJ = 2;
            }
            this.Ap.setAudioChannels(this.AJ);
        }
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        synchronized (this.Ao) {
            this.AK = onErrorListener;
            this.Ap.setOnErrorListener(onErrorListener);
        }
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        synchronized (this.Ao) {
            this.AP = onInfoListener;
            this.Ap.setOnInfoListener(onInfoListener);
        }
    }

    private void A(String str) {
        if (Aq != null && !TextUtils.isEmpty(str)) {
            Aq.invoke(MediaRecorder.class, this.Ap, str);
        }
    }

    private void cx() {
        if (this.As != null) {
            synchronized (this.As.Bc) {
                while (this.As.Bc.get()) {
                    try {
                        this.As.Bc.wait();
                    } catch (Throwable e) {
                        Log.e(TAG, "InterruptedException", e);
                    }
                }
            }
            this.As = null;
        }
    }

    protected int cv() {
        return 0;
    }
}
