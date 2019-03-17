package com.alibaba.imagesearch.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import com.ali.auth.third.core.context.KernelContext;
import com.alibaba.baichuan.android.trade.AlibcTradeSDK;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.imagesearch.b;
import com.alibaba.imagesearch.utils.PLog;
import com.alibaba.imagesearch.utils.b.c;
import com.alibaba.imagesearch.utils.e;
import com.alibaba.imagesearch.utils.f;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.mtop.util.ErrorConstant;

public class PailitaoActivity extends Activity implements com.alibaba.imagesearch.a {
    private static final Map<String, String> a = new HashMap();
    private ImageView b;
    private a c;
    private a d;
    private b e;
    private String f = "";
    private byte[] g;
    private boolean h;
    private RectF i;
    private Map<String, String> j;
    private volatile String k;
    private volatile boolean l = false;
    private Handler m = new Handler() {
        public void handleMessage(Message message) {
            if (PailitaoActivity.this.isFinishing()) {
                removeMessages(1);
                return;
            }
            switch (message.what) {
                case 1:
                    if (message.obj != null) {
                        PailitaoActivity.this.b.setImageBitmap((Bitmap) message.obj);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private Handler n = new Handler() {
        public void handleMessage(Message message) {
            PailitaoActivity.this.f();
            PailitaoActivity.this.c("search_timeout");
            super.handleMessage(message);
        }
    };
    private AlertDialog o;

    private class a extends Thread {
        private volatile boolean b = false;
        private volatile boolean c = false;

        public boolean a() {
            return this.b;
        }

        public void b() {
            this.c = true;
            interrupt();
        }

        public void run() {
            this.b = false;
            if (this.c) {
                this.b = true;
                return;
            }
            c a = PailitaoActivity.this.h ? com.alibaba.imagesearch.utils.b.a(PailitaoActivity.this.getApplication(), PailitaoActivity.this.f) : com.alibaba.imagesearch.utils.b.a(PailitaoActivity.this.getApplication(), PailitaoActivity.this.g);
            Rect rect = null;
            if (!(PailitaoActivity.this.i == null || a == null)) {
                rect = new Rect((int) (((float) a.e) * PailitaoActivity.this.i.left), (int) (((float) a.f) * PailitaoActivity.this.i.top), (int) (((float) a.e) * PailitaoActivity.this.i.right), (int) (((float) a.f) * PailitaoActivity.this.i.bottom));
            }
            if (PailitaoActivity.this.j == null && rect != null) {
                PailitaoActivity.this.j = new HashMap();
            }
            if (rect != null) {
                PailitaoActivity.this.j.put("region", f.a(rect));
            }
            PLog.searchLogD("InitTask run mExtraImageIsPath = " + PailitaoActivity.this.h + " localImage = " + a);
            if (this.c) {
                this.b = true;
                return;
            }
            if (!(a == null || a.b == null)) {
                Message obtain = Message.obtain();
                obtain.what = 1;
                obtain.obj = a.b;
                PailitaoActivity.this.m.sendMessage(obtain);
            }
            if (!com.alibaba.imagesearch.utils.b.a(PailitaoActivity.this.getApplicationContext())) {
                this.b = true;
                PailitaoActivity.this.l = true;
                PailitaoActivity.this.a("no_network");
            } else if (a == null || a.b == null || Math.min(a.b.getWidth(), a.b.getHeight()) >= 200) {
                if (PailitaoActivity.this.e == null) {
                    int i = 0;
                    while (KernelContext.isInitOk == null) {
                        PLog.searchLogE("baichuan sdk is not init waiting... mCancelled = " + this.c + " tryouts = " + i);
                        if (this.c) {
                            this.b = true;
                            return;
                        }
                        try {
                            Thread.sleep(500);
                            i++;
                            if (i >= 8) {
                                break;
                            }
                        } catch (InterruptedException e) {
                            this.b = true;
                            return;
                        }
                    }
                    PailitaoActivity.this.e = new com.alibaba.imagesearch.c(PailitaoActivity.this);
                }
                if (this.c) {
                    this.b = true;
                    return;
                }
                if (!(KernelContext.isInitOk == null ? false : KernelContext.isInitOk.booleanValue()) || PailitaoActivity.this.e == null) {
                    this.b = true;
                    PailitaoActivity.this.l = true;
                    PailitaoActivity.this.a(KernelContext.isInitOk == null ? "init_timeout" : "init_failed");
                    return;
                }
                if (TextUtils.isEmpty(PailitaoActivity.this.f) || !PailitaoActivity.this.f.startsWith("http")) {
                    PailitaoActivity.this.k = a == null ? "" : a.a;
                    PailitaoActivity.this.e.a(PailitaoActivity.this, PailitaoActivity.this.k, PailitaoActivity.this.j, PailitaoActivity.this);
                } else {
                    PailitaoActivity.this.l = true;
                    PailitaoActivity.this.k = PailitaoActivity.this.f;
                    PailitaoActivity.this.e.a(PailitaoActivity.this, PailitaoActivity.this.f, PailitaoActivity.this.j, PailitaoActivity.this);
                    PailitaoActivity.this.setResult(0);
                    PailitaoActivity.this.finish();
                }
                this.b = true;
            } else {
                this.b = true;
                PailitaoActivity.this.l = true;
                PailitaoActivity.this.a("image_too_small");
            }
        }
    }

    static {
        a.put("check_file_error", "文件不存在");
        a.put("no_network", ErrorConstant.ERRMSG_NO_NETWORK);
        a.put("image_too_small", "图片太小");
        a.put("init_timeout", "初始化超时");
        a.put("init_failed", "初始化失败");
        a.put("filepath_is_null", "文件不存在");
        a.put("activity_is_null", "未知错误");
        a.put("file_not_exist", "文件不存在");
        a.put("system_error", "系统错误");
        a.put("check_param_error", "上传失败");
        a.put("upload_failed", "上传失败");
        a.put("NETWORK_ERROR", "上传失败");
        a.put(ErrorConstant.ERRCODE_NO_NETWORK, "上传失败");
        a.put("search_timeout", "搜索超时");
    }

    private void a(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            Bundle bundleExtra = intent.getBundleExtra("pageConfig");
            if (bundleExtra != null) {
                this.j = new HashMap();
                for (String str : bundleExtra.keySet()) {
                    this.j.put(str, bundleExtra.getString(str));
                }
            }
            this.h = TextUtils.equals("pathtype", intent.getStringExtra("extra_image_type"));
            this.i = (RectF) intent.getParcelableExtra("extra_rect");
            PLog.searchLogD("pathtype = " + this.h);
            if (this.h) {
                this.f = bundle == null ? intent.getStringExtra("extra_image") : bundle.getString("extra_image");
                return;
            }
            this.g = bundle == null ? com.alibaba.imagesearch.utils.c.a() : bundle.getByteArray("extra_image");
            com.alibaba.imagesearch.utils.c.b();
        }
    }

    private void a(final String str) {
        this.m.post(new Runnable() {
            public void run() {
                if (!PailitaoActivity.this.isFinishing()) {
                    PailitaoActivity.this.f();
                    PailitaoActivity.this.b(str);
                }
            }
        });
    }

    private void b() {
        this.n.removeMessages(1);
        this.n.sendEmptyMessageDelayed(1, 45000);
    }

    private void b(String str) {
        if (!isFinishing()) {
            String str2 = (String) a.get(str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "未知错误";
            }
            if (this.o == null) {
                this.o = new Builder(this).setIcon(17301543).setTitle("温馨提示").setMessage("亲，图片搜索失败了，请稍后重试~~ (" + str2 + ")").setCancelable(false).setPositiveButton("确定", new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        PailitaoActivity.this.setResult(0);
                        PailitaoActivity.this.finish();
                    }
                }).create();
            }
            if (!this.o.isShowing()) {
                this.o.show();
            }
        }
    }

    private void c() {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
    }

    private void c(String str) {
        if (!isFinishing()) {
            String str2 = (String) a.get(str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "未知错误";
            }
            if (this.o == null) {
                this.o = new Builder(this).setIcon(17301543).setTitle("温馨提示").setMessage("亲，图片搜索失败了(" + str2 + ")").setCancelable(false).setPositiveButton("确定", new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        PailitaoActivity.this.setResult(0);
                        PailitaoActivity.this.finish();
                    }
                }).setNegativeButton("重试", new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        PailitaoActivity.this.g();
                    }
                }).create();
            }
            if (!this.o.isShowing()) {
                this.o.show();
            }
        }
    }

    private void d() {
        this.n.removeMessages(1);
    }

    private void e() {
        b();
        if (this.d == null) {
            this.d = new a(this, new View.OnClickListener() {
                public void onClick(View view) {
                    PailitaoActivity.this.d.dismiss();
                    PailitaoActivity.this.h();
                    PailitaoActivity.this.setResult(0);
                    PailitaoActivity.this.finish();
                }
            });
        }
        if (i()) {
            this.d.dismiss();
            this.d.setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialogInterface) {
                    PailitaoActivity.this.h();
                    PailitaoActivity.this.setResult(0);
                    PailitaoActivity.this.finish();
                }
            });
            this.d.setTitle((CharSequence) "努力搜索中...");
            this.d.show();
        }
    }

    private void f() {
        d();
        if (this.d != null && this.d.isShowing() && i()) {
            this.d.dismiss();
        }
    }

    private void g() {
        PLog.searchLogD("doNormalStart mUploadCompleted = " + this.l);
        if (this.o != null && this.o.isShowing()) {
            this.o.dismiss();
        }
        e();
        this.c = new a();
        this.c.start();
    }

    private void h() {
        f();
        if (this.m != null) {
            this.m.removeCallbacksAndMessages(null);
        }
        if (!(this.c == null || this.c.a())) {
            this.c.b();
        }
        if (this.e != null) {
            this.e.a(this.k);
        }
    }

    private boolean i() {
        return VERSION.SDK_INT >= 17 ? (isDestroyed() || isFinishing()) ? false : true : !isFinishing();
    }

    public void a() {
        this.l = false;
    }

    public void a(int i) {
    }

    public void a(String str, String str2) {
        PLog.searchLogE("onError errCode = " + str + " errMsg = " + str2);
        f();
        a(str);
        this.l = true;
    }

    public void a(boolean z, String str) {
        PLog.searchLogD("onFinish cancelled = " + z + " imageUrl = " + str);
        f();
        this.l = true;
        if (TextUtils.isEmpty(str)) {
            setResult(0);
            PLog.searchLogD("RESULT_CANCELED");
            PLog.searchLogD("========= searchImage finish ========");
        } else {
            Intent intent = new Intent();
            intent.setData(Uri.parse(str));
            setResult(-1, intent);
            PLog.searchLogD("imageUrl = " + str);
            PLog.searchLogD("========= searchImage finish ========");
        }
        finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (com.alibaba.imagesearch.utils.c.c().enableFullscreenLoadingPage) {
            c();
        }
        setContentView(f.a(this, "layout", "com_alibaba_imagesearch_activity_pailitao"));
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        findViewById(f.a(this, AlibcConstants.ID, "com_taobao_tae_sdk_pailitao_preview_root")).setBackgroundColor(com.alibaba.imagesearch.utils.c.c().loadingPageBGColor);
        this.b = (ImageView) findViewById(f.a(this, AlibcConstants.ID, "com_taobao_tae_sdk_pailitao_preview"));
        a(bundle);
        if (this.j != null) {
            String str = (String) this.j.get("pailitao_preview_image_margin_top");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.b.getLayoutParams();
                    marginLayoutParams.topMargin = parseInt;
                    this.b.setLayoutParams(marginLayoutParams);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        if (TextUtils.isEmpty(this.f) && this.g == null) {
            this.l = true;
            a("check_file_error");
        } else if (bundle != null) {
            this.l = bundle.getBoolean("state_upload", false);
        } else {
            this.l = false;
            if (KernelContext.isInitOk != null && !KernelContext.isInitOk.booleanValue()) {
                PLog.searchLogD("retry init BaiChuan SDK");
                AlibcTradeSDK.asyncInit(getApplication(), new AlibcTradeInitCallback() {
                    public void onFailure(int i, String str) {
                        PLog.searchLogE("retry init BaiChuan SDK Success");
                    }

                    public void onSuccess() {
                        PLog.searchLogD("retry init BaiChuan SDK Success");
                        com.alibaba.baichuan.android.trade.a.setISVCode(com.alibaba.imagesearch.utils.c.c().getVendorId());
                        AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
                        alibcTaokeParams.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
                        com.alibaba.baichuan.android.trade.a.setTaokeParams(alibcTaokeParams);
                    }
                });
            }
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        try {
            if (this.d != null) {
                this.d.dismiss();
                this.d = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.e != null) {
            this.e.a();
        }
    }

    protected void onRestart() {
        super.onRestart();
    }

    protected void onResume() {
        super.onResume();
        e.a("PailitaoLoading");
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.h) {
            if (this.f != null) {
                bundle.putString("extra_image", this.f);
            }
        } else if (this.g != null) {
            bundle.putByteArray("extra_image", this.g);
        }
        bundle.putBoolean("state_upload", this.l);
    }

    public void onStart() {
        super.onStart();
        g();
    }

    protected void onStop() {
        super.onStop();
        h();
    }
}
