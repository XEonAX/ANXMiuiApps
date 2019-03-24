package miui.imagefilters;

import android.graphics.Bitmap;
import android.util.Log;
import java.lang.reflect.Method;
import miui.content.res.IconCustomizer;
import miui.imagefilters.FilterParamType.ParamType;
import miui.imagefilters.IImageFilter.ImageFilterGroup;

public class ImageFilterUtils {
    static final float COLOR_TO_GRAYSCALE_FACTOR_B = 0.114f;
    static final float COLOR_TO_GRAYSCALE_FACTOR_G = 0.587f;
    static final float COLOR_TO_GRAYSCALE_FACTOR_R = 0.299f;
    static final String TAG = "ImageFilterUtils";

    public static int HslToRgb(float[] hsl) {
        return HslToRgb(hsl[0], hsl[1], hsl[2]);
    }

    public static int HslToRgb(float h, float s, float l) {
        int r;
        int b;
        int g;
        if (s == 0.0f) {
            r = (int) (1132396544 * l);
            b = r;
            g = r;
        } else {
            float q = l < 0.5f ? (1.0f + s) * l : (l + s) - (l * s);
            float p = (2.0f * l) - q;
            float Hk = h / 360.0f;
            float[] T = new float[]{Hk + 0.33333334f, Hk, Hk - 0.33333334f};
            for (int i = 0; i < 3; i++) {
                if (T[i] < 0.0f) {
                    T[i] = (float) (((double) T[i]) + 1.0d);
                } else if (T[i] > 1.0f) {
                    T[i] = (float) (((double) T[i]) - 1.0d);
                }
                if (T[i] * 6.0f < 1.0f) {
                    T[i] = (((q - p) * 6.0f) * T[i]) + p;
                } else if (((double) T[i]) * 2.0d < 1.0d) {
                    T[i] = q;
                } else if (((double) T[i]) * 3.0d < 2.0d) {
                    T[i] = (((q - p) * (0.6666667f - T[i])) * 6.0f) + p;
                } else {
                    T[i] = p;
                }
            }
            r = (int) (((double) T[0]) * 255.0d);
            g = (int) (((double) T[1]) * 255.0d);
            b = (int) (((double) T[2]) * 255.0d);
        }
        return ((-16777216 | (clamp(0, r, 255) << 16)) | (clamp(0, g, 255) << 8)) | clamp(0, b, 255);
    }

    public static int HsvToRgb(float h, float s, float v) {
        float r = 0.0f;
        float g = 0.0f;
        float b = 0.0f;
        if (s != 0.0f) {
            float sectorPos = h / 60.0f;
            int sectorNumber = (int) Math.floor((double) sectorPos);
            float fractionalSector = sectorPos - ((float) sectorNumber);
            float p = (1.0f - s) * v;
            float q = (1.0f - (s * fractionalSector)) * v;
            float t = (1.0f - ((1.0f - fractionalSector) * s)) * v;
            switch (sectorNumber) {
                case 0:
                    r = v;
                    g = t;
                    b = p;
                    break;
                case 1:
                    r = q;
                    g = v;
                    b = p;
                    break;
                case 2:
                    r = p;
                    g = v;
                    b = t;
                    break;
                case 3:
                    r = p;
                    g = q;
                    b = v;
                    break;
                case 4:
                    r = t;
                    g = p;
                    b = v;
                    break;
                case 5:
                    r = v;
                    g = p;
                    b = q;
                    break;
            }
        }
        b = v;
        g = v;
        r = v;
        return ((-16777216 | (((int) (clamp(0.0f, r, 1.0f) * 1132396544)) << 16)) | (((int) (clamp(0.0f, g, 1.0f) * 1132396544)) << 8)) | ((int) (1132396544 * clamp(0.0f, b, 1.0f)));
    }

