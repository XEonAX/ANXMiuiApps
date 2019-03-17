package com.taobao.tao.remotebusiness.listener;

import com.taobao.tao.remotebusiness.MtopBusiness;
import mtopsdk.mtop.common.MtopListener;

/* compiled from: MtopBaseListener */
abstract class b {
    protected MtopListener listener = null;
    protected MtopBusiness mtopBusiness = null;

    protected b(MtopBusiness mtopBusiness, MtopListener mtopListener) {
        this.mtopBusiness = mtopBusiness;
        this.listener = mtopListener;
    }
}
