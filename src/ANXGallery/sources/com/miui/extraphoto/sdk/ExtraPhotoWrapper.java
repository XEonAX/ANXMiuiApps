package com.miui.extraphoto.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import com.miui.extraphoto.sdk.IExtraPhotoService.Stub;
import com.miui.gallery.R;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class ExtraPhotoWrapper implements ServiceConnection {
    private static ExtraPhotoWrapper sWrapper;
    private IExtraPhotoService mDualService;
    private boolean mHasBindService;
    private StartCallback mStartCallback;

    public interface StartCallback {
        void onStarted(boolean z);
    }

    private ExtraPhotoWrapper() {
    }

    public static ExtraPhotoWrapper getInstance() {
        if (sWrapper == null) {
            sWrapper = new ExtraPhotoWrapper();
        }
        return sWrapper;
    }

    private void init(Context context, StartCallback callback) {
        if (this.mDualService != null) {
            Log.e("ExtraPhotoWrapper", "service has been initialized");
            return;
        }
        this.mStartCallback = callback;
        bindService(context);
    }

    private void bindService(final Context context) {
        ThreadManager.getWorkHandler().post(new Runnable() {
            public void run() {
                if (ExtraPhotoWrapper.this.mHasBindService) {
                    Log.e("ExtraPhotoWrapper", "has bind service");
                    return;
                }
                try {
                    Intent i = new Intent("com.miui.extraphoto.action.EXTRA_PHOTO");
                    i.setPackage("com.miui.extraphoto");
                    boolean bind = context.bindService(i, ExtraPhotoWrapper.this, 1);
                    ExtraPhotoWrapper.this.mHasBindService = true;
                    Log.i("ExtraPhotoWrapper", "bind %s", Boolean.valueOf(bind));
                    if (!bind) {
                        ExtraPhotoWrapper.this.callbackStarted(false);
                    }
                } catch (Throwable e) {
                    Log.e("ExtraPhotoWrapper", e);
                    ExtraPhotoWrapper.this.callbackStarted(false);
                }
            }
        });
    }

    private void unbindService(final Context context) {
        ThreadManager.getWorkHandler().post(new Runnable() {
            public void run() {
                if (ExtraPhotoWrapper.this.mHasBindService) {
                    try {
                        context.unbindService(ExtraPhotoWrapper.this);
                        ExtraPhotoWrapper.this.mHasBindService = false;
                        Log.i("ExtraPhotoWrapper", "unbind service");
                        return;
                    } catch (Throwable e) {
                        Log.e("ExtraPhotoWrapper", e);
                        return;
                    }
                }
                Log.e("ExtraPhotoWrapper", "hasn't bind service");
            }
        });
    }

    private void callbackStarted(final boolean success) {
        Runnable callback = new Runnable() {
            public void run() {
                if (ExtraPhotoWrapper.this.mDualService != null) {
                    try {
                        ExtraPhotoWrapper.this.mDualService.resumeEcho();
                    } catch (Throwable e) {
                        Log.e("ExtraPhotoWrapper", e);
                    } catch (Throwable e2) {
                        Log.e("ExtraPhotoWrapper", e2);
                    }
                }
                if (ExtraPhotoWrapper.this.mStartCallback != null) {
                    ExtraPhotoWrapper.this.mStartCallback.onStarted(success);
                    ExtraPhotoWrapper.this.mStartCallback = null;
                }
            }
        };
        if (Looper.getMainLooper() == Looper.myLooper()) {
            callback.run();
        } else {
            ThreadManager.getMainHandler().post(callback);
        }
    }

    public void onServiceConnected(ComponentName name, IBinder service) {
        Log.i("ExtraPhotoWrapper", "onServiceConnected %s", (Object) service);
        if (service != null) {
            this.mDualService = Stub.asInterface(service);
            callbackStarted(true);
            return;
        }
        callbackStarted(false);
    }

    public void onServiceDisconnected(ComponentName name) {
        Log.i("ExtraPhotoWrapper", "onServiceDisconnected %s", (Object) name);
    }

    public boolean isExtraCamera() {
        boolean ret = false;
        if (this.mDualService != null) {
            try {
                ret = this.mDualService.isExtraCamera();
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
        Log.i("ExtraPhotoWrapper", "isExtraCamera %s", Boolean.valueOf(ret));
        return ret;
    }

    public boolean isExtraPhoto(String path) {
        boolean ret = false;
        if (this.mDualService != null) {
            try {
                ret = this.mDualService.isExtraPhoto(path);
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
        Log.i("ExtraPhotoWrapper", "isExtraPhoto %s, %s", Boolean.valueOf(ret), path);
        return ret;
    }

    public List<Integer> resolveExtraFuncs() {
        List<Integer> ids = new ArrayList();
        if (this.mDualService != null) {
            try {
                List<ExtraFunc> funcs = this.mDualService.resolveExtraFuncs();
                if (funcs != null) {
                    for (ExtraFunc func : funcs) {
                        int id = transFunc2Id(func);
                        if (id > 0) {
                            Log.i("ExtraPhotoWrapper", "resolveExtraFuncs %s", func.name());
                            ids.add(Integer.valueOf(id));
                        }
                    }
                }
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
        return ids;
    }

    private int transFunc2Id(ExtraFunc func) {
        switch (func) {
            case FUNC_FANCYCOLOR:
                return R.id.fancycolor_enter;
            case FUNC_REFOCUS:
                return R.id.refocus_enter;
            case FUNC_FREEVIEW:
                return R.id.freeview_enter;
            default:
                return 0;
        }
    }

    public boolean needEcho(String path) {
        boolean ret = false;
        if (this.mDualService != null) {
            try {
                ret = this.mDualService.needEcho(path);
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
        Log.i("ExtraPhotoWrapper", "needEcho %s, %s", Boolean.valueOf(ret), path);
        return ret;
    }

    public boolean echo(String path, BaseEchoListener listener, boolean atFirst) {
        Log.i("ExtraPhotoWrapper", "echo %s, %s, %s", path, listener, Boolean.valueOf(atFirst));
        if (this.mDualService != null) {
            try {
                return this.mDualService.echo(path, listener, atFirst);
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
        return false;
    }

    public void unregisterEchoListener(BaseEchoListener listener) {
        Log.i("ExtraPhotoWrapper", "unregisterEchoListener %s", (Object) listener);
        if (this.mDualService != null) {
            try {
                this.mDualService.unregisterEchoListener(listener);
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
    }

    public void start(Context context, StartCallback callback) {
        Log.i("ExtraPhotoWrapper", "resumeEcho");
        init(context, callback);
    }

    public void stop(Context context) {
        Log.i("ExtraPhotoWrapper", "pauseEcho");
        releaseEcho();
        this.mStartCallback = null;
        this.mDualService = null;
        unbindService(context);
    }

    private void releaseEcho() {
        Log.i("ExtraPhotoWrapper", "releaseEcho");
        if (this.mDualService != null) {
            try {
                this.mDualService.releaseEcho();
            } catch (Throwable e) {
                Log.e("ExtraPhotoWrapper", e);
            } catch (Throwable e2) {
                Log.e("ExtraPhotoWrapper", e2);
            }
        }
    }
}
