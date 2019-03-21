package miui.external;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import java.lang.reflect.Field;
import miui.external.SdkConstants.SdkError;

final class SdkErrorInstrumentation extends Instrumentation implements SdkConstants {
    private SdkError mError;

    private SdkErrorInstrumentation(SdkError error) {
        this.mError = error;
    }

    static void handleSdkError(SdkError error) {
        try {
            Class<?> activityThreadClass = Class.forName("android.app.ActivityThread");
            Object at = activityThreadClass.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field instField = getDeclaredField(activityThreadClass, at, (Instrumentation) activityThreadClass.getMethod("getInstrumentation", new Class[0]).invoke(at, new Object[0]), null, null);
            Instrumentation oldInst = (Instrumentation) instField.get(at);
            Instrumentation newInst = new SdkErrorInstrumentation(error);
            for (Class<?> clazz = Instrumentation.class; clazz != null; clazz = clazz.getSuperclass()) {
                for (Field field : clazz.getDeclaredFields()) {
                    field.setAccessible(true);
                    field.set(newInst, field.get(oldInst));
                }
            }
            instField.set(at, newInst);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static Field getDeclaredField(Class<?> clazz, Object holder, Object value, String name, Class<?> type) throws NoSuchFieldException {
        int len$;
        int i$;
        Field field;
        Field[] fields = clazz.getDeclaredFields();
        if (!(holder == null || value == null)) {
            Field[] arr$ = fields;
            len$ = arr$.length;
            i$ = 0;
            while (i$ < len$) {
                field = arr$[i$];
                field.setAccessible(true);
                try {
                    if (field.get(holder) == value) {
                        return field;
                    }
                    i$++;
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (name != null) {
            for (Field field2 : fields) {
                if (field2.getName().equals(name)) {
                    field2.setAccessible(true);
                    return field2;
                }
            }
        }
        Field candidate = null;
        if (type == null) {
            for (Field field22 : fields) {
                if (field22.getType() == type || field22.getType().isInstance(type)) {
                    if (candidate == null) {
                        candidate = field22;
                    } else {
                        throw new NoSuchFieldException("More than one matched field found: " + candidate.getName() + " and " + field22.getName());
                    }
                }
            }
            if (candidate == null) {
                throw new NoSuchFieldException("No such field found of value " + value);
            }
            candidate.setAccessible(true);
        }
        return candidate;
    }

    public Activity newActivity(Class<?> clazz, Context context, IBinder token, Application application, Intent intent, ActivityInfo info, CharSequence title, Activity parent, String id, Object lastNonConfigurationInstance) throws InstantiationException, IllegalAccessException {
        if (!clazz.getSimpleName().startsWith("SdkError")) {
            clazz = SdkErrorActivity.class;
            if (intent == null) {
                intent = new Intent();
            }
            intent.putExtra("com.miui.sdk.error", this.mError);
        }
        return super.newActivity(clazz, context, token, application, intent, info, title, parent, id, lastNonConfigurationInstance);
    }

    public Activity newActivity(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        if (!className.startsWith("SdkError")) {
            className = SdkErrorActivity.class.getName();
            if (intent == null) {
                intent = new Intent();
            }
            intent.putExtra("com.miui.sdk.error", this.mError);
        }
        return super.newActivity(cl, className, intent);
    }
}
