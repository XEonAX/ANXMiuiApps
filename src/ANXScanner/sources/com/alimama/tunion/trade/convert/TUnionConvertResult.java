package com.alimama.tunion.trade.convert;

public class TUnionConvertResult {
    private TUnionJumpType a;
    private String b;

    public TUnionConvertResult(TUnionJumpType tUnionJumpType, String str) {
        this.a = tUnionJumpType;
        this.b = str;
    }

    public TUnionJumpType getJumpType() {
        return this.a;
    }

    public void setJumpType(TUnionJumpType tUnionJumpType) {
        this.a = tUnionJumpType;
    }

    public String getResultUrl() {
        return this.b;
    }

    public void setResultUrl(String str) {
        this.b = str;
    }
}
