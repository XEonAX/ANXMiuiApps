package com.ali.auth.third.login.task;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.graphics.drawable.PathInterpolatorCompat;
import android.text.TextUtils;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.task.TaskWithDialog;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.login.RequestCode;
import com.ali.auth.third.login.a.a;
import com.ali.auth.third.ui.LoginWebViewActivity;
import com.ali.auth.third.ui.context.CallbackContext;

public abstract class AbsLoginByCodeTask extends TaskWithDialog<String, Void, Void> {
    public AbsLoginByCodeTask(Activity activity) {
        super(activity);
    }

    protected Void asyncExecute(String... strArr) {
        final RpcResponse login = login(strArr);
        final int i = login.code;
        SDKLogger.d("AbsLoginByCodeTask", "asyncExecute code = " + i);
        if (i == PathInterpolatorCompat.MAX_NUM_POINTS) {
            try {
                if (login.returnValue != null) {
                    a.b.refreshWhenLogin((LoginReturnData) login.returnValue);
                }
                KernelContext.executorService.postUITask(new Runnable() {
                    public void run() {
                        AbsLoginByCodeTask.this.doWhenResultOk();
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (i == 13060) {
            Object obj = ((LoginReturnData) login.returnValue).h5Url;
            SDKLogger.d("AbsLoginByCodeTask", "asyncExecute doubleCheckUrl = " + obj);
            if (!TextUtils.isEmpty(obj)) {
                Context context = this.activity;
                CallbackContext.setActivity(context);
                Intent intent = new Intent(context, LoginWebViewActivity.class);
                intent.putExtra("url", obj);
                intent.putExtra("token", ((LoginReturnData) login.returnValue).token);
                intent.putExtra("scene", ((LoginReturnData) login.returnValue).scene);
                LoginWebViewActivity.token = ((LoginReturnData) login.returnValue).token;
                LoginWebViewActivity.scene = ((LoginReturnData) login.returnValue).scene;
                this.activity.startActivityForResult(intent, RequestCode.OPEN_DOUBLE_CHECK);
            }
        } else {
            KernelContext.executorService.postUITask(new Runnable() {
                public void run() {
                    Message createMessage = MessageUtils.createMessage(15, "login", "code " + i + " " + login.message);
                    SDKLogger.d("AbsLoginByCodeTask", createMessage.toString());
                    AbsLoginByCodeTask.this.doWhenResultFail(createMessage.code, createMessage.message);
                }
            });
        }
        return null;
    }

    protected abstract void doWhenResultFail(int i, String str);

    protected abstract void doWhenResultOk();

    protected abstract RpcResponse<LoginReturnData> login(String[] strArr);
}
