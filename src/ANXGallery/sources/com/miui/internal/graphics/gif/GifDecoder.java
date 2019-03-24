package com.miui.internal.graphics.gif;

import android.content.res.MiuiConfiguration;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.Vector;

public class GifDecoder {
    public static final int MAX_DECODE_SIZE = 1048576;
    protected static final int MAX_STACK_SIZE = 4096;
    public static final int STATUS_DECODE_CANCEL = 3;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    protected int[] act;
    protected int bgColor;
    protected int bgIndex;
    protected byte[] block = new byte[256];
    protected int blockSize = 0;
    protected int delay = 0;
    protected int dispose = 0;
    private int eA;
    private int[] eB;
    private boolean eC = false;
    private long ex;
    private boolean ey;
    private int ez;
    protected Vector<GifFrame> frames;
    protected int[] gct;
    protected boolean gctFlag;
    protected int gctSize;
    private int height;
    protected int ih;
    protected Bitmap image;
    protected BufferedInputStream in;
    protected boolean interlace;
    protected int iw;
    protected int ix;
    protected int iy;
    protected int lastBgColor;
    protected Bitmap lastBitmap;
    protected int lastDispose = 0;
    protected int[] lct;
    protected boolean lctFlag;
    protected int lctSize;
    protected int loopCount = 1;
    protected int lrh;
    protected int lrw;
    protected int lrx;
    protected int lry;
    private boolean mCancel = false;
    private long mMaxDecodeSize = MiuiConfiguration.THEME_FLAG_ALARMSTYLE;
    protected int pixelAspect;
    protected byte[] pixelStack;
    protected byte[] pixels;
    protected short[] prefix;
    protected int status;
    protected byte[] suffix;
    protected int transIndex;
    protected boolean transparency = false;
    private int width;

    private static class GifFrame {
        public int delay;
        public Bitmap image;

        public GifFrame(Bitmap bitmap, int i) {
            this.image = bitmap;
            this.delay = i;
        }

        public void recycle() {
            if (this.image != null && !this.image.isRecycled()) {
                this.image.recycle();
            }
        }
    }

    public boolean isDecodeToTheEnd() {
        return this.ey;
    }

    public void setStartFrame(int i) {
        this.eA = i;
    }

    public void recycle() {
        if (this.frames != null) {
            int size = this.frames.size();
            for (int i = 0; i < size; i++) {
                ((GifFrame) this.frames.elementAt(i)).recycle();
            }
        }
    }

    public void setMaxDecodeSize(long j) {
        this.mMaxDecodeSize = j;
    }

    public int getDelay(int i) {
        this.delay = -1;
        int frameCount = getFrameCount();
        if (i >= 0 && i < frameCount) {
            this.delay = ((GifFrame) this.frames.elementAt(i)).delay;
        }
        return this.delay;
    }

    public int getFrameCount() {
        return this.frames == null ? 0 : this.frames.size();
    }

    public Bitmap getBitmap() {
        return getFrame(0);
    }

    public int getLoopCount() {
        return this.loopCount;
    }

