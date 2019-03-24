package miui.media;

import com.miui.internal.widget.ActionBarMovableLayout;
import java.nio.MappedByteBuffer;
import miui.media.Recorder.ErrorCode;

class d {
    d() {
    }

    public static int e(int i, boolean z) {
        if (!z) {
            switch (i) {
                case 1:
                    return 1001;
                case 2:
                    return 1002;
                case 3:
                    return 1003;
                case 4:
                    return 1004;
                case 5:
                    return 1005;
                case 6:
                    return 1006;
                case 7:
                    return ErrorCode.MAX_SIZE_REACHED;
                case 8:
                    return ErrorCode.FILE_NOT_EXIST;
            }
        } else if (i == 100) {
            return ErrorCode.SERVER_DIED;
        } else {
            switch (i) {
                case ActionBarMovableLayout.DEFAULT_SPRING_BACK_DURATION /*800*/:
                    return ErrorCode.MAX_DURATION_REACHED;
                case 801:
                    return ErrorCode.MAX_SIZE_REACHED;
            }
        }
        return ErrorCode.UNKNOWN;
    }

    public static byte[] j(int i, int i2) {
        i = i == 16 ? 1 : 2;
        r3 = new byte[44];
        long j = (long) (((i2 * i) * 16) / 8);
        r3[28] = (byte) ((int) (j & 255));
        r3[29] = (byte) ((int) ((j >> 8) & 255));
        r3[30] = (byte) ((int) ((j >> 16) & 255));
        r3[31] = (byte) ((int) ((j >> 24) & 255));
        r3[32] = (byte) ((i * 16) / 8);
        r3[33] = (byte) 0;
        r3[34] = (byte) 16;
        r3[35] = (byte) 0;
        r3[36] = (byte) 100;
        r3[37] = (byte) 97;
        r3[38] = (byte) 116;
        r3[39] = (byte) 97;
        r3[40] = (byte) 0;
        r3[41] = (byte) 0;
        r3[42] = (byte) 0;
        r3[43] = (byte) 0;
        return r3;
    }

    public static void a(MappedByteBuffer mappedByteBuffer, int i, byte[] bArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            mappedByteBuffer.put(i + i2, bArr[i2]);
        }
    }

    public static byte[] g(long j) {
        return new byte[]{(byte) ((int) (j & 255)), (byte) ((int) ((j >> 8) & 255)), (byte) ((int) ((j >> 16) & 255)), (byte) ((int) ((j >> 24) & 255))};
    }

    public static byte[] b(short[] sArr, int i) {
        byte[] bArr = new byte[(i * 2)];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            bArr[i3] = (byte) (sArr[i2] & 255);
            bArr[i3 + 1] = (byte) (sArr[i2] >> 8);
            sArr[i2] = (short) 0;
        }
        return bArr;
    }
}