    public static void RgbToHsl(int color, float[] hsl) {
        RgbToHsl((color >>> 16) & 255, (color >>> 8) & 255, 255 & color, hsl);
    }

    public static void RgbToHsl(int red, int green, int blue, float[] hsl) {
        float h = 0.0f;
        float s = 0.0f;
        float r = ((float) red) / 255.0f;
        float g = ((float) green) / 255.0f;
        float b = ((float) blue) / 255.0f;
        float max = Math.max(r, Math.max(g, b));
        float min = Math.min(r, Math.min(g, b));
        if (max == min) {
            h = 0.0f;
        } else if (max == r && g >= b) {
            h = (60.0f * (g - b)) / (max - min);
        } else if (max == r && g < b) {
            h = ((60.0f * (g - b)) / (max - min)) + 360.0f;
        } else if (max == g) {
            h = ((60.0f * (b - r)) / (max - min)) + 120.0f;
        } else if (max == b) {
            h = ((60.0f * (r - g)) / (max - min)) + 240.0f;
        }
        float l = (max + min) / 2.0f;
        if (l == 0.0f || max == min) {
            s = 0.0f;
        } else if (0.0f < l && ((double) l) <= 0.5d) {
            s = (max - min) / (max + min);
        } else if (((double) l) > 0.5d) {
            s = (max - min) / (2.0f - (max + min));
        }
        hsl[0] = clamp(0.0f, h, 360.0f);
        hsl[1] = clamp(0.0f, s, 1.0f);
        hsl[2] = clamp(0.0f, l, 1.0f);
    }

    public static void RgbToHsv(int color, float[] hsv) {
        RgbToHsv((color >>> 16) & 255, (color >>> 8) & 255, 255 & color, hsv);
    }

    public static void RgbToHsv(int red, int green, int blue, float[] hsv) {
        float s;
        float h = 0.0f;
        float r = ((float) red) / 255.0f;
        float g = ((float) green) / 255.0f;
        float b = ((float) blue) / 255.0f;
        float max = Math.max(r, Math.max(g, b));
        float min = Math.min(r, Math.min(g, b));
        if (max == min) {
            h = 0.0f;
        } else if (max == r && g >= b) {
            h = (60.0f * (g - b)) / (max - min);
        } else if (max == r && g < b) {
            h = ((60.0f * (g - b)) / (max - min)) + 360.0f;
        } else if (max == g) {
            h = ((60.0f * (b - r)) / (max - min)) + 120.0f;
        } else if (max == b) {
            h = ((60.0f * (r - g)) / (max - min)) + 240.0f;
        }
        float v = max;
        if (max == 0.0f) {
            s = 0.0f;
        } else {
            s = (max - min) / max;
        }
        hsv[0] = clamp(0.0f, h, 360.0f);
        hsv[1] = clamp(0.0f, s, 1.0f);
        hsv[2] = clamp(0.0f, v, 1.0f);
    }

    public static void interpolate(float[] hsl1, float[] hsl2, float amount, float[] hslOut) {
        int size = Math.min(hsl1.length, hsl2.length);
        for (int i = 0; i < size; i++) {
            hslOut[i] = hsl1[i] + ((hsl2[i] - hsl1[i]) * amount);
        }
    }

    public static int interpolate(int inMin, int inMax, int outMin, int outMax, int value) {
        return (int) (((float) outMin) + ((((float) value) * ((float) (outMax - outMin))) / ((float) (inMax - inMin))));
    }

    public static int clamp(int min, int value, int max) {
        if (value <= min) {
            return min;
        }
        if (value >= max) {
            return max;
        }
        return value;
    }

    public static float clamp(float min, float value, float max) {
        if (value <= min) {
            return min;
        }
        if (value >= max) {
            return max;
        }
        return value;
    }

