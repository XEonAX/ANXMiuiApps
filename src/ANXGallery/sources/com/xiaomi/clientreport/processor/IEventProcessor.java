package com.xiaomi.clientreport.processor;

import com.xiaomi.clientreport.data.BaseClientReport;
import java.util.ArrayList;
import java.util.HashMap;

public interface IEventProcessor extends IDataSend, IWrite {
    void setEventMap(HashMap<String, ArrayList<BaseClientReport>> hashMap);
}
