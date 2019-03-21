package com.xiaomi.stats;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.smack.ConnectionHelper;
import com.xiaomi.smack.XMPPException;
import java.net.UnknownHostException;

final class StatsAnalyser {

    static class TypeWraper {
        String annotation;
        ChannelStatsType type;

        TypeWraper() {
        }
    }

    private static void checkNull(Exception e) {
        if (e == null) {
            throw new NullPointerException();
        }
    }

    static TypeWraper fromGslbException(Exception e) {
        checkNull(e);
        Throwable throwable = e;
        if ((e instanceof XMPPException) && ((XMPPException) e).getWrappedThrowable() != null) {
            throwable = ((XMPPException) e).getWrappedThrowable();
        }
        TypeWraper ret = new TypeWraper();
        String cause = throwable.getMessage();
        if (throwable.getCause() != null) {
            cause = throwable.getCause().getMessage();
        }
        String annotation = throwable.getClass().getSimpleName() + ":" + cause;
        int err = ConnectionHelper.asErrorCode(throwable);
        if (err != 0) {
            ret.type = ChannelStatsType.findByValue(ChannelStatsType.GSLB_REQUEST_SUCCESS.getValue() + err);
        }
        if (ret.type == null) {
            ret.type = ChannelStatsType.GSLB_TCP_ERR_OTHER;
        }
        if (ret.type == ChannelStatsType.GSLB_TCP_ERR_OTHER) {
            ret.annotation = annotation;
        }
        return ret;
    }

    static TypeWraper fromConnectionException(Exception e) {
        checkNull(e);
        Throwable throwable = e;
        if ((e instanceof XMPPException) && ((XMPPException) e).getWrappedThrowable() != null) {
            throwable = ((XMPPException) e).getWrappedThrowable();
        }
        TypeWraper ret = new TypeWraper();
        String cause = throwable.getMessage();
        if (throwable.getCause() != null) {
            cause = throwable.getCause().getMessage();
        }
        int err = ConnectionHelper.asErrorCode(throwable);
        String annotation = throwable.getClass().getSimpleName() + ":" + cause;
        if (err != 0) {
            ret.type = ChannelStatsType.findByValue(ChannelStatsType.CONN_SUCCESS.getValue() + err);
            if (ret.type == ChannelStatsType.CONN_BOSH_ERR) {
                throwable = throwable.getCause();
                if (throwable != null && (throwable instanceof UnknownHostException)) {
                    ret.type = ChannelStatsType.CONN_BOSH_UNKNOWNHOST;
                }
            }
        } else {
            ret.type = ChannelStatsType.CONN_XMPP_ERR;
        }
        if (ret.type == ChannelStatsType.CONN_TCP_ERR_OTHER || ret.type == ChannelStatsType.CONN_XMPP_ERR || ret.type == ChannelStatsType.CONN_BOSH_ERR) {
            ret.annotation = annotation;
        }
        return ret;
    }

    static TypeWraper fromBind(Exception e) {
        checkNull(e);
        Throwable throwable = e;
        if ((e instanceof XMPPException) && ((XMPPException) e).getWrappedThrowable() != null) {
            throwable = ((XMPPException) e).getWrappedThrowable();
        }
        TypeWraper ret = new TypeWraper();
        String cause = throwable.getMessage();
        if (throwable.getCause() != null) {
            cause = throwable.getCause().getMessage();
        }
        int err = ConnectionHelper.asErrorCode(throwable);
        String annotation = throwable.getClass().getSimpleName() + ":" + cause;
        switch (err) {
            case BaiduSceneResult.TEMPLE /*105*/:
                ret.type = ChannelStatsType.BIND_TCP_READ_TIMEOUT;
                break;
            case BaiduSceneResult.CHURCH /*109*/:
                ret.type = ChannelStatsType.BIND_TCP_CONNRESET;
                break;
            case BaiduSceneResult.CASTLE /*110*/:
                ret.type = ChannelStatsType.BIND_TCP_BROKEN_PIPE;
                break;
            case 199:
                ret.type = ChannelStatsType.BIND_TCP_ERR;
                break;
            case 499:
                ret.type = ChannelStatsType.BIND_BOSH_ERR;
                if (cause.startsWith("Terminal binding condition encountered: item-not-found")) {
                    ret.type = ChannelStatsType.BIND_BOSH_ITEM_NOT_FOUND;
                    break;
                }
                break;
            default:
                ret.type = ChannelStatsType.BIND_XMPP_ERR;
                break;
        }
        if (ret.type == ChannelStatsType.BIND_TCP_ERR || ret.type == ChannelStatsType.BIND_XMPP_ERR || ret.type == ChannelStatsType.BIND_BOSH_ERR) {
            ret.annotation = annotation;
        }
        return ret;
    }

    static TypeWraper fromDisconnectEx(Exception e) {
        checkNull(e);
        Throwable throwable = e;
        if ((e instanceof XMPPException) && ((XMPPException) e).getWrappedThrowable() != null) {
            throwable = ((XMPPException) e).getWrappedThrowable();
        }
        TypeWraper ret = new TypeWraper();
        String cause = throwable.getMessage();
        int err = ConnectionHelper.asErrorCode(throwable);
        String annotation = throwable.getClass().getSimpleName() + ":" + cause;
        switch (err) {
            case BaiduSceneResult.TEMPLE /*105*/:
                ret.type = ChannelStatsType.CHANNEL_TCP_READTIMEOUT;
                break;
            case BaiduSceneResult.CHURCH /*109*/:
                ret.type = ChannelStatsType.CHANNEL_TCP_CONNRESET;
                break;
            case BaiduSceneResult.CASTLE /*110*/:
                ret.type = ChannelStatsType.CHANNEL_TCP_BROKEN_PIPE;
                break;
            case 199:
                ret.type = ChannelStatsType.CHANNEL_TCP_ERR;
                break;
            case 499:
                ret.type = ChannelStatsType.CHANNEL_BOSH_EXCEPTION;
                if (cause.startsWith("Terminal binding condition encountered: item-not-found")) {
                    ret.type = ChannelStatsType.CHANNEL_BOSH_ITEMNOTFIND;
                    break;
                }
                break;
            default:
                ret.type = ChannelStatsType.CHANNEL_XMPPEXCEPTION;
                break;
        }
        if (ret.type == ChannelStatsType.CHANNEL_TCP_ERR || ret.type == ChannelStatsType.CHANNEL_XMPPEXCEPTION || ret.type == ChannelStatsType.CHANNEL_BOSH_EXCEPTION) {
            ret.annotation = annotation;
        }
        return ret;
    }
}
