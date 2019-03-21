package com.miui.gallery.data;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.util.Log;

public class LocationUtil {
    private static int INT_COORDINATE_FACTOR = 1000000;

    public static double convertRationalLatLonToDouble(String rationalString, String ref) {
        if (TextUtils.isEmpty(rationalString)) {
            return 0.0d;
        }
        try {
            String[] parts = rationalString.split(",");
            String[] pair = parts[0].split("/");
            double degrees = Double.parseDouble(pair[0].trim()) / Double.parseDouble(pair[1].trim());
            pair = parts[1].split("/");
            double minutes = Double.parseDouble(pair[0].trim()) / Double.parseDouble(pair[1].trim());
            pair = parts[2].split("/");
            double result = ((minutes / 60.0d) + degrees) + ((Double.parseDouble(pair[0].trim()) / Double.parseDouble(pair[1].trim())) / 3600.0d);
            if (TextUtils.isEmpty(ref)) {
                return result;
            }
            if (!ref.equals("S")) {
                if (!ref.equals("W")) {
                    return result;
                }
            }
            return -result;
        } catch (NumberFormatException e) {
            return 0.0d;
        } catch (ArrayIndexOutOfBoundsException e2) {
            return 0.0d;
        }
    }

    public static String convertDoubleToLaLon(double value) {
        long degrees = (long) value;
        long minutes = (long) ((value - ((double) degrees)) * 60.0d);
        return degrees + "/1," + minutes + "/1," + Math.round((((value - ((double) degrees)) - (((double) minutes) / 60.0d)) * 3600.0d) * 1.0E7d) + "/10000000";
    }

    public static boolean isValidateCoordinate(double latitude, double longitude) {
        return (latitude == 0.0d || longitude == 0.0d) ? false : true;
    }

    public static String getCityNameFromRes(Context context, String cityId) {
        if (TextUtils.isEmpty(cityId)) {
            return null;
        }
        int resID = context.getResources().getIdentifier("cityname_" + cityId, "string", context.getPackageName());
        if (resID != 0) {
            return context.getResources().getString(resID);
        }
        Log.e("LocationUtil", "cannot find a res id for %s", (Object) cityId);
        return null;
    }

    public static int convertIntLat(double lat) {
        return (int) (((double) INT_COORDINATE_FACTOR) * lat);
    }

    public static boolean isLocationValidate(String location) {
        return (TextUtils.isEmpty(location) || "-1".equals(location) || "-2".equals(location)) ? false : true;
    }
}
