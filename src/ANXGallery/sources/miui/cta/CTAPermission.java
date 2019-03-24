package miui.cta;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.util.SparseArray;
import com.miui.system.internal.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CTAPermission {
    private static final String TAG = "CTAPermission";

    private enum Permission {
        PERMISSION_ACCESS_NETWORK(1),
        PERMISSION_READ_SMS(2),
        PERMISSION_WRITE_SMS(4),
        PERMISSION_RECEIVE_SMS(8),
        PERMISSION_SEND_SMS(16),
        PERMISSION_CALL_PHONE(32),
        PERMISSION_READ_CONTACTS(64),
        PERMISSION_WRITE_CONTACTS(128),
        PERMISSION_READ_CALL_LOG(256),
        PERMISSION_WRITE_CALL_LOG(512),
        PERMISSION_CAMERA(1024),
        PERMISSION_ACCESS_LOCATION(2048);
        
        final int value;

        private Permission(int value) {
            this.value = value;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(super.toString());
            stringBuilder.append(", value=");
            stringBuilder.append(this.value);
            return stringBuilder.toString();
        }
    }

    public static String getMessage(Context context, int permValue) {
        if (permValue == 0) {
            return null;
        }
        List<String> permNames = getPermissionNames(context, permValue);
        if (permNames.isEmpty()) {
            return null;
        }
        return getPermissionMessage(context, permNames);
    }

    private static List<String> getPermissionNames(Context context, int permValue) {
        ArrayList<String> permNames = new ArrayList();
        SparseArray<String> permMap = getPermissionMap(context);
        for (int index = permMap.size() - 1; index >= 0; index--) {
            int key = permMap.keyAt(index);
            if ((permValue & key) == key) {
                permNames.add((String) permMap.valueAt(index));
                permValue &= key ^ -1;
            }
        }
        Collections.reverse(permNames);
        return permNames;
    }

    private static SparseArray<String> getPermissionMap(Context context) {
        Resources resources = context.getResources();
        String[] permissions = resources.getStringArray(R.array.cta_permissions);
        String[] permissionNames = resources.getStringArray(R.array.cta_permission_names);
        SparseArray<String> permMap = new SparseArray();
        int N = Math.min(permissions.length, permissionNames.length);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= N) {
                return permMap;
            }
            int value = 0;
            for (String perm : permissions[i2].split("\\|")) {
                try {
                    value |= Permission.valueOf(perm).value;
                } catch (IllegalArgumentException e) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unknown permission: ");
                    stringBuilder.append(perm);
                    Log.e(str, stringBuilder.toString(), e);
                }
            }
            if (value > 0) {
                permMap.append(value, permissionNames[i2]);
            }
            i = i2 + 1;
        }
    }

    private static String getPermissionMessage(Context context, List<String> permNames) {
        int N = permNames.size();
        int i = 0;
        if (N == 1) {
            return (String) permNames.get(0);
        }
        String and;
        StringBuilder stringBuilder;
        if (N == 2) {
            and = context.getString(R.string.cta_permission_and);
            stringBuilder = new StringBuilder();
            stringBuilder.append((String) permNames.get(0));
            stringBuilder.append(and);
            stringBuilder.append((String) permNames.get(1));
            return stringBuilder.toString();
        }
        String delimiter = context.getString(R.string.cta_permission_delimiter);
        and = context.getString(R.string.cta_permission_and);
        stringBuilder = new StringBuilder();
        while (i < N - 2) {
            stringBuilder.append((String) permNames.get(i));
            stringBuilder.append(delimiter);
            i++;
        }
        stringBuilder.append((String) permNames.get(N - 2));
        stringBuilder.append(and);
        stringBuilder.append((String) permNames.get(N - 1));
        return stringBuilder.toString();
    }
}
