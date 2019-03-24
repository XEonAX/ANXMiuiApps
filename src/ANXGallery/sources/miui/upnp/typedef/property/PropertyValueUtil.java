package miui.upnp.typedef.property;

import android.util.Log;
import java.lang.reflect.Constructor;

public class PropertyValueUtil {
    private static final String TAG = "PropertyValueUtil";

    public static PropertyValue createByType(Class<?> type, Object value) {
        if (value == null) {
            return createByType(type);
        }
        if (type.equals(value.getClass())) {
            return PropertyValue.create(value);
        }
        Log.e(TAG, String.format("invalid: type is %s, init value is %s (%s)", new Object[]{type.getSimpleName(), value.getClass().getSimpleName(), value.toString()}));
        return createByType(type);
    }

    public static PropertyValue createByType(Class<?> type) {
        Object value = null;
        try {
            Constructor<?>[] constructors = type.getConstructors();
            int length = constructors.length;
            int i = 0;
            while (i < length) {
                Constructor<?> c = constructors[i];
                if (c.getParameterTypes().length == 0) {
                    value = type.newInstance();
                    break;
                } else if (c.getParameterTypes().length != 1) {
                    i++;
                } else if (type == Boolean.class) {
                    value = Boolean.valueOf(false);
                } else if (type == Long.class) {
                    value = Long.valueOf(0);
                } else if (type == Integer.class) {
                    value = Integer.valueOf(0);
                } else if (type == Float.class) {
                    value = Float.valueOf(0.0f);
                } else if (type == Double.class) {
                    value = Double.valueOf(0.0d);
                }
            }
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
        return PropertyValue.create(value);
    }
}
