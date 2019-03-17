package com.alibaba.fastjson.util;

import com.alibaba.fastjson.asm.Opcodes;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

public class UTF8Decoder extends CharsetDecoder {
    private static final Charset charset = Charset.forName("UTF-8");

    private static class Surrogate {
        static final /* synthetic */ boolean $assertionsDisabled = (!UTF8Decoder.class.desiredAssertionStatus());
        public static final int UCS4_MAX = 1114111;
        public static final int UCS4_MIN = 65536;

        private Surrogate() {
        }

        public static boolean neededFor(int uc) {
            return uc >= 65536 && uc <= UCS4_MAX;
        }

        public static char high(int uc) {
            if ($assertionsDisabled || neededFor(uc)) {
                return (char) (55296 | (((uc - 65536) >> 10) & 1023));
            }
            throw new AssertionError();
        }

        public static char low(int uc) {
            if ($assertionsDisabled || neededFor(uc)) {
                return (char) (56320 | ((uc - 65536) & 1023));
            }
            throw new AssertionError();
        }
    }

    public UTF8Decoder() {
        super(charset, 1.0f, 1.0f);
    }

    private static boolean isNotContinuation(int b) {
        return (b & Opcodes.CHECKCAST) != 128;
    }

    private static boolean isMalformed2(int b1, int b2) {
        return (b1 & 30) == 0 || (b2 & Opcodes.CHECKCAST) != 128;
    }

    private static boolean isMalformed3(int b1, int b2, int b3) {
        return ((b1 != -32 || (b2 & 224) != 128) && (b2 & Opcodes.CHECKCAST) == 128 && (b3 & Opcodes.CHECKCAST) == 128) ? false : true;
    }

    private static boolean isMalformed4(int b2, int b3, int b4) {
        return ((b2 & Opcodes.CHECKCAST) == 128 && (b3 & Opcodes.CHECKCAST) == 128 && (b4 & Opcodes.CHECKCAST) == 128) ? false : true;
    }

    private static CoderResult lookupN(ByteBuffer src, int n) {
        for (int i = 1; i < n; i++) {
            if (isNotContinuation(src.get())) {
                return CoderResult.malformedForLength(i);
            }
        }
        return CoderResult.malformedForLength(n);
    }

    public static CoderResult malformedN(ByteBuffer src, int nb) {
        int i = 2;
        int b1;
        int b2;
        switch (nb) {
            case 1:
                b1 = src.get();
                if ((b1 >> 2) == -2) {
                    if (src.remaining() < 4) {
                        return CoderResult.UNDERFLOW;
                    }
                    return lookupN(src, 5);
                } else if ((b1 >> 1) != -2) {
                    return CoderResult.malformedForLength(1);
                } else {
                    if (src.remaining() < 5) {
                        return CoderResult.UNDERFLOW;
                    }
                    return lookupN(src, 6);
                }
            case 2:
                return CoderResult.malformedForLength(1);
            case 3:
                b1 = src.get();
                b2 = src.get();
                if ((b1 == -32 && (b2 & 224) == 128) || isNotContinuation(b2)) {
                    i = 1;
                }
                return CoderResult.malformedForLength(i);
            case 4:
                b1 = src.get() & 255;
                b2 = src.get() & 255;
                if (b1 > 244 || ((b1 == 240 && (b2 < 144 || b2 > 191)) || ((b1 == 244 && (b2 & 240) != 128) || isNotContinuation(b2)))) {
                    return CoderResult.malformedForLength(1);
                }
                if (isNotContinuation(src.get())) {
                    return CoderResult.malformedForLength(2);
                }
                return CoderResult.malformedForLength(3);
            default:
                throw new IllegalStateException();
        }
    }

    private static CoderResult malformed(ByteBuffer src, int sp, CharBuffer dst, int dp, int nb) {
        src.position(sp - src.arrayOffset());
        CoderResult cr = malformedN(src, nb);
        updatePositions(src, sp, dst, dp);
        return cr;
    }

    private static CoderResult xflow(Buffer src, int sp, int sl, Buffer dst, int dp, int nb) {
        updatePositions(src, sp, dst, dp);
        return (nb == 0 || sl - sp < nb) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
    }

