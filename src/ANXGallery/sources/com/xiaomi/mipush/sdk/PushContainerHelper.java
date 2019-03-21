package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.DataCryptUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.Base64Coder;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.Target;
import com.xiaomi.xmpush.thrift.XmPushActionAckMessage;
import com.xiaomi.xmpush.thrift.XmPushActionAckNotification;
import com.xiaomi.xmpush.thrift.XmPushActionCommandResult;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushActionRegistrationResult;
import com.xiaomi.xmpush.thrift.XmPushActionSendFeedbackResult;
import com.xiaomi.xmpush.thrift.XmPushActionSendMessage;
import com.xiaomi.xmpush.thrift.XmPushActionSubscriptionResult;
import com.xiaomi.xmpush.thrift.XmPushActionUnRegistrationResult;
import com.xiaomi.xmpush.thrift.XmPushActionUnSubscriptionResult;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.nio.ByteBuffer;
import org.apache.thrift.TBase;
import org.apache.thrift.TException;

public class PushContainerHelper {
    protected static <T extends TBase<T, ?>> XmPushActionContainer generateRequestContainer(Context context, T message, ActionType action) {
        return generateRequestContainer(context, message, action, !action.equals(ActionType.Registration), context.getPackageName(), AppInfoHolder.getInstance(context).getAppID());
    }

    protected static <T extends TBase<T, ?>> XmPushActionContainer generateRequestContainer(Context context, T message, ActionType action, boolean encrypt, String packageName, String appId) {
        byte[] msgbytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(message);
        if (msgbytes == null) {
            MyLog.w("invoke convertThriftObjectToBytes method, return null.");
            return null;
        }
        XmPushActionContainer container = new XmPushActionContainer();
        if (encrypt) {
            String regSecret = AppInfoHolder.getInstance(context).getRegSecret();
            if (TextUtils.isEmpty(regSecret)) {
                MyLog.w("regSecret is empty, return null");
                return null;
            }
            try {
                msgbytes = DataCryptUtils.mipushEncrypt(Base64Coder.decode(regSecret), msgbytes);
            } catch (Exception e) {
                MyLog.e("encryption error. ");
            }
        }
        Target target = new Target();
        target.channelId = 5;
        target.userId = "fakeid";
        container.setTarget(target);
        container.setPushAction(ByteBuffer.wrap(msgbytes));
        container.setAction(action);
        container.setIsRequest(true);
        container.setPackageName(packageName);
        container.setEncryptAction(encrypt);
        container.setAppid(appId);
        return container;
    }

    public static TBase getResponseMessageBodyFromContainer(Context context, XmPushActionContainer container) throws TException, DecryptException {
        byte[] oriMsgBytes;
        if (container.isEncryptAction()) {
            try {
                oriMsgBytes = DataCryptUtils.mipushDecrypt(Base64Coder.decode(AppInfoHolder.getInstance(context).getRegSecret()), container.getPushAction());
            } catch (Exception e) {
                throw new DecryptException("the aes decrypt failed.", e);
            }
        }
        oriMsgBytes = container.getPushAction();
        TBase packet = createRespMessageFromAction(container.getAction(), container.isRequest);
        if (packet != null) {
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(packet, oriMsgBytes);
        }
        return packet;
    }

    private static TBase createRespMessageFromAction(ActionType act, boolean isRequest) {
        switch (act) {
            case Registration:
                return new XmPushActionRegistrationResult();
            case UnRegistration:
                return new XmPushActionUnRegistrationResult();
            case Subscription:
                return new XmPushActionSubscriptionResult();
            case UnSubscription:
                return new XmPushActionUnSubscriptionResult();
            case SendMessage:
                return new XmPushActionSendMessage();
            case AckMessage:
                return new XmPushActionAckMessage();
            case SetConfig:
                return new XmPushActionCommandResult();
            case ReportFeedback:
                return new XmPushActionSendFeedbackResult();
            case Notification:
                if (isRequest) {
                    return new XmPushActionNotification();
                }
                TBase ackNotification = new XmPushActionAckNotification();
                ackNotification.setErrorCodeIsSet(true);
                return ackNotification;
            case Command:
                return new XmPushActionCommandResult();
            default:
                return null;
        }
    }
}
