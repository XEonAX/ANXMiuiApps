package com.kingsoft.iciba.a;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

public final class k {
    private static Uri a = Uri.parse("content://telephony/carriers/preferapn");

    public static String a(Context context) {
        String str = "other";
        long currentTimeMillis = System.currentTimeMillis();
        int b = b(context);
        Log.i("NetType", "===========elpase:" + (System.currentTimeMillis() - currentTimeMillis));
        switch (b) {
            case 0:
                return "network";
            case 4:
                return "WIFI";
            case 5:
                return "ctwap_3g";
            case 6:
                return "ctnet_3g";
            case 7:
                return "ctwap_2g";
            case 8:
                return "ctnet_2g";
            case 9:
                return "cmwap_3g";
            case 10:
                return "cmnet_3g";
            case 11:
                return "cmwap_2g";
            case 12:
                return "cmnet_2g";
            case 13:
                return "cuwap_3g";
            case 14:
                return "cunet_3g";
            case 15:
                return "cuwap_2g";
            case 16:
                return "cunet_2g";
            case 17:
                return "other";
            default:
                return str;
        }
    }

    private static int b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return 0;
            }
            int type = activeNetworkInfo.getType();
            if (type == 1) {
                return 4;
            }
            if (type == 0) {
                Object obj;
                int obj2;
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                    case 0:
                        obj2 = null;
                        break;
                    case 1:
                        obj2 = null;
                        break;
                    case 2:
                        obj2 = null;
                        break;
                    case 3:
                        obj2 = 1;
                        break;
                    case 4:
                        obj2 = null;
                        break;
                    case 5:
                        obj2 = 1;
                        break;
                    case 6:
                        obj2 = 1;
                        break;
                    case 7:
                        obj2 = null;
                        break;
                    case 8:
                        obj2 = 1;
                        break;
                    case 9:
                        obj2 = 1;
                        break;
                    case 10:
                        obj2 = 1;
                        break;
                    case 11:
                        obj2 = null;
                        break;
                    case 12:
                        obj2 = 1;
                        break;
                    case 13:
                        obj2 = 1;
                        break;
                    case 14:
                        obj2 = 1;
                        break;
                    case 15:
                        obj2 = 1;
                        break;
                    default:
                        obj2 = null;
                        break;
                }
                Cursor query = context.getContentResolver().query(a, null, null, null, null);
                if (query != null) {
                    query.moveToFirst();
                    String string = query.getString(query.getColumnIndex("user"));
                    if (!TextUtils.isEmpty(string)) {
                        if (string.startsWith("ctwap")) {
                            return obj2 != null ? 5 : 7;
                        } else {
                            if (string.startsWith("ctnet")) {
                                return obj2 != null ? 6 : 8;
                            }
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                Log.i("", "==================netmode:" + extraInfo);
                if (extraInfo != null) {
                    extraInfo = extraInfo.toLowerCase();
                    if (extraInfo.equals("cmwap")) {
                        return obj2 != null ? 9 : 11;
                    } else {
                        if (extraInfo.equals("cmnet")) {
                            return obj2 != null ? 10 : 12;
                        } else {
                            if (extraInfo.equals("3gnet") || extraInfo.equals("uninet")) {
                                return obj2 != null ? 14 : 16;
                            } else {
                                if (extraInfo.equals("3gwap") || extraInfo.equals("uniwap")) {
                                    return obj2 != null ? 13 : 15;
                                }
                            }
                        }
                    }
                }
            }
            return 17;
        } catch (Exception e) {
            e.printStackTrace();
            return 17;
        }
    }
}
