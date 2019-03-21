package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.mipush.sdk.MessageHandleService.MessageHandleJob;
import com.xiaomi.mipush.sdk.MiPushClient.MiPushClientCallback;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import com.xiaomi.push.service.xmpush.Command;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class PushMessageHandler extends BaseService {
    private static List<MiPushClientCallback> sCallbacks = new ArrayList();
    private static ThreadPoolExecutor sPool = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    interface PushMessageInterface extends Serializable {
    }

    public static void startService(Context context) {
        Intent awakeIntent = new Intent();
        awakeIntent.setComponent(new ComponentName(context, PushMessageHandler.class));
        try {
            context.startService(awakeIntent);
        } catch (Exception e) {
            MyLog.w(e.getMessage());
        }
    }

    public static void addJob(Context context, Intent job) {
        MyLog.v("addjob PushMessageHandler " + job);
        if (job != null) {
            scheduleJob(context, job);
            startService(context);
        }
    }

    private static void scheduleJob(final Context context, final Intent intent) {
        if (intent != null && !sPool.isShutdown()) {
            sPool.execute(new Runnable() {
                public void run() {
                    PushMessageHandler.onHandleIntent(context, intent);
                }
            });
        }
    }

    protected static void addPushCallbackClass(MiPushClientCallback callback) {
        synchronized (sCallbacks) {
            if (!sCallbacks.contains(callback)) {
                sCallbacks.add(callback);
            }
        }
    }

    protected static void removeAllPushCallbackClass() {
        synchronized (sCallbacks) {
            sCallbacks.clear();
        }
    }

    protected static void onHandleIntent(Context context, Intent intent) {
        try {
            if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
                AwakeHelper.doAWork(context, intent, null);
            } else if ("com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
                ClientUploadDataItem item = new ClientUploadDataItem();
                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(item, intent.getByteArrayExtra("mipush_payload"));
                MyLog.v("PushMessageHandler.onHandleIntent " + item.getId());
                MiTinyDataClient.upload(context, item);
            } else if ("com.xiaomi.mipush.sdk.HYBRID_NOTIFICATION_CLICK".equals(intent.getAction())) {
                MiPushMessage message = (MiPushMessage) intent.getSerializableExtra("mipush_payload");
                String appPackage = intent.getStringExtra("mipush_hybrid_app_pkg");
                MiPushClient.reportMessageClicked(context, message);
                MiPushClient4Hybrid.onNotificationMessageClicked(context, appPackage, message);
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                if (isCallbackEmpty()) {
                    MyLog.e("receive a message before application calling initialize");
                    return;
                }
                PushMessageInterface message2 = PushMessageProcessor.getInstance(context).processIntent(intent);
                if (message2 != null) {
                    processMessageForCallback(context, message2);
                }
            } else if ("com.xiaomi.mipush.sdk.SYNC_LOG".equals(intent.getAction())) {
                Logger.uploadLogFile(context, false);
            } else {
                Intent pushMessageReceiverIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
                pushMessageReceiverIntent.setPackage(context.getPackageName());
                pushMessageReceiverIntent.putExtras(intent);
                List<ResolveInfo> resolveInfos = context.getPackageManager().queryBroadcastReceivers(pushMessageReceiverIntent, 32);
                ResolveInfo targetRI = null;
                if (resolveInfos != null) {
                    for (ResolveInfo ri : resolveInfos) {
                        if (ri.activityInfo != null && ri.activityInfo.packageName.equals(context.getPackageName()) && PushMessageReceiver.class.isAssignableFrom(Class.forName(ri.activityInfo.name))) {
                            targetRI = ri;
                            break;
                        }
                    }
                }
                if (targetRI != null) {
                    handleNewMessage(context, pushMessageReceiverIntent, targetRI);
                    return;
                }
                MyLog.e("cannot find the receiver to handler this message, check your manifest");
                PushClientReportManager.getInstance(context).reportEvent4ERROR(context.getPackageName(), intent, "cannot find the receiver to handler this message, check your manifest");
            }
        } catch (Throwable e) {
            MyLog.e(e);
            PushClientReportManager.getInstance(context).reportEvent4ERROR(context.getPackageName(), intent, e);
        } catch (Throwable th) {
            MyLog.e(th);
            PushClientReportManager.getInstance(context).reportEvent4ERROR(context.getPackageName(), intent, th);
        }
    }

    private static void handleNewMessage(Context context, Intent pushMessageReceiverIntent, ResolveInfo targetRI) {
        try {
            MessageHandleService.addJob(context.getApplicationContext(), new MessageHandleJob(pushMessageReceiverIntent, (PushMessageReceiver) Class.forName(targetRI.activityInfo.name).newInstance()));
            MessageHandleService.onHandleIntent(context, new Intent(context.getApplicationContext(), MessageHandleService.class));
        } catch (Throwable throwable) {
            MyLog.e(throwable);
        }
    }

    public static boolean isCallbackEmpty() {
        return sCallbacks.isEmpty();
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        scheduleJob(getApplicationContext(), intent);
    }

    protected boolean hasJob() {
        return (sPool == null || sPool.getQueue() == null || sPool.getQueue().size() <= 0) ? false : true;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public static void processMessageForCallback(Context context, PushMessageInterface message) {
        String regID = null;
        if (message instanceof MiPushMessage) {
            onReceiveMessage(context, (MiPushMessage) message);
        } else if (message instanceof MiPushCommandMessage) {
            MiPushCommandMessage commandMessage = (MiPushCommandMessage) message;
            String command = commandMessage.getCommand();
            List<String> arguments;
            String topic;
            if (Command.COMMAND_REGISTER.value.equals(command)) {
                arguments = commandMessage.getCommandArguments();
                if (!(arguments == null || arguments.isEmpty())) {
                    regID = (String) arguments.get(0);
                }
                onInitializeResult(commandMessage.getResultCode(), commandMessage.getReason(), regID);
            } else if (Command.COMMAND_SET_ALIAS.value.equals(command) || Command.COMMAND_UNSET_ALIAS.value.equals(command) || Command.COMMAND_SET_ACCEPT_TIME.value.equals(command)) {
                onCommandResult(context, commandMessage.getCategory(), command, commandMessage.getResultCode(), commandMessage.getReason(), commandMessage.getCommandArguments());
            } else if (Command.COMMAND_SUBSCRIBE_TOPIC.value.equals(command)) {
                arguments = commandMessage.getCommandArguments();
                if (arguments == null || arguments.isEmpty()) {
                    topic = null;
                } else {
                    topic = (String) arguments.get(0);
                }
                onSubscribeResult(context, commandMessage.getCategory(), commandMessage.getResultCode(), commandMessage.getReason(), topic);
            } else if (Command.COMMAND_UNSUBSCRIBE_TOPIC.value.equals(command)) {
                arguments = commandMessage.getCommandArguments();
                if (arguments == null || arguments.isEmpty()) {
                    topic = null;
                } else {
                    topic = (String) arguments.get(0);
                }
                onUnsubscribeResult(context, commandMessage.getCategory(), commandMessage.getResultCode(), commandMessage.getReason(), topic);
            }
        }
    }

    public static void onReceiveMessage(Context context, MiPushMessage message) {
        synchronized (sCallbacks) {
            for (MiPushClientCallback callback : sCallbacks) {
                if (isCategoryMatch(message.getCategory(), callback.getCategory())) {
                    callback.onReceiveMessage(message.getContent(), message.getAlias(), message.getTopic(), message.isNotified());
                    callback.onReceiveMessage(message);
                }
            }
        }
    }

    public static void onInitializeResult(long resultCode, String reason, String regID) {
        synchronized (sCallbacks) {
            for (MiPushClientCallback callback : sCallbacks) {
                callback.onInitializeResult(resultCode, reason, regID);
            }
        }
    }

    protected static void onSubscribeResult(Context context, String category, long resultCode, String reason, String topic) {
        synchronized (sCallbacks) {
            for (MiPushClientCallback callback : sCallbacks) {
                if (isCategoryMatch(category, callback.getCategory())) {
                    callback.onSubscribeResult(resultCode, reason, topic);
                }
            }
        }
    }

    protected static void onUnsubscribeResult(Context context, String category, long resultCode, String reason, String topic) {
        synchronized (sCallbacks) {
            for (MiPushClientCallback callback : sCallbacks) {
                if (isCategoryMatch(category, callback.getCategory())) {
                    callback.onUnsubscribeResult(resultCode, reason, topic);
                }
            }
        }
    }

    protected static void onCommandResult(Context context, String category, String command, long resultCode, String reason, List<String> params) {
        synchronized (sCallbacks) {
            for (MiPushClientCallback callback : sCallbacks) {
                if (isCategoryMatch(category, callback.getCategory())) {
                    callback.onCommandResult(command, resultCode, reason, params);
                }
            }
        }
    }

    protected static boolean isCategoryMatch(String msgCategory, String callbackCategory) {
        return (TextUtils.isEmpty(msgCategory) && TextUtils.isEmpty(callbackCategory)) || TextUtils.equals(msgCategory, callbackCategory);
    }
}
