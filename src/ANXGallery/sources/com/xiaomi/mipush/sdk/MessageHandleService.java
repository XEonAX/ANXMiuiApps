package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import com.xiaomi.push.service.xmpush.Command;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class MessageHandleService extends BaseService {
    private static ConcurrentLinkedQueue<MessageHandleJob> jobQueue = new ConcurrentLinkedQueue();
    private static ExecutorService sPool = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static class MessageHandleJob {
        private Intent intent;
        private PushMessageReceiver receiver;

        public MessageHandleJob(Intent intent, PushMessageReceiver receiver) {
            this.receiver = receiver;
            this.intent = intent;
        }

        public PushMessageReceiver getReceiver() {
            return this.receiver;
        }

        public Intent getIntent() {
            return this.intent;
        }
    }

    public static void startService(final Context context) {
        final Intent awakeIntent = new Intent();
        awakeIntent.setComponent(new ComponentName(context, MessageHandleService.class));
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                try {
                    context.startService(awakeIntent);
                } catch (Exception e) {
                    MyLog.w(e.getMessage());
                }
            }
        });
    }

    public static void addJob(Context context, MessageHandleJob job) {
        if (job != null) {
            jobQueue.add(job);
            scheduleJob(context);
            startService(context);
        }
    }

    private static void scheduleJob(final Context context) {
        if (!sPool.isShutdown()) {
            sPool.execute(new Runnable() {
                public void run() {
                    MessageHandleService.processJob(context);
                }
            });
        }
    }

    protected static void onHandleIntent(Context service, Intent jobIntent) {
        if (jobIntent != null) {
            scheduleJob(service);
        }
    }

    private static void processJob(Context service) {
        try {
            MessageHandleJob job = (MessageHandleJob) jobQueue.poll();
            if (job != null) {
                PushMessageReceiver receiver = job.getReceiver();
                Intent intent = job.getIntent();
                MiPushCommandMessage commandMessage;
                switch (intent.getIntExtra("message_type", 1)) {
                    case 1:
                        PushMessageInterface message = PushMessageProcessor.getInstance(service).processIntent(intent);
                        int msgType = intent.getIntExtra("eventMessageType", -1);
                        if (message == null) {
                            return;
                        }
                        if (message instanceof MiPushMessage) {
                            MiPushMessage miPushMessage = (MiPushMessage) message;
                            if (!miPushMessage.isArrivedMessage()) {
                                receiver.onReceiveMessage(service, miPushMessage);
                            }
                            if (miPushMessage.getPassThrough() == 1) {
                                PushClientReportManager.getInstance(service.getApplicationContext()).reportEvent(service.getPackageName(), intent, 2004, "call passThrough callBack");
                                receiver.onReceivePassThroughMessage(service, miPushMessage);
                                return;
                            } else if (miPushMessage.isNotified()) {
                                if (msgType == 1000) {
                                    PushClientReportManager.getInstance(service.getApplicationContext()).reportEvent(service.getPackageName(), intent, 1007, "call notification callBack");
                                } else {
                                    PushClientReportManager.getInstance(service.getApplicationContext()).reportEvent(service.getPackageName(), intent, 3007, "call business callBack");
                                }
                                MyLog.w("begin execute onNotificationMessageClicked from　" + miPushMessage.getMessageId());
                                receiver.onNotificationMessageClicked(service, miPushMessage);
                                return;
                            } else {
                                receiver.onNotificationMessageArrived(service, miPushMessage);
                                return;
                            }
                        } else if (message instanceof MiPushCommandMessage) {
                            commandMessage = (MiPushCommandMessage) message;
                            receiver.onCommandResult(service, commandMessage);
                            if (TextUtils.equals(commandMessage.getCommand(), Command.COMMAND_REGISTER.value)) {
                                receiver.onReceiveRegisterResult(service, commandMessage);
                                if (commandMessage.getResultCode() == 0) {
                                    AssemblePushHelper.registerAssemblePush(service);
                                    return;
                                }
                                return;
                            }
                            return;
                        } else {
                            return;
                        }
                    case 3:
                        commandMessage = (MiPushCommandMessage) intent.getSerializableExtra("key_command");
                        receiver.onCommandResult(service, commandMessage);
                        if (TextUtils.equals(commandMessage.getCommand(), Command.COMMAND_REGISTER.value)) {
                            receiver.onReceiveRegisterResult(service, commandMessage);
                            if (commandMessage.getResultCode() == 0) {
                                AssemblePushHelper.registerAssemblePush(service);
                                return;
                            }
                            return;
                        }
                        return;
                    case 5:
                        if ("error_lack_of_permission".equals(intent.getStringExtra("error_type"))) {
                            String[] permissions = intent.getStringArrayExtra("error_message");
                            if (permissions != null) {
                                receiver.onRequirePermissions(service, permissions);
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        return;
                }
                MyLog.e(e);
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    public void onStart(Intent jobIntent, int startId) {
        super.onStart(jobIntent, startId);
    }

    protected boolean hasJob() {
        return jobQueue != null && jobQueue.size() > 0;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }
}
