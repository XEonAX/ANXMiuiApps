package miui.media;

import android.media.AudioRecord;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.variable.Android_Media_AudioRecord_class;
import com.miui.internal.variable.Android_Media_AudioRecord_class.Factory;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import miui.media.Recorder.ErrorCode;
import miui.media.Recorder.OnErrorListener;

class LocalWavRecorder implements Recorder {
    private static final int BK = 0;
    private static final int BL = 1;
    private static final int BP = 2;
    private static final int BQ = 4;
    private static final Android_Media_AudioRecord_class Bf = Factory.getInstance().get();
    private static final int By = 1;
    private static final String LOG_TAG = "WavRecorder";
    private static final int STATE_PAUSED = 3;
    private int Av;
    private OnErrorListener Bd;
    private final int Bg = 44;
    private final int Bh = 4;
    private final int Bi = 40;
    private int Bj;
    private String Bk;
    private File Bl;
    private int Bm;
    private int Bn;
    private int Bo;
    private long Bp;
    private long Bq;
    private String Br;
    private short[] Bs;
    private DataOutputStream Bt;
    private AudioRecord Bu;
    private RecordingThread Bv;
    private int Bw;
    private int Bx;
    private Handler Bz;
    private long gM;

    private class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.what == 1 && LocalWavRecorder.this.Bd != null) {
                LocalWavRecorder.this.Bd.onError(LocalWavRecorder.this, d.e(message.arg1, false));
            }
            super.handleMessage(message);
        }
    }

    private class RecordingThread extends Thread {
        private RecordingThread() {
        }

        public void run() {
            Process.setThreadPriority(-19);
            Log.v(LocalWavRecorder.LOG_TAG, "RecordingThread started");
            String str;
            StringBuilder stringBuilder;
            if (LocalWavRecorder.this.Bw != 2) {
                str = LocalWavRecorder.LOG_TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Error illegal state: ");
                stringBuilder.append(LocalWavRecorder.this.Bw);
                Log.e(str, stringBuilder.toString());
                LocalWavRecorder.this.N(1001);
            } else if (LocalWavRecorder.this.Bt == null) {
                Log.e(LocalWavRecorder.LOG_TAG, "Error out put stream not ready");
                LocalWavRecorder.this.N(1002);
            } else {
                while (LocalWavRecorder.this.Bw == 2) {
                    int read = LocalWavRecorder.this.Bu.read(LocalWavRecorder.this.Bs, 0, LocalWavRecorder.this.Bs.length);
                    LocalWavRecorder.a(LocalWavRecorder.this, (long) read);
                    if (read <= 0) {
                        String str2 = LocalWavRecorder.LOG_TAG;
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("Error record sample failed, read size: ");
                        stringBuilder2.append(read);
                        Log.e(str2, stringBuilder2.toString());
                        LocalWavRecorder.this.N(1003);
                        break;
                    }
                    LocalWavRecorder.this.Bn = LocalWavRecorder.this.a(LocalWavRecorder.this.Bs, read);
                    if (!LocalWavRecorder.this.Bl.exists()) {
                        LocalWavRecorder.this.N(ErrorCode.FILE_NOT_EXIST);
                        break;
                    }
                    try {
                        LocalWavRecorder.this.Bt.write(d.b(LocalWavRecorder.this.Bs, read));
                        LocalWavRecorder.b(LocalWavRecorder.this, (long) (read * 2));
                        if (LocalWavRecorder.this.Bq >= LocalWavRecorder.this.gM) {
                            LocalWavRecorder.this.N(ErrorCode.MAX_SIZE_REACHED);
                            break;
                        }
                    } catch (IOException e) {
                        str = LocalWavRecorder.LOG_TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Error when write sample to file: ");
                        stringBuilder.append(LocalWavRecorder.this.Bk);
                        Log.e(str, stringBuilder.toString());
                        LocalWavRecorder.this.N(1005);
                    }
                }
                LocalWavRecorder.this.Bn = 0;
                Log.v(LocalWavRecorder.LOG_TAG, "RecordingThread stoped");
            }
        }
    }

    public LocalWavRecorder() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.Bz = new EventHandler(myLooper);
        } else {
            myLooper = Looper.getMainLooper();
            if (myLooper != null) {
                this.Bz = new EventHandler(myLooper);
            } else {
                Log.e(LOG_TAG, "Could not create event handler");
                this.Bz = null;
            }
        }
        reset();
    }

    public void setOutputFile(String str) {
        this.Bk = str;
    }

    public void setOutputFormat(int i) {
    }

    public void setAudioSource(int i) {
        this.Av = i;
    }

    public void setAudioSamplingRate(int i) {
        this.Bj = i;
    }

    public void setAudioEncodingBitRate(int i) {
    }

    public void setAudioEncoder(int i) {
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.Bd = onErrorListener;
    }

    public void setQuality(int i) {
    }

    public void setExtraParameters(String str) {
        if (Bf.isExtraParamSupported()) {
            this.Br = str;
            return;
        }
        throw new IllegalArgumentException("Do not support extra parameter");
    }

    public boolean isExtraParamSupported() {
        return Bf.isExtraParamSupported();
    }

    public void setAudioChannel(int i) {
        this.Bm = i;
    }

    public void setMaxFileSize(long j) {
        if (j > 0) {
            this.gM = j;
        } else {
            this.gM = Long.MAX_VALUE;
        }
    }

    public void setMaxDuration(int i) {
        if (i > 0) {
            this.gM = (long) (((((i / 1000) * this.Bj) * 16) * this.Bo) / 8);
        } else {
            this.gM = Long.MAX_VALUE;
        }
    }

    public void reset() {
        this.Bw = 0;
        this.Bu = null;
        this.Av = 1;
        this.Bj = Mp3Encoder.DEFAULT_SAMPLE_RATE;
        this.Bm = 16;
        this.Bw = 0;
        this.Bp = 0;
        this.Bq = 0;
        this.gM = Long.MAX_VALUE;
    }

    public void prepare() throws IllegalStateException, IOException {
        int i = 2;
        this.Bx = AudioRecord.getMinBufferSize(this.Bj, this.Bm, 2);
        if (this.Bx >= 0) {
            this.Bs = new short[(this.Bx * 2)];
            this.Bu = new AudioRecord(this.Av, this.Bj, this.Bm, 2, this.Bs.length);
            a(this.Bu, this.Br);
            Log.v(LOG_TAG, "Apply new AudioRecord");
            if (this.Bm != 12) {
                i = 1;
            }
            this.Bo = i;
            this.Bl = new File(this.Bk);
            this.Bw = 1;
            Log.v(LOG_TAG, "WAVRecorder prepared");
            return;
        }
        Log.e(LOG_TAG, "Error when getting min buffer size");
        throw new IllegalStateException("Could not calculate the min buffer size");
    }

    public synchronized void start() throws IllegalStateException, IOException {
        if (this.Bv != null || this.Bw == 2) {
            Log.e(LOG_TAG, "Recording has started");
            throw new IllegalStateException("Recording has already started");
        } else if (this.Bw == 1) {
            this.Bp = 0;
            this.Bq = 0;
            this.Bw = 2;
            this.Bu.startRecording();
            if (this.Bu.getRecordingState() == 3) {
                OutputStream fileOutputStream = new FileOutputStream(this.Bl);
                this.Bt = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                Log.v(LOG_TAG, "AudioRecord started");
                fileOutputStream.write(d.j(this.Bm, this.Bj));
                this.Bv = new RecordingThread();
                this.Bv.start();
                Log.v(LOG_TAG, "WAVRecorder started");
            } else {
                throw new IllegalStateException("Wav record could not start: other input already started");
            }
        } else {
            Log.e(LOG_TAG, "Recorder not prepared");
            throw new IllegalStateException("Recorder not prepared");
        }
    }

    public long getRecordingTimeInMillis() {
        return (long) (((((double) this.Bp) * 2.0d) / ((double) ((this.Bj * 2) * this.Bo))) * 1000.0d);
    }

    public long getRecordingSizeInByte() {
        return this.Bq;
    }

    public synchronized void pause() throws IllegalStateException {
        if (this.Bw != 2 || this.Bv == null) {
            throw new IllegalStateException("Recording not started");
        }
        this.Bw = 3;
        try {
            this.Bv.join();
        } catch (Throwable e) {
            Log.e(LOG_TAG, "InterruptedException when pause", e);
        }
        this.Bu.stop();
        Log.v(LOG_TAG, "AudioRecord stoped");
        this.Bu.release();
        Log.v(LOG_TAG, "AudioRecord released");
        this.Bu = null;
        Log.v(LOG_TAG, "WAVRecorder paused");
    }

    public synchronized void resume() throws IllegalStateException {
        if (this.Bw == 3) {
            this.Bu = new AudioRecord(this.Av, this.Bj, this.Bm, 2, this.Bs.length);
            Log.v(LOG_TAG, "Apply new AudioRecord");
            a(this.Bu, this.Br);
            this.Bu.startRecording();
            if (this.Bu.getRecordingState() == 3) {
                Log.v(LOG_TAG, "AudioRecord started");
                this.Bw = 2;
                this.Bv = new RecordingThread();
                this.Bv.start();
                Log.v(LOG_TAG, "WAVRecorder resumed");
            } else {
                throw new IllegalStateException("Mp3 record could not start: other input already started");
            }
        }
        Log.e(LOG_TAG, "Recording is going on");
        throw new IllegalStateException("Recording is going on");
    }

    public synchronized void stop() throws IllegalStateException {
        if (this.Bw == 3 || this.Bw == 2) {
            this.Bw = 4;
            try {
                if (this.Bv != null && this.Bv.isAlive()) {
                    this.Bv.join();
                }
            } catch (Throwable e) {
                Log.e(LOG_TAG, "InterruptedException when stop", e);
            }
            this.Bv = null;
            try {
                this.Bt.close();
            } catch (Throwable e2) {
                Log.e(LOG_TAG, "Error file cannot be closed", e2);
            }
            if (this.Bu != null) {
                this.Bu.stop();
                Log.v(LOG_TAG, "AudioRecord stoped");
            }
            cy();
            Log.v(LOG_TAG, "WavRecorder stoped");
        } else {
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Recorder should not be stopped in state:");
            stringBuilder.append(this.Bw);
            Log.e(str, stringBuilder.toString());
            stringBuilder = new StringBuilder();
            stringBuilder.append("Recorder should not be stopped in state : ");
            stringBuilder.append(this.Bw);
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public void release() {
        if (this.Bu != null) {
            this.Bu.release();
            this.Bu = null;
            Log.v(LOG_TAG, "AudioRecord released");
        }
        Log.v(LOG_TAG, "WAVRecorder released");
    }

    private int a(short[] sArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = sArr[i2] < (short) 0 ? -sArr[i2] : sArr[i2];
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        return i3;
    }

    public int getMaxAmplitude() {
        return this.Bn;
    }

    public boolean isPaused() {
        return this.Bw == 3;
    }

    public boolean canPause() {
        return true;
    }

    private void a(AudioRecord audioRecord, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (Bf.isExtraParamSupported()) {
                int parameters = Bf.setParameters(audioRecord, str);
                str = LOG_TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("setParameters: ");
                stringBuilder.append(parameters);
                Log.d(str, stringBuilder.toString());
                return;
            }
            Log.e(LOG_TAG, "Do not support extra parameters");
        }
    }

    private void N(int i) {
        if (this.Bz != null) {
            this.Bz.sendMessage(this.Bz.obtainMessage(1, i, 0));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0063 A:{SYNTHETIC, Splitter: B:26:0x0063} */
    /* JADX WARNING: Removed duplicated region for block: B:52:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0068 A:{Catch:{ IOException -> 0x007d }} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0079 A:{SYNTHETIC, Splitter: B:35:0x0079} */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0081 A:{Catch:{ IOException -> 0x007d }} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0063 A:{SYNTHETIC, Splitter: B:26:0x0063} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0068 A:{Catch:{ IOException -> 0x007d }} */
    /* JADX WARNING: Removed duplicated region for block: B:52:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0093 A:{SYNTHETIC, Splitter: B:43:0x0093} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x009b A:{Catch:{ IOException -> 0x0097 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0093 A:{SYNTHETIC, Splitter: B:43:0x0093} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x009b A:{Catch:{ IOException -> 0x0097 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void cy() {
        FileChannel channel;
        Throwable th;
        Throwable e;
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(this.Bl, "rw");
            try {
                channel = randomAccessFile.getChannel();
            } catch (Throwable e2) {
                th = e2;
                channel = null;
                e = th;
                Log.e(LOG_TAG, "FileNotFoundException", e);
                if (randomAccessFile != null) {
                }
                if (channel == null) {
                }
            } catch (Throwable e22) {
                th = e22;
                channel = null;
                e = th;
                try {
                    Log.e(LOG_TAG, "IOException", e);
                    if (randomAccessFile != null) {
                    }
                    if (channel != null) {
                    }
                } catch (Throwable th2) {
                    e = th2;
                    if (randomAccessFile != null) {
                    }
                    if (channel != null) {
                    }
                    throw e;
                }
            } catch (Throwable e222) {
                th = e222;
                channel = null;
                e = th;
                if (randomAccessFile != null) {
                }
                if (channel != null) {
                }
                throw e;
            }
            try {
                MappedByteBuffer map = channel.map(MapMode.READ_WRITE, 0, 44);
                d.a(map, 4, d.g(this.Bq + 36));
                d.a(map, 40, d.g(this.Bq));
                try {
                    randomAccessFile.close();
                    if (channel != null) {
                        channel.close();
                    }
                } catch (Throwable e3) {
                    Log.e(LOG_TAG, "file close", e3);
                }
            } catch (FileNotFoundException e4) {
                e3 = e4;
            } catch (IOException e5) {
                e3 = e5;
                Log.e(LOG_TAG, "IOException", e3);
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                if (channel != null) {
                    channel.close();
                }
            }
        } catch (Throwable e6) {
            channel = null;
            e3 = e6;
            randomAccessFile = channel;
            Log.e(LOG_TAG, "FileNotFoundException", e3);
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            if (channel == null) {
                channel.close();
            }
        } catch (Throwable e62) {
            channel = null;
            e3 = e62;
            randomAccessFile = channel;
            Log.e(LOG_TAG, "IOException", e3);
            if (randomAccessFile != null) {
            }
            if (channel != null) {
            }
        } catch (Throwable e622) {
            channel = null;
            e3 = e622;
            randomAccessFile = channel;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Throwable e6222) {
                    Log.e(LOG_TAG, "file close", e6222);
                    throw e3;
                }
            }
            if (channel != null) {
                channel.close();
            }
            throw e3;
        }
    }
}
