package com.taobao.ma.common.result;

public enum MaType {
    PRODUCT(0, 255),
    MEDICINE(2, 255),
    EXPRESS(2, 255),
    QR(1, 512),
    TB_ANTI_FAKE(1, 512),
    TB_4G(1, 2048),
    DM(1, 1024),
    GEN3(1, 32768);
    
    private int discernType;
    private int type;

    private MaType(int type, int discernType) {
        this.type = type;
        this.discernType = discernType;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getDiscernType() {
        return this.discernType;
    }

    public void setDiscernType(int discernType) {
        this.discernType = discernType;
    }
}