    private CoderResult decodeArrayLoop(ByteBuffer src, CharBuffer dst) {
        byte[] srcArray = src.array();
        int srcPosition = src.arrayOffset() + src.position();
        int srcLength = src.arrayOffset() + src.limit();
        char[] destArray = dst.array();
        int destPosition = dst.arrayOffset() + dst.position();
        int destLength = dst.arrayOffset() + dst.limit();
        int destLengthASCII = destPosition + Math.min(srcLength - srcPosition, destLength - destPosition);
        int destPosition2 = destPosition;
        int srcPosition2 = srcPosition;
        while (destPosition2 < destLengthASCII && srcArray[srcPosition2] >= (byte) 0) {
            destPosition = destPosition2 + 1;
            srcPosition = srcPosition2 + 1;
            destArray[destPosition2] = (char) srcArray[srcPosition2];
            destPosition2 = destPosition;
            srcPosition2 = srcPosition;
        }
        destPosition = destPosition2;
        srcPosition = srcPosition2;
        while (srcPosition < srcLength) {
            int b1 = srcArray[srcPosition];
            int b2;
            int b3;
            if (b1 >= 0) {
                if (destPosition >= destLength) {
                    return xflow(src, srcPosition, srcLength, dst, destPosition, 1);
                }
                destPosition2 = destPosition + 1;
                destArray[destPosition] = (char) b1;
                srcPosition++;
                destPosition = destPosition2;
            } else if ((b1 >> 5) == -2) {
                if (srcLength - srcPosition < 2 || destPosition >= destLength) {
                    return xflow(src, srcPosition, srcLength, dst, destPosition, 2);
                }
                b2 = srcArray[srcPosition + 1];
                if (isMalformed2(b1, b2)) {
                    return malformed(src, srcPosition, dst, destPosition, 2);
                }
                destPosition2 = destPosition + 1;
                destArray[destPosition] = (char) (((b1 << 6) ^ b2) ^ 3968);
                srcPosition += 2;
                destPosition = destPosition2;
            } else if ((b1 >> 4) == -2) {
                if (srcLength - srcPosition < 3 || destPosition >= destLength) {
                    return xflow(src, srcPosition, srcLength, dst, destPosition, 3);
                }
                b2 = srcArray[srcPosition + 1];
                b3 = srcArray[srcPosition + 2];
                if (isMalformed3(b1, b2, b3)) {
                    return malformed(src, srcPosition, dst, destPosition, 3);
                }
                destPosition2 = destPosition + 1;
                destArray[destPosition] = (char) ((((b1 << 12) ^ (b2 << 6)) ^ b3) ^ 8064);
                srcPosition += 3;
                destPosition = destPosition2;
            } else if ((b1 >> 3) != -2) {
                return malformed(src, srcPosition, dst, destPosition, 1);
            } else {
                if (srcLength - srcPosition < 4 || destLength - destPosition < 2) {
                    return xflow(src, srcPosition, srcLength, dst, destPosition, 4);
                }
                b2 = srcArray[srcPosition + 1];
                b3 = srcArray[srcPosition + 2];
                int b4 = srcArray[srcPosition + 3];
                int uc = ((((b1 & 7) << 18) | ((b2 & 63) << 12)) | ((b3 & 63) << 6)) | (b4 & 63);
                if (isMalformed4(b2, b3, b4) || !Surrogate.neededFor(uc)) {
                    return malformed(src, srcPosition, dst, destPosition, 4);
                }
                destPosition2 = destPosition + 1;
                destArray[destPosition] = Surrogate.high(uc);
                destPosition = destPosition2 + 1;
                destArray[destPosition2] = Surrogate.low(uc);
                srcPosition += 4;
            }
        }
        return xflow(src, srcPosition, srcLength, dst, destPosition, 0);
    }

    protected CoderResult decodeLoop(ByteBuffer src, CharBuffer dst) {
        return decodeArrayLoop(src, dst);
    }

    static void updatePositions(Buffer src, int sp, Buffer dst, int dp) {
        src.position(sp);
        dst.position(dp);
    }
}
