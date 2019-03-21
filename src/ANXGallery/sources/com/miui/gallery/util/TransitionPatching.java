package com.miui.gallery.util;

import android.app.Activity;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.Window;
import java.lang.reflect.Method;

public class TransitionPatching {
    public static void onActivityStopWhenEnterStarting(Activity activity) {
        Log.w("TransitionPatching", "onActivityStopWhenEnterStarting");
        if (activity != null && VERSION.SDK_INT > 23) {
            try {
                Object transitionState = ReflectUtils.getField("android.app.Activity", activity, "mActivityTransitionState");
                if (transitionState != null) {
                    Object enterTransition = ReflectUtils.getField("android.app.ActivityTransitionState", transitionState, "mEnterTransitionCoordinator");
                    if (enterTransition != null) {
                        Method forceViewsToAppear = ReflectUtils.getMethod("android.app.EnterTransitionCoordinator", "forceViewsToAppear", new Class[0]);
                        if (forceViewsToAppear != null) {
                            ReflectUtils.invokeMethod(enterTransition, forceViewsToAppear, new Object[0]);
                            Log.d("TransitionPatching", "forceViewsToAppear");
                        }
                        Object viewReadyListener = ReflectUtils.getField("android.app.EnterTransitionCoordinator", enterTransition, "mViewsReadyListener");
                        if (viewReadyListener != null) {
                            Method removeListener = ReflectUtils.getMethod("com.android.internal.view.OneShotPreDrawListener", "removeListener", new Class[0]);
                            if (removeListener != null) {
                                ReflectUtils.invokeMethod(viewReadyListener, removeListener, new Object[0]);
                                Log.d("TransitionPatching", "removeListener");
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.w("TransitionPatching", "preActivityStop occurs error.\n", e);
            }
        }
    }

    public static void setOnEnterStartedListener(Activity activity, final Runnable listener) {
        Log.d("TransitionPatching", "onStartEnterTransition");
        if (activity != null && listener != null) {
            Window window = activity.getWindow();
            if (window != null) {
                final View decorView = window.getDecorView();
                if (decorView != null) {
                    final ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
                    if (viewTreeObserver != null) {
                        viewTreeObserver.addOnPreDrawListener(new OnPreDrawListener() {
                            public boolean onPreDraw() {
                                Log.d("TransitionPatching", "onEnterTransitionStarted");
                                listener.run();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(this);
                                } else {
                                    ViewTreeObserver observer = decorView.getViewTreeObserver();
                                    if (observer != null && observer.isAlive()) {
                                        observer.removeOnPreDrawListener(this);
                                    }
                                }
                                return true;
                            }
                        });
                    }
                }
            }
        }
    }
}
