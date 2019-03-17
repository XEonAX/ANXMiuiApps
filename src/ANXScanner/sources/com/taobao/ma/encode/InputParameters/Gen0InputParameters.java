package com.taobao.ma.encode.InputParameters;

public class Gen0InputParameters extends MaEncodeInputParameters {
    private static final int MAX_MARGIN = 20;
    public String hiddenData;
    public int margin;

    public Gen0InputParameters(int _qrSize, int _margin, String content, int _version) {
        this.type = 0;
        this.publicData = content;
        this.qrSize = _qrSize;
        this.margin = _margin;
        this.version = _version;
    }

    public Gen0InputParameters(int _qrSize, String content) {
        this.type = 0;
        this.publicData = content;
        this.qrSize = _qrSize;
        this.margin = 0;
    }

    public Gen0InputParameters(int _qrSize, String content, String _hidden) {
        this.type = 0;
        this.hiddenData = _hidden;
        this.publicData = content;
        this.qrSize = _qrSize;
        this.margin = 0;
    }

    private int calcMargin(int version, int _qrSize) {
        int __dim = (version * 4) + 17;
        int cellSize = _qrSize / __dim;
        if (_qrSize % __dim == 0) {
            return 0;
        }
        for (int __margin = 0; __margin <= 20; __margin++) {
            if (_qrSize % ((__margin * 2) + __dim) == 0) {
                return __margin;
            }
        }
        return -1;
    }

    public boolean isLegal() {
        super.isLegal();
        int _margin4calc = this.margin;
        if (this.margin <= 0) {
        }
        return true;
    }
}
