package com.ali.auth.third.login.task;

import android.text.TextUtils;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.task.AbsAsyncTask;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.ui.context.a;
import java.util.Map;
import org.json.JSONObject;

public class QrLoginConfirmTask extends AbsAsyncTask<String, Void, Void> {
    private a a;

    public QrLoginConfirmTask(a aVar) {
        this.a = aVar;
    }

    /* renamed from: a */
    protected Void asyncExecute(String... strArr) {
        if (TextUtils.isEmpty(strArr[0])) {
            this.a.a().setResult(ResultCode.SUCCESS.code);
            this.a.a().finish();
        } else {
            try {
                Map map = (Map) JSONUtils.toMap(new JSONObject(strArr[0]).optJSONObject("params")).get("qrConfirmInfo");
                if (map == null) {
                    this.a.a().setResult(ResultCode.SUCCESS.code);
                    this.a.a().finish();
                } else {
                    int intValue = ((Integer) map.get("action")).intValue();
                    if (intValue == 0) {
                        this.a.a().setResult(ResultCode.SUCCESS.code);
                    } else if (-1 == intValue) {
                        this.a.a().setResult(ResultCode.USER_CANCEL.code);
                    }
                    this.a.a().finish();
                }
            } catch (Throwable th) {
                RuntimeException runtimeException = new RuntimeException(th);
            }
        }
        return null;
    }

    protected void doFinally() {
    }

    protected void doWhenException(Throwable th) {
        Message createMessage = MessageUtils.createMessage(KernelMessageConstants.GENERIC_SYSTEM_ERROR, th.getMessage());
        SDKLogger.log("login", createMessage, th);
        this.a.a(createMessage.code, createMessage.message);
    }
}
