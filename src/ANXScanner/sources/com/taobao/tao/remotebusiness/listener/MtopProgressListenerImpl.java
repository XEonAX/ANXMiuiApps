package com.taobao.tao.remotebusiness.listener;

import com.taobao.tao.remotebusiness.IRemoteProcessListener;
import com.taobao.tao.remotebusiness.MtopBusiness;
import com.taobao.tao.remotebusiness.a.a;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.common.MtopCallback.MtopHeaderListener;
import mtopsdk.mtop.common.MtopCallback.MtopProgressListener;
import mtopsdk.mtop.common.MtopHeaderEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopProgressEvent;

class MtopProgressListenerImpl extends b implements MtopHeaderListener, MtopProgressListener {
    private static final String TAG = "mtop.rb-ProgressListener";

    public MtopProgressListenerImpl(MtopBusiness mtopBusiness, MtopListener mtopListener) {
        super(mtopBusiness, mtopListener);
    }

    public void onDataReceived(MtopProgressEvent mtopProgressEvent, Object obj) {
        TBSdkLog.i(TAG, this.mtopBusiness.getSeqNo(), "Mtop onDataReceived event received.");
        if (this.mtopBusiness.isTaskCanceled()) {
            TBSdkLog.d(TAG, this.mtopBusiness.getSeqNo(), "The request of RemoteBusiness is canceled.");
        } else if (this.listener == null) {
            TBSdkLog.d(TAG, this.mtopBusiness.getSeqNo(), "The listener of RemoteBusiness is null.");
        } else if (this.listener instanceof IRemoteProcessListener) {
            a.a().obtainMessage(1, a.a(this.listener, mtopProgressEvent, this.mtopBusiness)).sendToTarget();
        }
    }

    public void onHeader(MtopHeaderEvent mtopHeaderEvent, Object obj) {
        TBSdkLog.i(TAG, this.mtopBusiness.getSeqNo(), "Mtop onHeader event received.");
        if (this.mtopBusiness.isTaskCanceled()) {
            TBSdkLog.d(TAG, this.mtopBusiness.getSeqNo(), "The request of RemoteBusiness is canceled.");
        } else if (this.listener == null) {
            TBSdkLog.d(TAG, this.mtopBusiness.getSeqNo(), "The listener of RemoteBusiness is null.");
        } else if (this.listener instanceof IRemoteProcessListener) {
            a.a().obtainMessage(2, a.a(this.listener, mtopHeaderEvent, this.mtopBusiness)).sendToTarget();
        }
    }
}
