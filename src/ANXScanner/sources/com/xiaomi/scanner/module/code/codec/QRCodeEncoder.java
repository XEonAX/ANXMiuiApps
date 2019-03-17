package com.xiaomi.scanner.module.code.codec;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.v4.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.Hashtable;
import mtopsdk.common.util.SymbolExpUtil;

public class QRCodeEncoder {
    public static BitMatrix encodeTextToBitMatrix(String text, int imageLenth) throws WriterException {
        Hashtable<EncodeHintType, String> hints = new Hashtable();
        hints.put(EncodeHintType.CHARACTER_SET, SymbolExpUtil.CHARSET_UTF8);
        return new QRCodeWriter().encode(text, BarcodeFormat.QR_CODE, imageLenth, imageLenth, hints);
    }

    public static Bitmap encodeText(String text, int imageLenth) throws WriterException {
        return encodeText(text, imageLenth, ViewCompat.MEASURED_STATE_MASK);
    }

    public static Bitmap encodeText(String text, int imageLenth, int blockColor) throws WriterException {
        BitMatrix matrix = encodeTextToBitMatrix(text, imageLenth);
        int[] pixels = new int[(imageLenth * imageLenth)];
        for (int y = 0; y < imageLenth; y++) {
            for (int x = 0; x < imageLenth; x++) {
                if (matrix.get(x, y)) {
                    pixels[(y * imageLenth) + x] = blockColor;
                } else {
                    pixels[(y * imageLenth) + x] = -1;
                }
            }
        }
        return Bitmap.createBitmap(pixels, imageLenth, imageLenth, Config.ARGB_8888);
    }
}
