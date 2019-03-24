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
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class Mp3Recorder {
    private static final int BK = 0;
    private static final int BL = 1;
    private static final int BP = 2;
    private static final int BQ = 4;
    private static final Android_Media_AudioRecord_class Bf = Factory.getInstance().get();
    private static final int Ck = 1;
    public static final int ERR_COULD_NOT_START = 6;
    public static final int ERR_ENCODE_PCM_FAILED = 4;
    public static final int ERR_FILE_NOT_EXIST = 8;
    public static final int ERR_ILLEGAL_STATE = 1;
    public static final int ERR_MAX_SIZE_REACHED = 7;
    public static final int ERR_OUT_STREAM_NOT_READY = 2;
    public static final int ERR_RECORD_PCM_FAILED = 3;
    public static final int ERR_WRITE_TO_FILE = 5;
    private static final String LOG_TAG = "Mp3Recorder";
    private static final int STATE_PAUSED = 3;
    public static final int VBR_QUALITY_HIGH = 2;
    public static final int VBR_QUALITY_LOW = 9;
    public static final int VBR_QUALITY_MEDIUM = 6;
    private int Av;
    private int Bj;
    private String Bk;
    private File Bl;
    private int Bm;
    private int Bn;
    private int Bo;
    private long Bp;
    private long Bq;
    private String Br;
    private AudioRecord Bu;
    private int Bw;
    private int Bx;
    private Handler Bz;
    private int Cb;
    private int Cc;
    private int Cd;
    private int Ce;
    private short[] Cf;
    private byte[] Cg;
    private Mp3Encoder Ch;
    private RecordingThread Ci;
    private RecordingErrorListener Cj;
    private FileOutputStream gC;
    private long gM;

    public interface RecordingErrorListener {
        void onError(Mp3Recorder mp3Recorder, int i);
    }

    private class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.what == 1 && Mp3Recorder.this.Cj != null) {
                Mp3Recorder.this.Cj.onError(Mp3Recorder.this, message.arg1);
            }
            super.handleMessage(message);
        }
    }

    private class RecordingThread extends Thread {
        private RecordingThread() {
        }

        public void run() {
            Process.setThreadPriority(-19);
            Log.v(Mp3Recorder.LOG_TAG, "RecordingThread started");
            String str;
            StringBuilder stringBuilder;
            if (Mp3Recorder.this.Bw != 2) {
                str = Mp3Recorder.LOG_TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Error illegal state: ");
                stringBuilder.append(Mp3Recorder.this.Bw);
                Log.e(str, stringBuilder.toString());
                Mp3Recorder.this.N(1);
            } else if (Mp3Recorder.this.gC == null) {
                Log.e(Mp3Recorder.LOG_TAG, "Error out put stream not ready");
                Mp3Recorder.this.N(2);
            } else {
                while (Mp3Recorder.this.Bw == 2) {
                    int read = Mp3Recorder.this.Bu.read(Mp3Recorder.this.Cf, 0, Mp3Recorder.this.Cf.length);
                    Mp3Recorder.a(Mp3Recorder.this, (long) read);
                    String str2;
                    if (read <= 0) {
                        str2 = Mp3Recorder.LOG_TAG;
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("Error record sample failed, read size: ");
                        stringBuilder2.append(read);
                        Log.e(str2, stringBuilder2.toString());
                        Mp3Recorder.this.N(3);
                        break;
                    }
                    int encode;
                    Mp3Recorder.this.Bn = Mp3Recorder.this.a(Mp3Recorder.this.Cf, read);
                    if (Mp3Recorder.this.Bm == 16) {
                        encode = Mp3Recorder.this.Ch.encode(Mp3Recorder.this.Cf, Mp3Recorder.this.Cf, read, Mp3Recorder.this.Cg, Mp3Recorder.this.Cg.length);
                    } else {
                        encode = Mp3Recorder.this.Ch.encodeInterleaved(Mp3Recorder.this.Cf, read / Mp3Recorder.this.Bo, Mp3Recorder.this.Cg, Mp3Recorder.this.Cg.length);
                    }
                    if (encode <= 0) {
                        if (encode == 0) {
                            Log.e(Mp3Recorder.LOG_TAG, "Not a complete frame samples to encode: skiped");
                        } else {
                            str2 = Mp3Recorder.LOG_TAG;
                            StringBuilder stringBuilder3 = new StringBuilder();
                            stringBuilder3.append("Error encode PCM failed, encode size: ");
                            stringBuilder3.append(encode);
                            stringBuilder3.append(" read size: ");
                            stringBuilder3.append(read);
                            Log.e(str2, stringBuilder3.toString());
                            if (Mp3Recorder.this.Cj != null) {
                                Mp3Recorder.this.N(4);
                            }
                        }
                    } else if (!Mp3Recorder.this.Bl.exists()) {
                        Mp3Recorder.this.N(8);
                        break;
                    } else {
                        try {
                            Mp3Recorder.this.gC.write(Mp3Recorder.this.Cg, 0, encode);
                            Mp3Recorder.b(Mp3Recorder.this, (long) encode);
                            if (Mp3Recorder.this.Bq >= Mp3Recorder.this.gM) {
                                Mp3Recorder.this.N(7);
                                break;
                            }
                        } catch (IOException e) {
                            str = Mp3Recorder.LOG_TAG;
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Error when write sample to file: ");
                            stringBuilder.append(Mp3Recorder.this.Bk);
                            Log.e(str, stringBuilder.toString());
                            Mp3Recorder.this.N(5);
                        }
                    }
                }
                Mp3Recorder.this.Bn = 0;
                Log.v(Mp3Recorder.LOG_TAG, "RecordingThread stoped");
            }
        }
    }

    public Mp3Recorder() {
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

    public void setAudioSource(int i) {
        this.Av = i;
    }

    public void setAudioSamplingRate(int i) {
        this.Bj = i;
    }

    public void setOutBitRate(int i) {
        this.Cc = i;
    }

    public void setOnErrorListener(RecordingErrorListener recordingErrorListener) {
        this.Cj = recordingErrorListener;
    }

    public void setQuality(int i) {
        this.Cd = i;
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

    public void setMaxDuration(long j) {
        if (j > 0) {
            this.gM = j * ((long) (this.Cc / 8));
        } else {
            this.gM = Long.MAX_VALUE;
        }
    }

    public void setVBRQuality(int i) {
        this.Ce = i;
    }

    public void reset() {
        this.Bw = 0;
        this.Bu = null;
        this.Av = 1;
        this.Bj = Mp3Encoder.DEFAULT_SAMPLE_RATE;
        this.Bm = 16;
        this.Cd = 0;
        this.Bw = 0;
        this.Cc = 64;
        this.Bp = 0;
        this.Bq = 0;
        this.gM = Long.MAX_VALUE;
        this.Ce = -1;
        this.Ch = new Mp3Encoder();
    }

    public void prepare() throws IllegalStateException, IOException {
        int i = 2;
        this.Bx = AudioRecord.getMinBufferSize(this.Bj, this.Bm, 2);
        if (this.Bx >= 0) {
            this.Cf = new short[(this.Bx * 2)];
            this.Bu = new AudioRecord(this.Av, this.Bj, this.Bm, 2, this.Cf.length);
            a(this.Bu, this.Br);
            Log.v(LOG_TAG, "Apply new AudioRecord");
            this.Cb = this.Bm == 12 ? 0 : 3;
            if (this.Bm != 12) {
                i = 1;
            }
            this.Bo = i;
            this.Cg = new byte[((int) (7200.0d + (((double) this.Cf.length) * 1.25d)))];
            this.Ch.setInSampleRate(this.Bj);
            this.Ch.setOutMode(this.Cb);
            this.Ch.setChannelCount(this.Bo);
            this.Ch.setOutSampleRate(this.Bj);
            this.Ch.setOutBitRate(this.Cc);
            this.Ch.setQuality(this.Cd);
            this.Ch.setVBRQuality(this.Ce);
            this.Ch.init();
            this.Bl = new File(this.Bk);
            this.Bw = 1;
            Log.v(LOG_TAG, "Mp3Recorder prepared");
            return;
        }
        Log.e(LOG_TAG, "Error when getting min buffer size");
        throw new IllegalStateException("Could not calculate the min buffer size");
    }

    public synchronized void start() throws IllegalStateException, IOException {
        if (this.Ci != null || this.Bw == 2) {
            Log.e(LOG_TAG, "Recording has started");
            throw new IllegalStateException("Recording has already started");
        } else if (this.Bw == 1) {
            this.Bp = 0;
            this.Bq = 0;
            this.Bw = 2;
            this.Bu.startRecording();
            if (this.Bu.getRecordingState() == 3) {
                this.gC = new FileOutputStream(this.Bl);
                Log.v(LOG_TAG, "AudioRecord started");
                this.Ci = new RecordingThread();
                this.Ci.start();
                Log.v(LOG_TAG, "Mp3Recorder started");
            } else {
                throw new IllegalStateException("Mp3 record could not start: other input already started");
            }
        } else {
            Log.e(LOG_TAG, "Recorder not prepared");
            throw new IllegalStateException("Recorder not prepared");
        }
    }

    public long getRecordingTimeInMillis() {
        return (long) (((((double) this.Bp) / ((double) this.Bj)) * 1000.0d) / ((double) this.Bo));
    }

    public long getRecordingSizeInByte() {
        return this.Bq;
    }

    public synchronized void pause() throws IllegalStateException {
        if (this.Bw != 2 || this.Ci == null) {
            throw new IllegalStateException("Recording not started");
        }
        this.Bw = 3;
        try {
            this.Ci.join();
        } catch (Throwable e) {
            Log.e(LOG_TAG, "InterruptedException when pause", e);
        }
        this.Bu.stop();
        Log.v(LOG_TAG, "AudioRecord stoped");
        this.Bu.release();
        Log.v(LOG_TAG, "AudioRecord released");
        this.Bu = null;
        Log.v(LOG_TAG, "Mp3Recorder paused");
    }

    public synchronized void resume() throws IllegalStateException {
        if (this.Bw == 3) {
            this.Bu = new AudioRecord(this.Av, this.Bj, this.Bm, 2, this.Cf.length);
            Log.v(LOG_TAG, "Apply new AudioRecord");
            a(this.Bu, this.Br);
            this.Bu.startRecording();
            if (this.Bu.getRecordingState() == 3) {
                Log.v(LOG_TAG, "AudioRecord started");
                this.Bw = 2;
                this.Ci = new RecordingThread();
                this.Ci.start();
                Log.v(LOG_TAG, "Mp3Recorder resumed");
            } else {
                throw new IllegalStateException("Mp3 record could not start: other input already started");
            }
        }
        Log.e(LOG_TAG, "Recording is going on");
        throw new IllegalStateException("Recording is going on");
    }

    public synchronized void stop() throws IllegalStateException {
        String str;
        if (this.Bw == 3 || this.Bw == 2) {
            String str2;
            this.Bw = 4;
            try {
                if (this.Ci != null && this.Ci.isAlive()) {
                    this.Ci.join();
                }
            } catch (Throwable e) {
                Log.e(LOG_TAG, "InterruptedException when stop", e);
            } catch (Throwable th) {
                try {
                    this.gC.close();
                } catch (Throwable e2) {
                    Log.e(LOG_TAG, "Error file cannot be closed", e2);
                }
                if (this.Bu != null) {
                    this.Bu.stop();
                    Log.v(LOG_TAG, "AudioRecord stoped");
                }
            }
            this.Ci = null;
            int flush = this.Ch.flush(this.Cg, this.Cg.length);
            if (flush > 0) {
                try {
                    this.gC.write(this.Cg, 0, flush);
                    if (this.Ce >= 0 && this.Ce <= 9) {
                        this.Ch.writeVBRHeader(this.Bk);
                    }
                    try {
                        this.gC.close();
                    } catch (Throwable e3) {
                        Log.e(LOG_TAG, "Error file cannot be closed", e3);
                    }
                    if (this.Bu != null) {
                        this.Bu.stop();
                        str = LOG_TAG;
                        str2 = "AudioRecord stoped";
                    }
                } catch (Throwable e32) {
                    Log.e(LOG_TAG, "Error file cannot be written when flush", e32);
                    try {
                        this.gC.close();
                    } catch (Throwable e322) {
                        Log.e(LOG_TAG, "Error file cannot be closed", e322);
                    }
                    if (this.Bu != null) {
                        this.Bu.stop();
                        str = LOG_TAG;
                        str2 = "AudioRecord stoped";
                    }
                }
                Log.v(LOG_TAG, "Mp3Recorder stoped");
            } else {
                throw new IllegalStateException("Buffer flush must greater than 0");
            }
            Log.v(str, str2);
            Log.v(LOG_TAG, "Mp3Recorder stoped");
        } else {
            str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Recorder should not be stopped in state:");
            stringBuilder.append(this.Bw);
            Log.e(str, stringBuilder.toString());
            stringBuilder = new StringBuilder();
            stringBuilder.append("Recorder shoul not be stopped in state : ");
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
        this.Ch.close();
        Log.v(LOG_TAG, "Mp3Recorder released");
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
            Message obtainMessage = this.Bz.obtainMessage(1);
            obtainMessage.arg1 = i;
            this.Bz.sendMessage(obtainMessage);
        }
    }
}
