package com.alibaba.baichuan.android.trade.page;

import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;

public class AlibcMiniDetailPage extends AlibcDetailPage {
    public AlibcMiniDetailPage(String str) {
        super(str);
    }

    protected String a() {
        return AlibcContext.MINI_SHOUTAO_ITEM_DETAIL_URL;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOW_MINI_ITEM_DETAIL;
    }

    public int requireOpenType() {
        return 1;
    }
}
