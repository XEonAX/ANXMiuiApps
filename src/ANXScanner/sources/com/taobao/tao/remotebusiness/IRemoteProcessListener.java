package com.taobao.tao.remotebusiness;

import mtopsdk.mtop.common.MtopHeaderEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopProgressEvent;

public interface IRemoteProcessListener extends MtopListener {
    void onDataReceived(MtopProgressEvent mtopProgressEvent, Object obj);

    void onHeader(MtopHeaderEvent mtopHeaderEvent, Object obj);
}
