package com.adobe.xmp.impl;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.UnsupportedEncodingException;
import org.keyczar.Keyczar;

public class Latin1Converter {
    public static ByteBuffer convert(ByteBuffer buffer) {
        if (!Keyczar.DEFAULT_ENCODING.equals(buffer.getEncoding())) {
            return buffer;
        }
        byte[] readAheadBuffer = new byte[8];
        int readAhead = 0;
        int expectedBytes = 0;
        ByteBuffer byteBuffer = new ByteBuffer((buffer.length() * 4) / 3);
        int state = 0;
        int i = 0;
        while (i < buffer.length()) {
            int b = buffer.charAt(i);
            int readAhead2;
            switch (state) {
                case 11:
                    if (expectedBytes > 0 && (b & 192) == 128) {
                        readAhead2 = readAhead + 1;
                        readAheadBuffer[readAhead] = (byte) b;
                        expectedBytes--;
                        if (expectedBytes != 0) {
                            readAhead = readAhead2;
                            break;
                        }
                        byteBuffer.append(readAheadBuffer, 0, readAhead2);
                        readAhead = 0;
                        state = 0;
                        break;
                    }
                    byteBuffer.append(convertToUTF8(readAheadBuffer[0]));
                    i -= readAhead;
                    readAhead = 0;
                    state = 0;
                    break;
                    break;
                default:
                    if (b >= BaiduSceneResult.BANK_CARD) {
                        if (b < 192) {
                            byteBuffer.append(convertToUTF8((byte) b));
                            break;
                        }
                        expectedBytes = -1;
                        int test = b;
                        while (expectedBytes < 8 && (test & 128) == 128) {
                            expectedBytes++;
                            test <<= 1;
                        }
                        readAhead2 = readAhead + 1;
                        readAheadBuffer[readAhead] = (byte) b;
                        state = 11;
                        readAhead = readAhead2;
                        break;
                    }
                    byteBuffer.append((byte) b);
                    break;
                    break;
            }
            i++;
        }
        if (state != 11) {
            return byteBuffer;
        }
        for (int j = 0; j < readAhead; j++) {
            byteBuffer.append(convertToUTF8(readAheadBuffer[j]));
        }
        return byteBuffer;
    }

    private static byte[] convertToUTF8(byte ch) {
        int c = ch & 255;
        if (c >= 128) {
            if (c == BaiduSceneResult.ACCOUNT_BOOK || c == BaiduSceneResult.GAME || c == BaiduSceneResult.BLACK_WHITE || c == BaiduSceneResult.TAG_COUNT || c == 157) {
                try {
                    return new byte[]{(byte) 32};
                } catch (UnsupportedEncodingException e) {
                }
            } else {
                return new String(new byte[]{ch}, "cp1252").getBytes(Keyczar.DEFAULT_ENCODING);
            }
        }
        return new byte[]{ch};
    }
}
