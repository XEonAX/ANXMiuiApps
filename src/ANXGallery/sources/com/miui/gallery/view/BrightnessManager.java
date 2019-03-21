package com.miui.gallery.view;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.view.WindowManager.LayoutParams;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BrightnessProvider;
import com.miui.gallery.util.Log;
import java.lang.ref.WeakReference;

public class BrightnessManager implements BrightnessProvider {
    private static final Uri BRIGHTNESS_ADJ_URI = System.getUriFor("screen_auto_brightness_adj");
    private static final Uri BRIGHTNESS_URI = System.getUriFor("screen_brightness");
    private WeakReference<Activity> mActivityRef;
    private int mBrightMode = -1;
    BrightnessAsynTask mBrightnessAsynTask;
    private ContentObserver mBrightnessObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            if (BrightnessManager.this.getActivity() != null && !selfChange) {
                BrightnessManager.this.mSystemBrightnessChanged = true;
                BrightnessManager.this.adjustBrightness();
            }
        }
    };
    private float mCurrentBrightnessAuto = 0.0f;
    private float mCurrentBrightnessManual = -1.0f;
    private boolean mFocus = true;
    private boolean mSystemBrightnessChanged = false;

    class BrightnessAsynTask extends AsyncTask<Void, Void, Float> {
        BrightnessAsynTask() {
        }

        protected Float doInBackground(Void... voids) {
            try {
                Activity activity = (Activity) BrightnessManager.this.mActivityRef.get();
                if (activity != null) {
                    BrightnessManager.this.mBrightMode = System.getInt(activity.getContentResolver(), "screen_brightness_mode");
                    if (BrightnessManager.this.mBrightMode == 1) {
                        if (BrightnessManager.this.mCurrentBrightnessManual == -1.0f) {
                            return Float.valueOf(BrightnessManager.this.mCurrentBrightnessAuto);
                        }
                        if (BrightnessManager.this.mCurrentBrightnessAuto != 0.0f) {
                            return Float.valueOf(BrightnessManager.this.mCurrentBrightnessAuto);
                        }
                        BrightnessManager.this.mBrightMode = 0;
                        return Float.valueOf(BrightnessManager.this.mCurrentBrightnessManual);
                    } else if (BrightnessManager.this.mBrightMode == 0) {
                        return Float.valueOf(BrightnessManager.this.mCurrentBrightnessManual);
                    }
                }
            } catch (SettingNotFoundException e) {
                e.printStackTrace();
            }
            return Float.valueOf(-1.0f);
        }

        protected void onPostExecute(Float resultBrightness) {
            super.onPostExecute(resultBrightness);
            if (!isCancelled()) {
                BrightnessManager.this.adjustBrightnessTask(BrightnessManager.this.mSystemBrightnessChanged, resultBrightness.floatValue(), BrightnessManager.this.mBrightMode);
            }
        }
    }

    public BrightnessManager(Activity activity, float manualBrightness, float autoBrightness) {
        float ensureBrightness;
        if (autoBrightness >= 0.0f) {
            ensureBrightness = ensureBrightness(autoBrightness);
        } else {
            ensureBrightness = 0.0f;
        }
        this.mCurrentBrightnessAuto = ensureBrightness;
        if (manualBrightness > 0.0f) {
            ensureBrightness = ensureBrightness(manualBrightness);
        } else {
            ensureBrightness = -1.0f;
        }
        this.mCurrentBrightnessManual = ensureBrightness;
        this.mActivityRef = new WeakReference(activity);
    }

    public void adjustBrightnessTask(boolean systemBrightnessChanged, float brightness, int brightMode) {
        float f = -1.0f;
        Activity activity = getActivity();
        if (activity != null) {
            LayoutParams localLayoutParams = activity.getWindow().getAttributes();
            if (brightMode == 1) {
                if (this.mFocus) {
                    setTemporaryScreenAutoBrightnessAdjustmentRatio(brightness);
                } else {
                    setTemporaryScreenAutoBrightnessAdjustmentRatio(0.0f);
                }
            } else if (brightMode == 0) {
                if (this.mFocus) {
                    if (!systemBrightnessChanged) {
                        f = this.mCurrentBrightnessManual;
                    }
                    localLayoutParams.screenBrightness = f;
                } else {
                    localLayoutParams.screenBrightness = -1.0f;
                }
                activity.getWindow().setAttributes(localLayoutParams);
            }
        }
    }

    private void adjustBrightness() {
        if (this.mBrightnessAsynTask != null) {
            this.mBrightnessAsynTask.cancel(true);
        }
        this.mBrightnessAsynTask = new BrightnessAsynTask();
        this.mBrightnessAsynTask.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }

    public void setTemporaryScreenAutoBrightnessAdjustmentRatio(float ratio) {
        BaseMiscUtil.invokeSafely((PowerManager) getActivity().getSystemService("power"), "setTemporaryAutoBrightnessAdjustmentRatio", new Class[]{Float.TYPE}, Float.valueOf(ratio));
    }

    public float getManualBrightness() {
        return this.mSystemBrightnessChanged ? -1.0f : this.mCurrentBrightnessManual;
    }

    public float getAutoBrightness() {
        return this.mCurrentBrightnessAuto;
    }

    private float ensureBrightness(float brightness) {
        return Math.max(0.0f, Math.min(brightness, 1.0f));
    }

    private Activity getActivity() {
        return this.mActivityRef != null ? (Activity) this.mActivityRef.get() : null;
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        this.mFocus = hasFocus;
        adjustBrightness();
    }

    public void onResume() {
        registerObserver();
        adjustBrightness();
    }

    public void onPause() {
        adjustBrightness();
        unregisterObserver();
    }

    private void registerObserver() {
        Activity activity = getActivity();
        if (activity != null) {
            try {
                ContentResolver cr = activity.getContentResolver();
                cr.registerContentObserver(BRIGHTNESS_URI, true, this.mBrightnessObserver);
                cr.registerContentObserver(BRIGHTNESS_ADJ_URI, true, this.mBrightnessObserver);
            } catch (Exception e) {
                Log.e("BrightnessManager", "Register BrightnessObserver error: %s" + e);
            }
        }
    }

    private void unregisterObserver() {
        Activity activity = getActivity();
        if (activity != null) {
            try {
                activity.getContentResolver().unregisterContentObserver(this.mBrightnessObserver);
            } catch (Exception e) {
                Log.e("BrightnessManager", "Unregister BrightnessObserver error: %s" + e);
            }
        }
    }
}
