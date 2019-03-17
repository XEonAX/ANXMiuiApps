package com.taobao.ma.encode.InputParameters;

public class MaEncodeInputParameters {
    public char errorCorrectionLevel;
    public String errorMsg;
    public String publicData;
    public int qrSize;
    public int rotation;
    public int type;
    public int version;

    public MaEncodeInputParameters() {
        this.type = 0;
        this.publicData = null;
        this.qrSize = 0;
        this.version = 0;
        this.rotation = 0;
        this.errorMsg = "";
        this.errorCorrectionLevel = 'L';
        this.rotation = 0;
        this.qrSize = 0;
        this.version = 4;
    }

    public boolean isLegal() {
        if (this.qrSize <= 0) {
            this.errorMsg += "ERROR: qrSize <=0 ";
            return false;
        } else if (this.publicData != null) {
            return true;
        } else {
            this.errorMsg += "ERROR: publicData cant be null \n";
            return false;
        }
    }
}
