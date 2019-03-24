package miui.telephony;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.provider.Settings.System;
import java.util.ArrayList;
import java.util.List;
import miui.content.res.ThemeResources;
import miui.date.Calendar;
import miui.os.C0004SystemProperties;
import miui.reflect.Method;
import miui.util.AppConstants;

public class PhoneDebug {
    public static final String PHONE_DEBUG_FLAG = "phone_debug_flag";
    public static boolean VDBG;
    private static List<Listener> sListeners = null;

    public interface Listener {
        void onDebugChanged();
    }

    static {
        boolean z = false;
        VDBG = false;
        try {
            Context context = AppConstants.getCurrentApplication();
            if (ThemeResources.FRAMEWORK_PACKAGE.equals(getOpPackageName(context))) {
                registerDelay(Calendar.MILLISECOND_OF_MINUTE);
                if (System.getInt(context.getContentResolver(), PHONE_DEBUG_FLAG, 0) == 1 || C0004SystemProperties.getBoolean("debug.miui.phone", false)) {
                    z = true;
                }
                VDBG = z;
                return;
            }
            register();
        } catch (Exception e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("init");
            stringBuilder.append(e);
            Rlog.w("PhoneDebug", stringBuilder.toString());
        }
    }

    private PhoneDebug() {
    }

    public static Listener addListener(Listener listener) {
        if (sListeners == null) {
            sListeners = new ArrayList(1);
        }
        if (!(listener == null || sListeners.contains(listener))) {
            sListeners.add(listener);
            listener.onDebugChanged();
        }
        return listener;
    }

    public static void removeListener(Listener listener) {
        if (sListeners != null && listener != null) {
            sListeners.remove(listener);
            if (sListeners.isEmpty()) {
                sListeners = null;
            }
        }
    }

    private static void registerDelay(final int time) {
        if (VDBG) {
            Rlog.w("PhoneDebug", "registerDelay");
        }
        new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep((long) time);
                    PhoneDebug.register();
                } catch (Exception te) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("registerDelay");
                    stringBuilder.append(te);
                    Rlog.w("PhoneDebug", stringBuilder.toString());
                }
            }
        }).start();
    }

    private static void register() {
        try {
            final ContentResolver cr = AppConstants.getCurrentApplication().getContentResolver();
            boolean z = true;
            if (!(System.getInt(cr, PHONE_DEBUG_FLAG, 0) == 1 || C0004SystemProperties.getBoolean("debug.miui.phone", false))) {
                z = false;
            }
            VDBG = z;
            cr.registerContentObserver(System.getUriFor(PHONE_DEBUG_FLAG), false, new ContentObserver(null) {
                public void onChange(boolean selfChange) {
                    boolean z = true;
                    if (!(System.getInt(cr, PhoneDebug.PHONE_DEBUG_FLAG, 0) == 1 || C0004SystemProperties.getBoolean("debug.miui.phone", false))) {
                        z = false;
                    }
                    PhoneDebug.VDBG = z;
                    if (PhoneDebug.VDBG) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("onChange VDBG=");
                        stringBuilder.append(PhoneDebug.VDBG);
                        Rlog.w("PhoneDebug", stringBuilder.toString());
                    }
                    if (PhoneDebug.sListeners != null) {
                        for (Listener l : PhoneDebug.sListeners) {
                            l.onDebugChanged();
                        }
                    }
                }
            });
        } catch (Exception te) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("register");
            stringBuilder.append(te);
            Rlog.w("PhoneDebug", stringBuilder.toString());
        }
    }

    private static String getOpPackageName(Context context) {
        return (String) Method.of(Context.class, "getOpPackageName", String.class, new Class[0]).invokeObject(null, context, new Object[0]);
    }
}