    protected void setPixels() {
        int frameCount;
        int i;
        int i2;
        int i3;
        int i4;
        if (this.eB == null) {
            this.eB = new int[(this.width * this.height)];
        }
        int i5 = 0;
        if (this.lastDispose > 0) {
            if (this.lastDispose == 3) {
                frameCount = getFrameCount() - 2;
                if (frameCount > 0) {
                    Bitmap frame = getFrame(frameCount - 1);
                    if (!frame.equals(this.lastBitmap)) {
                        this.lastBitmap = frame;
                        this.lastBitmap.getPixels(this.eB, 0, this.width, 0, 0, this.width, this.height);
                    }
                } else {
                    this.lastBitmap = null;
                    this.eB = new int[(this.width * this.height)];
                }
            }
            if (this.lastBitmap != null && this.lastDispose == 2) {
                if (this.transparency) {
                    frameCount = 0;
                } else {
                    frameCount = this.lastBgColor;
                }
                i = (this.lry * this.width) + this.lrx;
                for (i2 = 0; i2 < this.lrh; i2++) {
                    i3 = this.lrw + i;
                    for (i4 = i; i4 < i3; i4++) {
                        this.eB[i4] = frameCount;
                    }
                    i += this.width;
                }
            }
        }
        i = 8;
        frameCount = 0;
        i2 = 1;
        while (i5 < this.ih) {
            if (this.interlace) {
                if (frameCount >= this.ih) {
                    i2++;
                    switch (i2) {
                        case 2:
                            frameCount = 4;
                            break;
                        case 3:
                            frameCount = 2;
                            i = 4;
                            break;
                        case 4:
                            i = 2;
                            frameCount = 1;
                            break;
                    }
                }
                i3 = frameCount + i;
            } else {
                i3 = frameCount;
                frameCount = i5;
            }
            frameCount += this.iy;
            if (frameCount < this.height) {
                frameCount *= this.width;
                i4 = this.ix + frameCount;
                int i6 = this.iw + i4;
                if (this.width + frameCount < i6) {
                    i6 = this.width + frameCount;
                }
                frameCount = this.iw * i5;
                while (i4 < i6) {
                    int i7 = frameCount + 1;
                    frameCount = this.act[this.pixels[frameCount] & 255];
                    if (frameCount != 0) {
                        this.eB[i4] = frameCount;
                    }
                    i4++;
                    frameCount = i7;
                }
            }
            i5++;
            frameCount = i3;
        }
        if (!(this.ez > this.eA || this.image == null || this.image.isRecycled())) {
            this.image.recycle();
        }
        this.image = Bitmap.createBitmap(this.eB, this.width, this.height, Config.ARGB_8888);
    }

    public Bitmap getFrame(int i) {
        int frameCount = getFrameCount();
        if (frameCount <= 0) {
            return null;
        }
        return ((GifFrame) this.frames.elementAt(i % frameCount)).image;
    }

    public void requestCancelDecode() {
        this.mCancel = true;
        I();
    }

    private void I() {
    }

    protected static int readOneByte(InputStream inputStream) {
        try {
            return inputStream.read();
        } catch (Exception e) {
            return -1;
        }
    }

