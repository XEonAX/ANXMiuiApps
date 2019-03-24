package miui.media;

public class Mp3Encoder {
    public static final int DEFAULT_AUDIO_CHANNEL = 16;
    public static final int DEFAULT_CHANNEL_COUNT = 1;
    public static final int DEFAULT_OUT_BIT_RATE = 64;
    public static final int DEFAULT_OUT_MODE = 3;
    public static final int DEFAULT_QUALITY = 0;
    public static final int DEFAULT_SAMPLE_RATE = 44100;
    public static final int DEFAULT_VBR_QUALITY = -1;
    public static final int OUT_MODE_MONO = 3;
    public static final int OUT_MODE_STEREO = 0;
    private long BV = -1;
    private int BX = DEFAULT_SAMPLE_RATE;
    private int Bo = 1;
    private int Ca = DEFAULT_SAMPLE_RATE;
    private int Cb = 3;
    private int Cc = 64;
    private int Cd = 0;
    private int Ce = -1;

    private native int lame_close(long j);

    private native int lame_encode(long j, short[] sArr, short[] sArr2, int i, byte[] bArr, int i2);

    private native int lame_encode_interleaved(long j, short[] sArr, int i, byte[] bArr, int i2);

    private native int lame_flush(long j, byte[] bArr, int i);

    private native long lame_init(int i, int i2, int i3, int i4, int i5, int i6, int i7);

    private native int lame_samples_to_encode(long j);

    private native int lame_write_vbr_header(long j, String str);

    static {
        System.loadLibrary("mp3lame");
    }

    public void setQuality(int i) {
        this.Cd = i;
    }

    public void setOutSampleRate(int i) {
        this.Ca = i;
    }

    public void setOutMode(int i) {
        this.Cb = i;
    }

    public void setOutBitRate(int i) {
        this.Cc = i;
    }

    public void setInSampleRate(int i) {
        this.BX = i;
    }

    public void setChannelCount(int i) {
        this.Bo = i;
    }

    public void setVBRQuality(int i) {
        this.Ce = i;
    }

    public boolean init() {
        this.BV = lame_init(this.BX, this.Cb, this.Bo, this.Ca, this.Cc, this.Cd, this.Ce);
        if (this.BV <= 0) {
            return false;
        }
        return true;
    }

    public int encode(short[] sArr, short[] sArr2, int i, byte[] bArr, int i2) {
        return lame_encode(this.BV, sArr, sArr2, i, bArr, i2);
    }

    public int encodeInterleaved(short[] sArr, int i, byte[] bArr, int i2) {
        return lame_encode_interleaved(this.BV, sArr, i, bArr, i2);
    }

    public int getSamplesToEncode() {
        return lame_samples_to_encode(this.BV);
    }

    public int flush(byte[] bArr, int i) {
        return lame_flush(this.BV, bArr, i);
    }

    public void writeVBRHeader(String str) {
        lame_write_vbr_header(this.BV, str);
    }

    public int close() {
        if (this.BV <= 0) {
            return -1;
        }
        int lame_close = lame_close(this.BV);
        this.BV = -1;
        return lame_close;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.BV > 0) {
            lame_close(this.BV);
        }
    }
}