    public static int convertColorToGrayscale(int color) {
        return (int) (((COLOR_TO_GRAYSCALE_FACTOR_R * ((float) ((16711680 & color) >>> 16))) + (COLOR_TO_GRAYSCALE_FACTOR_G * ((float) ((65280 & color) >>> 8)))) + (COLOR_TO_GRAYSCALE_FACTOR_B * ((float) (color & 255))));
    }

    public static void checkChannelParam(String paramString, boolean[] outRgba) {
        int i = 0;
        if (paramString.equalsIgnoreCase("r") || paramString.equalsIgnoreCase("red")) {
            outRgba[0] = true;
        } else if (paramString.equalsIgnoreCase("g") || paramString.equalsIgnoreCase("green")) {
            outRgba[1] = true;
        } else if (paramString.equalsIgnoreCase("b") || paramString.equalsIgnoreCase("blue")) {
            outRgba[2] = true;
        } else if (!paramString.equalsIgnoreCase("a") && !paramString.equalsIgnoreCase("alpha")) {
            while (true) {
                int i2 = i;
                if (i2 < outRgba.length) {
                    outRgba[i2] = true;
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        } else if (outRgba.length >= 4) {
            outRgba[3] = true;
        }
    }

    static boolean setProperty(Object filterObj, String property, Object value) {
        Exception e;
        StringBuilder stringBuilder;
        Object obj = filterObj;
        String str = property;
        String str2 = value;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("set");
        stringBuilder2.append(str);
        String strPropertyMethod = stringBuilder2.toString();
        Method propertyMethod = null;
        Method[] methods = filterObj.getClass().getMethods();
        for (Method method : methods) {
            if (strPropertyMethod.equalsIgnoreCase(method.getName()) && method.getParameterTypes().length == 1) {
                propertyMethod = method;
                break;
            }
        }
        Method propertyMethod2 = propertyMethod;
        if (propertyMethod2 == null) {
            String str3 = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("unknown property:");
            stringBuilder3.append(str);
            stringBuilder3.append(",obj:");
            stringBuilder3.append(obj);
            Log.w(str3, stringBuilder3.toString());
            return false;
        }
        FilterParamType paramType = (FilterParamType) propertyMethod2.getAnnotation(FilterParamType.class);
        ParamType paramTypeEnum = paramType == null ? ParamType.DEFAULT : paramType.value();
        Class paramClass = propertyMethod2.getParameterTypes()[0];
        Object objValue = null;
        String str4;
        Method[] methodArr;
        try {
            if (str2 instanceof String) {
                String strValue = str2;
                if (String.class.equals(paramClass)) {
                    objValue = strValue;
                } else if (Integer.TYPE.equals(paramClass)) {
                    try {
                        int intVal = Integer.parseInt(strValue);
                        if (paramTypeEnum == ParamType.ICON_SIZE) {
                            intVal = IconCustomizer.hdpiIconSizeToCurrent(intVal);
                        }
                        Integer objValue2 = Integer.valueOf(intVal);
                    } catch (Exception e2) {
                        e = e2;
                        str4 = strPropertyMethod;
                        methodArr = methods;
                        strPropertyMethod = TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("set property fail. obj:");
                        stringBuilder.append(obj);
                        stringBuilder.append(",property:");
                        stringBuilder.append(str);
                        stringBuilder.append(",value:");
                        stringBuilder.append(str2);
                        Log.e(strPropertyMethod, stringBuilder.toString(), e);
                        return false;
                    }
                } else if (Float.TYPE.equals(paramClass)) {
                    float floatVal = Float.parseFloat(strValue);
                    if (paramTypeEnum == ParamType.ICON_SIZE) {
                        floatVal = IconCustomizer.hdpiIconSizeToCurrent(floatVal);
                    }
                    Float objValue22 = Float.valueOf(floatVal);
                } else if (Double.TYPE.equals(paramClass)) {
                    double doubleVal = Double.parseDouble(strValue);
                    if (paramTypeEnum == ParamType.ICON_SIZE) {
                        doubleVal = IconCustomizer.hdpiIconSizeToCurrent(doubleVal);
                    }
                    Double objValue222 = Double.valueOf(doubleVal);
                } else if (Boolean.TYPE.equals(paramClass)) {
                    Boolean objValue2222 = Boolean.valueOf(Boolean.parseBoolean(strValue));
                } else if (Bitmap.class.equals(paramClass)) {
                    Bitmap objValue22222 = IconCustomizer.getRawIcon(strValue);
                } else if (paramClass.isEnum()) {
                    Enum objValue222222 = Enum.valueOf(paramClass, strValue);
                } else if (paramClass.isArray()) {
                    Class componentClass = paramClass.getComponentType();
                    String[] eles = strValue.split(",");
                    Object array;
                    int i;
                    if (Integer.TYPE.equals(componentClass)) {
                        Object array2 = new int[eles.length];
                        int i2 = 0;
                        while (true) {
                            int i3 = i2;
                            if (i3 >= array2.length) {
                                break;
                            }
                            array2[i3] = Integer.parseInt(eles[i3].trim());
                            if (paramTypeEnum == ParamType.ICON_SIZE) {
                                array2[i3] = IconCustomizer.hdpiIconSizeToCurrent(array2[i3]);
                            }
                            i2 = i3 + 1;
                        }
                        objValue = array2;
                    } else if (Float.TYPE.equals(componentClass)) {
                        array = new float[eles.length];
                        for (i = 0; i < array.length; i++) {
                            array[i] = Float.parseFloat(eles[i].trim());
                            if (paramTypeEnum == ParamType.ICON_SIZE) {
                                array[i] = IconCustomizer.hdpiIconSizeToCurrent(array[i]);
                            }
                        }
                        objValue = array;
                    } else if (Double.TYPE.equals(componentClass)) {
                        array = new double[eles.length];
                        i = 0;
                        while (i < array.length) {
                            str4 = strPropertyMethod;
                            methodArr = methods;
                            try {
                                array[i] = (double) Float.parseFloat(eles[i].trim());
                                if (paramTypeEnum == ParamType.ICON_SIZE) {
                                    array[i] = IconCustomizer.hdpiIconSizeToCurrent(array[i]);
                                }
                                i++;
                                strPropertyMethod = str4;
                                methods = methodArr;
                            } catch (Exception e3) {
                                e = e3;
                                strPropertyMethod = TAG;
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("set property fail. obj:");
                                stringBuilder.append(obj);
                                stringBuilder.append(",property:");
                                stringBuilder.append(str);
                                stringBuilder.append(",value:");
                                stringBuilder.append(str2);
                                Log.e(strPropertyMethod, stringBuilder.toString(), e);
                                return false;
                            }
                        }
                        methodArr = methods;
                        objValue = array;
                    } else {
                        methodArr = methods;
                    }
                } else {
                    methodArr = methods;
                    strPropertyMethod = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("unknown param type:");
                    stringBuilder.append(paramClass.getName());
                    stringBuilder.append(",obj:");
                    stringBuilder.append(obj);
                    stringBuilder.append(",property:");
                    stringBuilder.append(str);
                    Log.w(strPropertyMethod, stringBuilder.toString());
                    return false;
                }
            } else {
                methodArr = methods;
                if (str2 instanceof ImageFilterGroup) {
                    objValue = str2;
                }
            }
            propertyMethod2.invoke(obj, new Object[]{objValue});
            return true;
        } catch (Exception e4) {
            e = e4;
            str4 = strPropertyMethod;
            methodArr = methods;
            strPropertyMethod = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("set property fail. obj:");
            stringBuilder.append(obj);
            stringBuilder.append(",property:");
            stringBuilder.append(str);
            stringBuilder.append(",value:");
            stringBuilder.append(str2);
            Log.e(strPropertyMethod, stringBuilder.toString(), e);
            return false;
        }
    }
}
