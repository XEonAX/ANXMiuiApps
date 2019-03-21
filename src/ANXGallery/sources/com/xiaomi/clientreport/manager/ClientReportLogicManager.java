package com.xiaomi.clientreport.manager;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.job.DataPreProcessJob;
import com.xiaomi.clientreport.job.EventUploadJob;
import com.xiaomi.clientreport.job.PerfUploadJob;
import com.xiaomi.clientreport.job.ReadAndSendJob;
import com.xiaomi.clientreport.job.WriteJob;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.clientreport.util.ClientReportUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ClientReportLogicManager {
    private static volatile ClientReportLogicManager sInstance;
    private Config mConfig;
    private Context mContext;
    private HashMap<String, ArrayList<BaseClientReport>> mEventMap = new HashMap();
    private IEventProcessor mEventProcessor;
    private ExecutorService mExecutor = Executors.newSingleThreadExecutor();
    private HashMap<String, HashMap<String, BaseClientReport>> mPerfMap = new HashMap();
    private IPerfProcessor mPerfProcessor;

    private ClientReportLogicManager(Context context) {
        this.mContext = context;
    }

    public static ClientReportLogicManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (ClientReportLogicManager.class) {
                if (sInstance == null) {
                    sInstance = new ClientReportLogicManager(context);
                }
            }
        }
        return sInstance;
    }

    public synchronized Config getConfig() {
        if (this.mConfig == null) {
            this.mConfig = Config.defaultConfig(this.mContext);
        }
        return this.mConfig;
    }

    public void startScheduleJob() {
        getInstance(this.mContext).startEventUploadJob();
        getInstance(this.mContext).startPerfUploadJob();
    }

    public void init(Config config, IEventProcessor eventProcessor, IPerfProcessor perfProcessor) {
        this.mConfig = config;
        this.mEventProcessor = eventProcessor;
        this.mPerfProcessor = perfProcessor;
        this.mEventProcessor.setEventMap(this.mEventMap);
        this.mPerfProcessor.setPerfMap(this.mPerfMap);
    }

    public void updateConfig(boolean eventOpen, boolean perfOpen, long eventFrequency, long perfFrequency) {
        if (this.mConfig == null) {
            return;
        }
        if (eventOpen != this.mConfig.isEventUploadSwitchOpen() || perfOpen != this.mConfig.isPerfUploadSwitchOpen() || eventFrequency != this.mConfig.getEventUploadFrequency() || perfFrequency != this.mConfig.getPerfUploadFrequency()) {
            long oldEventFrequency = this.mConfig.getEventUploadFrequency();
            long oldPerfFrequency = this.mConfig.getPerfUploadFrequency();
            Config newConfig = Config.getBuilder().setAESKey(ClientReportUtil.getEventKeyWithDefault(this.mContext)).setEventEncrypted(this.mConfig.isEventEncrypted()).setEventUploadSwitchOpen(eventOpen).setEventUploadFrequency(eventFrequency).setPerfUploadSwitchOpen(perfOpen).setPerfUploadFrequency(perfFrequency).build(this.mContext);
            this.mConfig = newConfig;
            if (!this.mConfig.isEventUploadSwitchOpen()) {
                ScheduledJobManager.getInstance(this.mContext).cancelJob(100886);
            } else if (oldEventFrequency != newConfig.getEventUploadFrequency()) {
                MyLog.v(this.mContext.getPackageName() + "reset event job " + newConfig.getEventUploadFrequency());
                startEventUploadJob();
            }
            if (!this.mConfig.isPerfUploadSwitchOpen()) {
                ScheduledJobManager.getInstance(this.mContext).cancelJob(100887);
            } else if (oldPerfFrequency != newConfig.getPerfUploadFrequency()) {
                MyLog.v(this.mContext.getPackageName() + "reset perf job " + newConfig.getPerfUploadFrequency());
                startPerfUploadJob();
            }
        }
    }

    private void delayRunJob(Runnable runnable, int delay) {
        ScheduledJobManager.getInstance(this.mContext).addOneShootJob(runnable, delay);
    }

    public void writeEvent(EventClientReport clientReport) {
        if (getConfig().isEventUploadSwitchOpen()) {
            this.mExecutor.execute(new DataPreProcessJob(this.mContext, clientReport, this.mEventProcessor));
            delayRunJob(new Runnable() {
                public void run() {
                    ClientReportLogicManager.this.mExecutor.execute(new WriteJob(ClientReportLogicManager.this.mContext, ClientReportLogicManager.this.mEventProcessor));
                }
            }, 30);
        }
    }

    public void writePerf(PerfClientReport clientReport) {
        if (getConfig().isPerfUploadSwitchOpen()) {
            this.mExecutor.execute(new DataPreProcessJob(this.mContext, clientReport, this.mPerfProcessor));
            delayRunJob(new Runnable() {
                public void run() {
                    ClientReportLogicManager.this.mExecutor.execute(new WriteJob(ClientReportLogicManager.this.mContext, ClientReportLogicManager.this.mPerfProcessor));
                }
            }, 30);
        }
    }

    public void sendEvent() {
        if (getConfig().isEventUploadSwitchOpen()) {
            ReadAndSendJob readAndSendJob = new ReadAndSendJob();
            readAndSendJob.setContext(this.mContext);
            readAndSendJob.setReadAndSender(this.mEventProcessor);
            this.mExecutor.execute(readAndSendJob);
        }
    }

    public void sendPerf() {
        if (getConfig().isPerfUploadSwitchOpen()) {
            ReadAndSendJob readAndSendJob = new ReadAndSendJob();
            readAndSendJob.setReadAndSender(this.mPerfProcessor);
            readAndSendJob.setContext(this.mContext);
            this.mExecutor.execute(readAndSendJob);
        }
    }

    private void startEventUploadJob() {
        int result = ClientReportUtil.checkEventNeedUpload(this.mContext);
        int frequency = (int) getConfig().getEventUploadFrequency();
        if (result >= 0) {
            synchronized (ClientReportLogicManager.class) {
                if (!ScheduledJobManager.getInstance(this.mContext).addRepeatJob(new EventUploadJob(this.mContext), frequency, result)) {
                    ScheduledJobManager.getInstance(this.mContext).cancelJob(100886);
                    ScheduledJobManager.getInstance(this.mContext).addRepeatJob(new EventUploadJob(this.mContext), frequency, result);
                }
            }
        }
    }

    private void startPerfUploadJob() {
        int result = ClientReportUtil.checkPerfNeedUpload(this.mContext);
        int frequency = (int) getConfig().getPerfUploadFrequency();
        if (result >= 0) {
            synchronized (ClientReportLogicManager.class) {
                if (!ScheduledJobManager.getInstance(this.mContext).addRepeatJob(new PerfUploadJob(this.mContext), frequency, result)) {
                    ScheduledJobManager.getInstance(this.mContext).cancelJob(100887);
                    ScheduledJobManager.getInstance(this.mContext).addRepeatJob(new PerfUploadJob(this.mContext), frequency, result);
                }
            }
        }
    }
}
