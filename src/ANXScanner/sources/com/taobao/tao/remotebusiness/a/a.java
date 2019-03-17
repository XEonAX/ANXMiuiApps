package com.taobao.tao.remotebusiness.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.taobao.tao.remotebusiness.IRemoteProcessListener;
import com.taobao.tao.remotebusiness.MtopBusiness;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.common.MtopEvent;
import mtopsdk.mtop.common.MtopHeaderEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopProgressEvent;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.mtop.util.MtopStatistics.RbStatisticData;

/* compiled from: HandlerMgr */
public final class a extends Handler {
    private static Handler a;

    private a(Looper looper) {
        super(looper);
    }

    public static synchronized Handler a() {
        Handler handler;
        synchronized (a.class) {
            if (a == null) {
                a = new a(Looper.getMainLooper());
            }
            handler = a;
        }
        return handler;
    }

    public final void handleMessage(Message message) {
        b bVar;
        switch (message.what) {
            case 1:
                bVar = (b) message.obj;
                if (a(bVar)) {
                    TBSdkLog.i("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "onReceive: ON_DATA_RECEIVED.");
                    ((IRemoteProcessListener) bVar.a).onDataReceived((MtopProgressEvent) bVar.b, bVar.d.getReqContext());
                    break;
                }
                return;
            case 2:
                bVar = (b) message.obj;
                if (a(bVar)) {
                    TBSdkLog.i("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "onReceive: ON_HEADER.");
                    try {
                        ((IRemoteProcessListener) bVar.a).onHeader((MtopHeaderEvent) bVar.b, bVar.d.getReqContext());
                        break;
                    } catch (Throwable th) {
                        TBSdkLog.e("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "listener onHeader callback error.", th);
                        break;
                    }
                }
                return;
            case 3:
                bVar = (b) message.obj;
                if (a(bVar)) {
                    MtopStatistics mtopStat;
                    RbStatisticData rbStatData;
                    TBSdkLog.i("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "onReceive: ON_FINISHED.");
                    long currentTimeMillis = System.currentTimeMillis();
                    long j = 0;
                    if (bVar.e != null) {
                        mtopStat = bVar.e.getMtopStat();
                        if (mtopStat != null) {
                            rbStatData = mtopStat.getRbStatData();
                            rbStatData.toMainThTime = currentTimeMillis - bVar.d.onBgFinishTime;
                            if (bVar.e.getBytedata() != null) {
                                j = (long) bVar.e.getBytedata().length;
                            }
                        } else {
                            rbStatData = null;
                        }
                    } else {
                        rbStatData = null;
                        mtopStat = null;
                    }
                    bVar.d.doFinish(bVar.e, bVar.c);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("doFinishTime=").append(currentTimeMillis2 - currentTimeMillis).append("; dataSize=").append(j).append("; ");
                        if (rbStatData != null) {
                            stringBuilder.append(rbStatData.toString());
                        }
                        TBSdkLog.i("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "onReceive: ON_FINISHED. " + stringBuilder.toString());
                    }
                    if (mtopStat != null) {
                        mtopStat.commitStatData(true);
                        break;
                    }
                }
                return;
                break;
        }
        message.obj = null;
    }

    public static b a(MtopListener mtopListener, MtopEvent mtopEvent, MtopBusiness mtopBusiness) {
        return new b(mtopListener, mtopEvent, mtopBusiness);
    }

    private static boolean a(b bVar) {
        if (bVar == null) {
            TBSdkLog.e("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "HandlerMsg is null.");
            return false;
        } else if (!bVar.d.isTaskCanceled()) {
            return true;
        } else {
            TBSdkLog.i("mtop.rb-HandlerMgr", bVar.d.getSeqNo(), "The request of RemoteBusiness is canceled.");
            return false;
        }
    }
}
