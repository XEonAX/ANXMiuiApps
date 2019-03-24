package com.miui.gallery.push;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.push.PushConstants.MessageScope;
import com.miui.gallery.push.PushConstants.MessageType;
import com.miui.gallery.push.messagehandler.MessageHandler;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Encode;
import com.miui.gallery.util.Log;
import com.miui.os.Rom;
import com.xiaomi.mipush.sdk.MiPushMessage;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import miui.provider.ExtraTelephony.UnderstandInfo;

public class PushMessageDispatcher {
    public static void dispatch(Context context, MiPushMessage message) {
        Object content = message.getContent();
        if (TextUtils.isEmpty(content)) {
            Log.e("PushMessageDispatcher", "Message content is empty");
            BaseSamplingStatHelper.recordErrorEvent("mipush", "message_content_is_empty");
            return;
        }
        GalleryPushMessage galleryMsg = GalleryPushMessage.fromJson(content);
        if (galleryMsg == null) {
            Log.e("PushMessageDispatcher", "Parse message content failed: %s", content);
            BaseSamplingStatHelper.recordErrorEvent("mipush", "message_content_parse_failed");
            return;
        }
        MessageScope messageScope = MessageScope.getScope(galleryMsg.getMessageScope());
        HashMap<String, String> params;
        if (messageScope == MessageScope.RELEASE || (messageScope == MessageScope.DEBUG && Rom.IS_DEBUGGABLE)) {
            MessageType messageType = MessageType.getType(galleryMsg.getType());
            if (messageType == null) {
                Log.e("PushMessageDispatcher", "Unknown message type: %s", galleryMsg.getType());
                params = new HashMap();
                params.put(UnderstandInfo.MSG_TYPE, galleryMsg.getType());
                BaseSamplingStatHelper.recordErrorEvent("mipush", "unknown_message_type", params);
                return;
            }
            String pushAccount = TextUtils.isEmpty(message.getUserAccount()) ? null : message.getUserAccount();
            String localAccount = AccountCache.getAccount() != null ? Encode.SHA1Encode(AccountCache.getAccount().name.getBytes()) : null;
            if (pushAccount == null || TextUtils.equals(pushAccount, localAccount)) {
                Object businessModule = galleryMsg.getBusinessModule();
                MessageHandler handler = MessageHandlerFactory.create(businessModule);
                if (handler == null) {
                    Log.e("PushMessageDispatcher", "MessageHandler is undefined: %s", businessModule);
                    return;
                }
                switch (messageType) {
                    case SYNC:
                        handler.handlePull(context, galleryMsg);
                        return;
                    case DIRECT:
                        handler.handleDirect(context, galleryMsg);
                        return;
                    default:
                        return;
                }
            }
            Log.e("PushMessageDispatcher", "UserAccount doesn't match, skip handle");
            Map<String, String> params2 = new HashMap();
            params2.put("pushAccount_localAccount", String.format(Locale.US, "%s_%s", new Object[]{pushAccount, localAccount}));
            BaseSamplingStatHelper.recordErrorEvent("mipush", "push_user_account_doesnt_match", params2);
            return;
        }
        Log.e("PushMessageDispatcher", "Message scope does not match: %s", galleryMsg.getMessageScope());
        params = new HashMap();
        params.put("msg_scope", galleryMsg.getMessageScope());
        BaseSamplingStatHelper.recordErrorEvent("mipush", "unknown_message_scope_doesnt_match", params);
    }
}
