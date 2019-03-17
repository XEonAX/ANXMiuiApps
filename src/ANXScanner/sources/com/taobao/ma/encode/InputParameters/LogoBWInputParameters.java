package com.taobao.ma.encode.InputParameters;

import android.graphics.Bitmap;
import com.taobao.ma.common.log.MaLogger;
import com.taobao.ma.encode.ImageHelper;

public class LogoBWInputParameters extends MaEncodeInputParameters {
    public int logoChannel;
    public byte[] logoData;
    public int logoHeight;
    public int logoSize;
    private int logoStep;
    public int logoWidth;
    public int logoX;
    public int logoY;
    public int margin;

    public LogoBWInputParameters(String content, Bitmap logo, int _margin, int _qrSize, char ecl) {
        this.errorCorrectionLevel = ecl;
        this.rotation = 0;
        this.qrSize = _qrSize;
        this.version = 4;
        this.type = 4;
        this.margin = _margin;
        initializeLogoPictureParameters(logo);
        this.publicData = content;
    }

    public LogoBWInputParameters(String content, Bitmap logo, int _margin, int _qrSize, char ecl, int _version) {
        this.errorCorrectionLevel = ecl;
        this.rotation = 0;
        this.qrSize = _qrSize;
        this.version = _version;
        this.type = 4;
        this.margin = _margin;
        initializeLogoPictureParameters(logo);
        this.publicData = content;
    }

    public boolean isLegal() {
        return true;
    }

    public void initializeLogoPictureParameters(Bitmap bm) {
        int __channel = 3;
        MaLogger.v("Gen3.initializeGen3InputBackgroundPictureParameters");
        try {
            if (bm.hasAlpha()) {
                __channel = 4;
            }
            this.logoData = ImageHelper.getPixelDataRGB(bm, bm.getWidth(), bm.getHeight(), __channel);
            MaLogger.v("length = " + this.logoData.length);
            this.logoChannel = 3;
            this.logoWidth = bm.getWidth();
            this.logoHeight = bm.getHeight();
            this.logoStep = bm.getWidth() * __channel;
        } catch (Exception ex) {
            MaLogger.v(ex.toString());
        }
    }
}
