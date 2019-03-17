package com.alibaba.baichuan.trade.biz.applink.adapter;

import android.content.Context;
import java.util.Map;

public interface IAlibcApplink {
    AlibcNavResult jumpDetail(Context context, AlibcFailModeType alibcFailModeType, Map<String, Object> map);

    AlibcNavResult jumpShop(Context context, AlibcFailModeType alibcFailModeType, Map<String, Object> map);

    AlibcNavResult jumpTBURI(Context context, AlibcFailModeType alibcFailModeType, Map<String, Object> map);
}
