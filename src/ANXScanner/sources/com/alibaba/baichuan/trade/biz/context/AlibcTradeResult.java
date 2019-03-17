package com.alibaba.baichuan.trade.biz.context;

import com.alibaba.baichuan.trade.biz.alipay.AliPayResult;
import java.io.Serializable;

public class AlibcTradeResult implements Serializable {
    public AliPayResult payResult;
    public AlibcResultType resultType;
}
