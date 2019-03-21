package com.xiaomi.clientreport.processor;

import com.xiaomi.clientreport.data.BaseClientReport;

public interface IWrite {
    void preProcess(BaseClientReport baseClientReport);

    void process();
}
