package com.taobao.tao.remotebusiness.a;

import com.taobao.tao.remotebusiness.MtopBusiness;
import java.io.Serializable;
import mtopsdk.mtop.common.MtopEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.domain.BaseOutDo;
import mtopsdk.mtop.domain.MtopResponse;

/* compiled from: HandlerParam */
public final class b implements Serializable {
    public MtopListener a;
    public MtopEvent b;
    public BaseOutDo c;
    public MtopBusiness d;
    public MtopResponse e;

    public b(MtopListener mtopListener, MtopEvent mtopEvent, MtopBusiness mtopBusiness) {
        this.a = mtopListener;
        this.b = mtopEvent;
        this.d = mtopBusiness;
    }
}
