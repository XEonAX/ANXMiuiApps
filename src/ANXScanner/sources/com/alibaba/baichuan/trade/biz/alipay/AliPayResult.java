package com.alibaba.baichuan.trade.biz.alipay;

import java.io.Serializable;
import java.util.List;

public class AliPayResult implements Serializable {
    public List<String> payFailedOrders;
    public List<String> paySuccessOrders;
}
