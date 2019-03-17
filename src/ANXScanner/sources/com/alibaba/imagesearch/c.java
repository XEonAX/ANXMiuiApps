package com.alibaba.imagesearch;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.a;
import com.alibaba.imagesearch.ui.SearchResultActivity;
import com.alibaba.imagesearch.utils.PLog;
import com.alibaba.imagesearch.utils.b;
import com.alibaba.imagesearch.utils.e;
import com.alibaba.wireless.security.open.nocaptcha.INoCaptchaComponent;
import com.uploader.export.ITaskListener;
import com.uploader.export.ITaskResult;
import com.uploader.export.IUploaderManager;
import com.uploader.export.IUploaderTask;
import com.uploader.export.TaskError;
import com.uploader.export.UploaderCreator;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class c implements b {
    private static final String a = c.class.getName();
    private volatile boolean b = true;
    private volatile boolean c = false;
    private IUploaderManager d = UploaderCreator.get();
    private IUploaderTask e;

    public c(Context context) {
    }

    public static void a(Context context, String str) {
        try {
            PLog.searchLogD("startPages===>[" + str + "]");
            Intent intent = new Intent();
            intent.setClass(context, SearchResultActivity.class);
            intent.putExtra("extra_url", str);
            context.startActivity(intent);
        } catch (Throwable th) {
            PLog.searchLogE("startPages t = " + th);
        }
    }

    private boolean a(Activity activity, String str, a aVar, String str2) {
        if (aVar == null) {
            throw new NullPointerException("handler==null");
        } else if (activity == null) {
            aVar.a("check_param_error", "activity==null");
            return false;
        } else if (!TextUtils.isEmpty(str)) {
            return true;
        } else {
            aVar.a("check_param_error", str2 + "==null");
            return false;
        }
    }

    public void a() {
        if (this.b) {
            this.d.cancelAsync(this.e);
            a.destory();
            this.b = false;
        }
    }

    public void a(Activity activity, final String str, Map<String, String> map, a aVar) {
        final WeakReference weakReference = new WeakReference(activity);
        this.c = false;
        if (!a(activity, str, aVar, "filename")) {
            return;
        }
        if (com.alibaba.imagesearch.utils.c.c(str)) {
            PLog.searchLogD("isCDNUrl fileName = " + str);
            a(activity, com.alibaba.imagesearch.utils.c.a(str, (Map) map));
            return;
        }
        File file = new File(str);
        if (!file.exists() || file.isDirectory()) {
            PLog.searchLogD("searchImage [" + str + "] not exists or [" + str + "] is directory");
            aVar.a("check_param_error", "searchImage [" + str + "] not exists or [" + str + "] is directory");
            return;
        }
        PLog.searchLogD("searchImage[" + str + "]");
        if (!this.c) {
            this.d.cancelAsync(this.e);
            this.e = new IUploaderTask() {
                @NonNull
                public String getBizType() {
                    return "imgsearch_baichuan";
                }

                @NonNull
                public String getFilePath() {
                    return str;
                }

                @NonNull
                public String getFileType() {
                    return "jpg";
                }

                @Nullable
                public Map<String, String> getMetaInfo() {
                    return null;
                }
            };
            final a aVar2 = aVar;
            final Map<String, String> map2 = map;
            final String str2 = str;
            this.d.uploadAsync(this.e, new ITaskListener() {
                boolean a = false;
                long b = 0;

                public void onCancel(IUploaderTask iUploaderTask) {
                    PLog.searchLogD("searchImage upload onCancel");
                }

                public void onFailure(IUploaderTask iUploaderTask, TaskError taskError) {
                    Map hashMap = new HashMap();
                    hashMap.put(INoCaptchaComponent.errorCode, taskError.code);
                    hashMap.put("errorMsg", taskError.info);
                    e.a("PailitaoLoading", "upload_error", hashMap);
                    if (aVar2 != null) {
                        aVar2.a("upload_failed", taskError.info);
                    }
                    this.a = true;
                    b.a(str2);
                    PLog.searchLogE("searchImage upload onFailure[" + taskError.code + "][" + taskError.info + "]");
                }

                public void onPause(IUploaderTask iUploaderTask) {
                    PLog.searchLogD("upload onPause");
                }

                public void onProgress(IUploaderTask iUploaderTask, int i) {
                    if (!this.a && aVar2 != null) {
                        aVar2.a(i);
                    }
                }

                public void onResume(IUploaderTask iUploaderTask) {
                    PLog.searchLogD("upload onResume");
                }

                public void onStart(IUploaderTask iUploaderTask) {
                    e.a("PailitaoLoading", "upload_start");
                    if (!this.a) {
                        this.b = System.currentTimeMillis();
                        if (aVar2 != null) {
                            aVar2.a();
                        }
                        PLog.searchLogD("searchImage upload onStart");
                    }
                }

                public void onSuccess(IUploaderTask iUploaderTask, ITaskResult iTaskResult) {
                    PLog.searchLogD("searchImage upload onSuccess");
                    e.a("PailitaoLoading", "upload_finish");
                    if (!this.a) {
                        Activity activity = (Activity) weakReference.get();
                        if (activity != null) {
                            c.a(activity, com.alibaba.imagesearch.utils.c.a(iTaskResult.getFileUrl(), map2));
                        }
                        if (aVar2 != null) {
                            aVar2.a(false, iTaskResult.getFileUrl());
                        }
                        try {
                            PLog.PerformanceLog("upload finish, use " + (System.currentTimeMillis() - this.b) + " ms fileSize = " + new File(str2).length());
                        } catch (Throwable th) {
                        }
                        b.a(str2);
                    }
                }

                public void onWait(IUploaderTask iUploaderTask) {
                    PLog.searchLogD("searchImage upload onWait");
                }
            }, null);
        } else if (aVar != null) {
            aVar.a(true, null);
        }
    }

    public void a(String str) {
        this.c = true;
        this.d.cancelAsync(this.e);
    }
}
