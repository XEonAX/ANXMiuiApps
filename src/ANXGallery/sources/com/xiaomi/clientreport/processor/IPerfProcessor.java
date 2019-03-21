package com.xiaomi.clientreport.processor;

import com.xiaomi.clientreport.data.BaseClientReport;
import java.util.HashMap;

public interface IPerfProcessor extends IDataSend, IWrite {
    void setPerfMap(HashMap<String, HashMap<String, BaseClientReport>> hashMap);
}