    public static boolean isGifStream(InputStream inputStream) {
        int i = 0;
        if (inputStream == null) {
            return false;
        }
        String str = "";
        while (i < 6) {
            int readOneByte = readOneByte(inputStream);
            if (readOneByte == -1) {
                break;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append((char) readOneByte);
            str = stringBuilder.toString();
            i++;
        }
        return str.startsWith("GIF");
    }

    public int read(InputStream inputStream) {
        this.ey = false;
        if (this.eC) {
            throw new IllegalStateException("decoder cannot be called more than once");
        }
        this.eC = true;
        init();
        if (inputStream != null) {
            this.in = new BufferedInputStream(inputStream);
            try {
                readHeader();
                if (!(this.mCancel || err())) {
                    readContents();
                    if (getFrameCount() < 0) {
                        this.status = 1;
                    }
                }
            } catch (OutOfMemoryError e) {
                this.status = 2;
                recycle();
            }
        } else {
            this.status = 2;
        }
        if (this.mCancel) {
            recycle();
            this.status = 3;
        }
        return this.status;
    }

    protected void decodeBitmapData() {
        int i;
        int i2 = this.iw * this.ih;
        if (this.pixels == null || this.pixels.length < i2) {
            this.pixels = new byte[i2];
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[4097];
        }
        int read = read();
        int i3 = 1 << read;
        int i4 = i3 + 1;
        int i5 = i3 + 2;
        read++;
        int i6 = (1 << read) - 1;
        for (i = 0; i < i3; i++) {
            this.prefix[i] = (short) 0;
            this.suffix[i] = (byte) i;
        }
        int i7 = read;
        int i8 = i6;
        int i9 = 0;
        int i10 = i9;
        int i11 = i10;
        int i12 = i11;
        int i13 = i12;
        int i14 = i13;
        int i15 = i14;
        int i16 = i15;
        int i17 = -1;
        int i18 = i5;
        while (i9 < i2) {
            int i19;
            int i20;
            int i21;
            if (i10 == 0) {
                if (i11 >= i7) {
                    i = i13 & i8;
                    i13 >>= i7;
                    i11 -= i7;
                    if (i > i18 || i == i4) {
                        break;
                    } else if (i == i3) {
                        i7 = read;
                        i18 = i5;
                        i8 = i6;
                        i17 = -1;
                    } else if (i17 == -1) {
                        i21 = i10 + 1;
                        i19 = read;
                        this.pixelStack[i10] = this.suffix[i];
                        i10 = i21;
                        i17 = i;
                        i15 = i17;
                        read = i19;
                    } else {
                        int i22;
                        i19 = read;
                        if (i == i18) {
                            i22 = i10 + 1;
                            this.pixelStack[i10] = (byte) i15;
                            read = i17;
                        } else {
                            read = i;
                            i22 = i10;
                        }
                        while (read > i3) {
                            i10 = i22 + 1;
                            i20 = i3;
                            this.pixelStack[i22] = this.suffix[read];
                            read = this.prefix[read];
                            i22 = i10;
                            i3 = i20;
                        }
                        i20 = i3;
                        read = this.suffix[read] & 255;
                        if (i18 >= 4096) {
                            break;
                        }
                        i10 = i22 + 1;
                        byte b = (byte) read;
                        this.pixelStack[i22] = b;
                        this.prefix[i18] = (short) i17;
                        this.suffix[i18] = b;
                        i18++;
                        if ((i18 & i8) == 0) {
                            if (i18 < 4096) {
                                i7++;
                                i8 += i18;
                            }
                        }
                        i15 = read;
                        i17 = i;
                    }
                } else {
                    if (i12 == 0) {
                        i12 = readBlock();
                        if (i12 <= 0) {
                            break;
                        }
                        i14 = 0;
                    }
                    i13 += (this.block[i14] & 255) << i11;
                    i11 += 8;
                    i14++;
                    i12--;
                }
            } else {
                i19 = read;
                i20 = i3;
                i21 = i15;
            }
            i10--;
            i = i16 + 1;
            this.pixels[i16] = this.pixelStack[i10];
            i9++;
            i16 = i;
            read = i19;
            i3 = i20;
        }
        for (read = i16; read < i2; read++) {
            this.pixels[read] = (byte) 0;
        }
    }

    protected boolean err() {
        return this.status != 0;
    }

    protected void init() {
        this.status = 0;
        this.frames = new Vector();
        this.gct = null;
        this.lct = null;
    }

    protected int read() {
        try {
            return this.in.read();
        } catch (Exception e) {
            this.status = 1;
            return 0;
        }
    }

    protected int readBlock() {
        this.blockSize = read();
        int i = 0;
        if (this.blockSize > 0) {
            while (i < this.blockSize) {
                try {
                    int read = this.in.read(this.block, i, this.blockSize - i);
                    if (read == -1) {
                        break;
                    }
                    i += read;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (i < this.blockSize) {
                this.status = 1;
            }
        }
        return i;
    }

    protected int[] readColorTable(int i) {
        int read;
        int i2 = 3 * i;
        byte[] bArr = new byte[i2];
        int i3 = 0;
        try {
            read = this.in.read(bArr, 0, bArr.length);
        } catch (Exception e) {
            e.printStackTrace();
            read = 0;
        }
        if (read < i2) {
            this.status = 1;
            return null;
        }
        int[] iArr = new int[256];
        read = 0;
        while (i3 < i) {
            int i4 = read + 1;
            int i5 = i4 + 1;
            int i6 = i5 + 1;
            int i7 = i3 + 1;
            iArr[i3] = ((((bArr[read] & 255) << 16) | -16777216) | ((bArr[i4] & 255) << 8)) | (bArr[i5] & 255);
            read = i6;
            i3 = i7;
        }
        return iArr;
    }

    public int getRealFrameCount() {
        if (this.ey) {
            return this.ez;
        }
        return 0;
    }

    protected void readContents() {
        this.ez = 0;
        int i = 0;
        while (i == 0 && !err() && !this.mCancel) {
            int read = read();
            if (read != 33) {
                if (read == 44) {
                    read = this.frames.size();
                    readBitmap();
                    if (this.frames.size() > read) {
                        this.ex += (long) (this.image.getRowBytes() * this.image.getHeight());
                    }
                    if (this.ex <= this.mMaxDecodeSize) {
                    }
                } else if (read != 59) {
                    this.status = 1;
                } else {
                    this.ey = true;
                }
                i = true;
            } else {
                read = read();
                if (read == 1) {
                    skip();
                } else if (read != 249) {
                    switch (read) {
                        case 254:
                            skip();
                            break;
                        case 255:
                            readBlock();
                            String str = "";
                            for (read = 0; read < 11; read++) {
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append(str);
                                stringBuilder.append((char) this.block[read]);
                                str = stringBuilder.toString();
                            }
                            if (!str.equals("NETSCAPE2.0")) {
                                skip();
                                break;
                            } else {
                                readNetscapeExt();
                                break;
                            }
                        default:
                            skip();
                            break;
                    }
                } else {
                    readGraphicControlExt();
                }
            }
        }
    }

    protected void readGraphicControlExt() {
        read();
        int read = read();
        this.dispose = (read & 28) >> 2;
        boolean z = true;
        if (this.dispose == 0) {
            this.dispose = 1;
        }
        if ((read & 1) == 0) {
            z = false;
        }
        this.transparency = z;
        this.delay = readShort() * 10;
        if (this.delay <= 0) {
            this.delay = 100;
        }
        this.transIndex = read();
        read();
    }

    protected void readHeader() {
        if (!this.mCancel) {
            String str = "";
            for (int i = 0; i < 6; i++) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append((char) read());
                str = stringBuilder.toString();
            }
            if (str.startsWith("GIF")) {
                readLSD();
                if (this.gctFlag && !err()) {
                    this.gct = readColorTable(this.gctSize);
                    this.bgColor = this.gct[this.bgIndex];
                }
                return;
            }
            this.status = 1;
        }
    }

    protected void readBitmap() {
        this.ix = readShort();
        this.iy = readShort();
        this.iw = readShort();
        this.ih = readShort();
        int read = read();
        this.lctFlag = (read & 128) != 0;
        this.lctSize = 2 << (read & 7);
        this.interlace = (read & 64) != 0;
        if (this.lctFlag) {
            this.lct = readColorTable(this.lctSize);
            this.act = this.lct;
        } else {
            this.act = this.gct;
            if (this.bgIndex == this.transIndex) {
                this.bgColor = 0;
            }
        }
        if (this.transparency) {
            read = this.act[this.transIndex];
            this.act[this.transIndex] = 0;
        } else {
            read = 0;
        }
        if (this.act == null) {
            this.status = 1;
        }
        if (!err()) {
            decodeBitmapData();
            skip();
            if (!err() && !this.mCancel) {
                setPixels();
                if (this.ez >= this.eA) {
                    this.frames.addElement(new GifFrame(this.image, this.delay));
                }
                this.ez++;
                if (this.transparency) {
                    this.act[this.transIndex] = read;
                }
                resetFrame();
            }
        }
    }

    protected void readLSD() {
        this.width = readShort();
        this.height = readShort();
        int read = read();
        this.gctFlag = (read & 128) != 0;
        this.gctSize = 2 << (read & 7);
        this.bgIndex = read();
        this.pixelAspect = read();
    }

    protected void readNetscapeExt() {
        do {
            readBlock();
            if (this.block[0] == (byte) 1) {
                this.loopCount = (this.block[1] & 255) | ((this.block[2] & 255) << 8);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    protected int readShort() {
        return read() | (read() << 8);
    }

    protected void resetFrame() {
        this.lastDispose = this.dispose;
        this.lrx = this.ix;
        this.lry = this.iy;
        this.lrw = this.iw;
        this.lrh = this.ih;
        this.lastBitmap = this.image;
        this.lastBgColor = this.bgColor;
        this.dispose = 0;
        this.transparency = false;
        this.delay = 0;
        this.lct = null;
    }

    protected void skip() {
        do {
            readBlock();
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }
}
