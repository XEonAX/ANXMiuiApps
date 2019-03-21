package com.xiaomi.push.clientreport;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.clientReport.PushClientReportHelper;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import com.xiaomi.push.service.xmpush.Command;
import com.xiaomi.smack.util.TrafficUtils;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionAckNotification;
import com.xiaomi.xmpush.thrift.XmPushActionCommand;
import com.xiaomi.xmpush.thrift.XmPushActionCommandResult;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import org.apache.thrift.TBase;
import org.apache.thrift.TException;

public class PerfMessageHelper {
    public static int getMessageType(TBase message, ActionType actionType) {
        int result;
        switch (actionType) {
            case Registration:
            case UnRegistration:
            case Subscription:
            case UnSubscription:
            case SendMessage:
            case AckMessage:
            case SetConfig:
            case ReportFeedback:
            case MultiConnectionBroadcast:
            case MultiConnectionResult:
                return PushClientReportHelper.changeValueToCode(actionType.getValue());
            case Notification:
                result = PushClientReportHelper.changeValueToCode(actionType.getValue());
                if (message == null) {
                    return result;
                }
                try {
                    String type;
                    if (message instanceof XmPushActionAckNotification) {
                        type = ((XmPushActionAckNotification) message).type;
                        if (TextUtils.isEmpty(type) || PushClientReportHelper.changeOrdinalToCode(PushClientReportHelper.changeValueToNotificationType(type)) == -1) {
                            return result;
                        }
                        return PushClientReportHelper.changeOrdinalToCode(PushClientReportHelper.changeValueToNotificationType(type));
                    } else if (!(message instanceof XmPushActionNotification)) {
                        return result;
                    } else {
                        type = ((XmPushActionNotification) message).type;
                        if (TextUtils.isEmpty(type)) {
                            return result;
                        }
                        if (PushClientReportHelper.changeOrdinalToCode(PushClientReportHelper.changeValueToNotificationType(type)) != -1) {
                            result = PushClientReportHelper.changeOrdinalToCode(PushClientReportHelper.changeValueToNotificationType(type));
                        }
                        if (NotificationType.UploadTinyData.equals(PushClientReportHelper.changeValueToNotificationType(type))) {
                            return -1;
                        }
                        return result;
                    }
                } catch (Exception e) {
                    MyLog.e("PERF_ERROR : parse Notification type error");
                    return result;
                }
            case Command:
                result = PushClientReportHelper.changeValueToCode(actionType.getValue());
                if (message == null) {
                    return result;
                }
                try {
                    if (message instanceof XmPushActionCommandResult) {
                        String commandName = ((XmPushActionCommandResult) message).getCmdName();
                        if (TextUtils.isEmpty(commandName) || Command.getCode(commandName) == -1) {
                            return result;
                        }
                        return Command.getCode(commandName);
                    } else if (!(message instanceof XmPushActionCommand)) {
                        return result;
                    } else {
                        String configName = ((XmPushActionCommand) message).getCmdName();
                        if (TextUtils.isEmpty(configName) || Command.getCode(configName) == -1) {
                            return result;
                        }
                        return Command.getCode(configName);
                    }
                } catch (Exception e2) {
                    MyLog.e("PERF_ERROR : parse Command type error");
                    return result;
                }
            default:
                return -1;
        }
    }

    public static int getTraffic(Context context, int byteLength) {
        int networkType = TrafficUtils.getNetworkType(context);
        if (-1 == networkType) {
            return -1;
        }
        return ((networkType == 0 ? 13 : 11) * byteLength) / 10;
    }

    public static int typeToCode(ActionType actionType) {
        return PushClientReportHelper.changeValueToCode(actionType.getValue());
    }

    public static void collectUpStream(String pkg, Context context, byte[] bytes) {
        if (context != null && bytes != null && bytes.length > 0) {
            XmPushActionContainer container = new XmPushActionContainer();
            try {
                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(container, bytes);
                collectUpStream(pkg, context, container, bytes.length);
            } catch (TException e) {
                MyLog.w("fail to convert bytes to container");
            }
        }
    }

    public static void collectUpStream(String pkg, Context context, XmPushActionContainer container, int length) {
        if (context != null && container != null) {
            ActionType actionType = container.getAction();
            if (actionType != null) {
                int packetType = typeToCode(actionType);
                int packetLength = 0;
                if (length <= 0) {
                    byte[] bytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(container);
                    if (bytes != null) {
                        packetLength = bytes.length;
                    }
                } else {
                    packetLength = length;
                }
                collectPerfData(pkg, context, packetType, packetLength);
            }
        }
    }

    public static void collectPerfData(String pkg, Context context, int packetType, int packetLength) {
        if (packetType > 0 && packetLength > 0) {
            packetLength = getTraffic(context, packetLength);
            if (packetType != PushClientReportHelper.changeOrdinalToCode(NotificationType.UploadTinyData)) {
                MyLog.w("Perf_code  packetType  " + packetType + "  length " + packetLength);
                PushClientReportManager.getInstance(context.getApplicationContext()).reportPerf(pkg, packetType, 1, (long) packetLength);
            }
        }
    }

    public static void collectPerfData(String pkg, Context context, TBase message, ActionType actionType, int packetLength) {
        collectPerfData(pkg, context, getMessageType(message, actionType), packetLength);
    }
}
