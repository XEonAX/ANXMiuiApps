package com.alibaba.mtl.log.sign;

public interface IRequestAuth {
    String getAppkey();

    String getSign(String str);
}
