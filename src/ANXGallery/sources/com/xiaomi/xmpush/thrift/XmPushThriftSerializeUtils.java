package com.xiaomi.xmpush.thrift;

import android.content.Context;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.MobileStatusUtils;
import com.xiaomi.push.service.TypedShieldHelper;
import org.apache.thrift.TBase;
import org.apache.thrift.TDeserializer;
import org.apache.thrift.TException;
import org.apache.thrift.TSerializer;
import org.apache.thrift.protocol.TBinaryProtocol.Factory;
import org.apache.thrift.protocol.XmPushTBinaryProtocol;

public class XmPushThriftSerializeUtils {
    public static <T extends TBase<T, ?>> byte[] convertThriftObjectToBytes(T thriftObj) {
        byte[] bArr = null;
        if (thriftObj == null) {
            return bArr;
        }
        try {
            return new TSerializer(new Factory()).serialize(thriftObj);
        } catch (TException e) {
            MyLog.e("convertThriftObjectToBytes catch TException.", e);
            return bArr;
        }
    }

    public static <T extends TBase<T, ?>> void convertByteArrayToThriftObject(T thriftObj, byte[] bytes) throws TException {
        if (bytes == null) {
            throw new TException("the message byte is empty.");
        }
        new TDeserializer(new XmPushTBinaryProtocol.Factory(true, true, bytes.length)).deserialize(thriftObj, bytes);
    }

    public static short getDeviceStatus(Context context, XmPushActionContainer container) {
        int i;
        int i2 = 0;
        int result = 0 + AppInfoUtils.getAppNotificationOp(context, container.packageName).getValue();
        if (MobileStatusUtils.isCharging(context)) {
            i = 4;
        } else {
            i = 0;
        }
        result += i;
        if (MobileStatusUtils.isScreenLocked(context)) {
            i = 8;
        } else {
            i = 0;
        }
        result += i;
        if (TypedShieldHelper.isShield(context, container)) {
            i2 = 16;
        }
        return (short) (result + i2);
    }

    public static short getGeoMsgStatus(boolean isReceive, boolean isShow, boolean isPassed) {
        int i;
        int i2 = 0;
        if (isReceive) {
            i = 4;
        } else {
            i = 0;
        }
        int result = 0 + i;
        if (isShow) {
            i = 2;
        } else {
            i = 0;
        }
        result += i;
        if (isPassed) {
            i2 = 1;
        }
        return (short) (result + i2);
    }
}
