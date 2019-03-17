package com.taobao.ma.encode.InputParameters;

public class Gen1InputParameters extends MaEncodeInputParameters {
    public byte[] background_img;
    public int background_img_channel;
    public int background_img_depth;
    public int background_img_height;
    public int background_img_width;
    public String hiddenData;
    public int margin;
    public int qrX;
    public int qrY;

    public Gen1InputParameters() {
        this.type = 1;
    }

    public boolean isLegal() {
        super.isLegal();
        if (this.background_img.length <= 0 || this.background_img_width <= 0 || this.background_img_width <= 0 || this.background_img_channel <= 0) {
            this.errorMsg += "ERROR: background image' width or height or channel is ilegal\n ";
            return false;
        }
        int _margin4calc = this.margin;
        if (this.margin <= 0) {
            _margin4calc = 0;
        }
        int _version4calc = this.version;
        if (this.version <= 0) {
            _version4calc = 0;
        }
        if (this.qrSize % (((_version4calc * 4) + 17) + (_margin4calc * 2)) == 0) {
            return true;
        }
        this.errorMsg += "ERROR: width , version , margin should according to the formula:  width % (17 + _version *4 + 2*margin) == 0 \n";
        return false;
    }
}
