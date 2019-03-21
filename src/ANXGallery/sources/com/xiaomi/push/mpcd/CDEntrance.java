package com.xiaomi.push.mpcd;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.JobMutualExclusor;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.mpcd.job.BroadcastActionCollectionjob;
import com.xiaomi.push.mpcd.job.CollectionJob;
import com.xiaomi.push.mpcd.receivers.BroadcastActionsReceiver;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.DataCollectionItem;

public class CDEntrance {
    public static void start(Context context) {
        JobController.getInstance(context).schedulerJob();
        try {
            context.registerReceiver(new BroadcastActionsReceiver(getIntentHandler()), getIntentFilter());
        } catch (Throwable throwable) {
            MyLog.e(throwable);
        }
    }

    private static IntentHandler getIntentHandler() {
        return new IntentHandler() {
            public void handle(final Context context, final Intent intent) {
                if (intent != null) {
                    ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
                        public void run() {
                            AnonymousClass1.this.handleIntent(context, intent);
                        }
                    });
                }
            }

            private void handleIntent(Context context, Intent intent) {
                try {
                    String packageString = intent.getDataString();
                    if (!TextUtils.isEmpty(packageString)) {
                        String[] pair = packageString.split(":");
                        if (pair.length >= 2 && !TextUtils.isEmpty(pair[1])) {
                            String packageName = pair[1];
                            long currentInSecond = System.currentTimeMillis();
                            boolean broadcastActionSwitch = OnlineConfig.getInstance(context).getBooleanValue(ConfigKey.BroadcastActionCollectionSwitch.getValue(), true);
                            if (TextUtils.equals("android.intent.action.PACKAGE_RESTARTED", intent.getAction())) {
                                if (JobMutualExclusor.checkPeriodAndRecordWithFileLock(context, String.valueOf(12), 1) && broadcastActionSwitch) {
                                    if (TextUtils.isEmpty(BroadcastActionCollectionjob.mRestartedActions)) {
                                        BroadcastActionCollectionjob.mRestartedActions += Constants.ACTION_PACKAGE_RESTARTED + ":";
                                    }
                                    BroadcastActionCollectionjob.mRestartedActions += packageName + "(" + currentInSecond + ")" + ",";
                                }
                            } else if (TextUtils.equals("android.intent.action.PACKAGE_CHANGED", intent.getAction())) {
                                if (JobMutualExclusor.checkPeriodAndRecordWithFileLock(context, String.valueOf(12), 1) && broadcastActionSwitch) {
                                    if (TextUtils.isEmpty(BroadcastActionCollectionjob.mChangedActions)) {
                                        BroadcastActionCollectionjob.mChangedActions += Constants.ACTION_PACKAGE_CHANGED + ":";
                                    }
                                    BroadcastActionCollectionjob.mChangedActions += packageName + "(" + currentInSecond + ")" + ",";
                                }
                            } else if (TextUtils.equals("android.intent.action.PACKAGE_ADDED", intent.getAction())) {
                                if (!intent.getExtras().getBoolean("android.intent.extra.REPLACING") && broadcastActionSwitch) {
                                    writeActionInfo(context, String.valueOf(ClientCollectionType.BroadcastActionAdded.getValue()), packageName);
                                }
                            } else if (TextUtils.equals("android.intent.action.PACKAGE_REMOVED", intent.getAction())) {
                                if (!intent.getExtras().getBoolean("android.intent.extra.REPLACING") && broadcastActionSwitch) {
                                    writeActionInfo(context, String.valueOf(ClientCollectionType.BroadcastActionRemoved.getValue()), packageName);
                                }
                            } else if (TextUtils.equals("android.intent.action.PACKAGE_REPLACED", intent.getAction())) {
                                if (broadcastActionSwitch) {
                                    writeActionInfo(context, String.valueOf(ClientCollectionType.BroadcastActionReplaced.getValue()), packageName);
                                }
                            } else if (TextUtils.equals("android.intent.action.PACKAGE_DATA_CLEARED", intent.getAction()) && broadcastActionSwitch) {
                                writeActionInfo(context, String.valueOf(ClientCollectionType.BroadcastActionDataCleared.getValue()), packageName);
                            }
                        }
                    }
                } catch (Throwable th) {
                }
            }

            private void writeActionInfo(Context context, String broadcastType, String packageName) {
                if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(broadcastType)) {
                    try {
                        if (JobMutualExclusor.checkPeriodAndRecordWithFileLock(context, String.valueOf(12), 1)) {
                            DataCollectionItem collectionItem = new DataCollectionItem();
                            collectionItem.setContent(broadcastType + ":" + packageName);
                            collectionItem.setCollectedAt(System.currentTimeMillis());
                            collectionItem.setCollectionType(ClientCollectionType.BroadcastAction);
                            CollectionJob.writeItemToFile(context, collectionItem);
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        };
    }

    private static IntentFilter getIntentFilter() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_CHANGED");
        filter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        filter.addAction("android.intent.action.PACKAGE_REPLACED");
        filter.addAction("android.intent.action.PACKAGE_RESTARTED");
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        return filter;
    }
}
