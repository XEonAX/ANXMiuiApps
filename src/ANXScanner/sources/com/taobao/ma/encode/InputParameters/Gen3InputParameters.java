package com.taobao.ma.encode.InputParameters;

import android.graphics.Bitmap;
import android.util.Log;
import com.taobao.ma.common.log.MaLogger;
import com.taobao.ma.encode.ImageHelper;

public class Gen3InputParameters extends MaEncodeInputParameters {
    public int bgImage_channel;
    public byte[] bgImage_data;
    public int bgImage_height;
    public int bgImage_step;
    public int bgImage_width;
    public char domainIndex;
    public int gen3format;
    public String hiddenData;
    public int margin;
    public int qrX;
    public int qrY;
    public int visual_level;

    public Gen3InputParameters(String _publicData, Bitmap bm) {
        this.publicData = _publicData;
        this.type = 3;
        this.visual_level = 2;
        this.qrX = 0;
        this.qrY = 0;
        this.domainIndex = '0';
        this.qrSize = bm.getWidth();
        this.gen3format = 0;
        initializeGen3InputBackgroundPictureParameters(bm);
    }

    public Gen3InputParameters(String _publicData, Bitmap bm, int _qrX, int _qrY, int _qrSize, int _visual_level, char _domain, int _version) {
        this.publicData = _publicData;
        this.type = 3;
        this.visual_level = _visual_level;
        this.qrX = _qrX;
        this.qrY = _qrY;
        this.qrSize = _qrSize;
        this.domainIndex = _domain;
        this.version = _version;
        this.gen3format = 0;
        initializeGen3InputBackgroundPictureParameters(bm);
    }

    public Gen3InputParameters(String _publicData, Bitmap bm, int _visual_level, char _domain, int _version, int _gen3format) {
        this.publicData = _publicData;
        this.type = 3;
        this.visual_level = _visual_level;
        this.qrX = 0;
        this.qrY = 0;
        this.qrSize = bm.getWidth();
        this.domainIndex = _domain;
        this.version = _version;
        this.gen3format = _gen3format;
        initializeGen3InputBackgroundPictureParameters(bm);
    }

    public Gen3InputParameters(String _publicData, Bitmap bm, int _visual_level, char _domain, int _version) {
        this.publicData = _publicData;
        this.type = 3;
        this.visual_level = _visual_level;
        this.qrX = 0;
        this.qrY = 0;
        this.qrSize = bm.getWidth();
        this.domainIndex = _domain;
        this.version = _version;
        this.gen3format = 0;
        initializeGen3InputBackgroundPictureParameters(bm);
    }

    public void initializeGen3InputBackgroundPictureParameters(Bitmap bm) {
        int __channel = 3;
        MaLogger.v("Gen3.initializeGen3InputBackgroundPictureParameters");
        try {
            if (bm.hasAlpha()) {
                __channel = 4;
            }
            this.bgImage_data = ImageHelper.getPixelDataRGB(bm, bm.getWidth(), bm.getHeight(), __channel);
            this.bgImage_channel = 3;
            this.bgImage_width = bm.getWidth();
            this.bgImage_height = bm.getHeight();
            this.bgImage_step = bm.getWidth() * 3;
        } catch (Exception ex) {
            MaLogger.v(ex.toString());
        }
    }

    public boolean isLegal() {
        super.isLegal();
        MaLogger.v("Gen3.isLegal1");
        if (this.bgImage_width <= 0 || this.bgImage_height <= 0) {
            MaLogger.v("Gen3.isLegal2");
            this.errorMsg += "ERROR: background image' width or height or channel is ilegal\n ";
            return false;
        } else if (this.visual_level < 0 || this.qrX < 0 || this.qrY < 0) {
            MaLogger.v("Gen3.isLegal3");
            this.errorMsg += "ERROR: qrX,qrY,visual_level,domainIndex\n error";
            return false;
        } else {
            Log.v("masdk209", "Gen3.isLegal4");
            return true;
        }
    }
}
