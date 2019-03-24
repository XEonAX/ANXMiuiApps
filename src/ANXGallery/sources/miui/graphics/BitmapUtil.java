package miui.graphics;

import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Field;

public class BitmapUtil {
    private static final int COLOR_BYTE_SIZE = 4;
    private static final String TAG = "BitmapUtil";

    public static byte[] getBuffer(Bitmap bitmap) {
        if (VERSION.SDK_INT >= 26) {
            int baseWidth = bitmap.getWidth();
            int baseHeight = bitmap.getHeight();
            try {
                int[] basePixels = new int[(bitmap.getByteCount() / 4)];
                bitmap.getPixels(basePixels, 0, bitmap.getRowBytes() / 4, 0, 0, baseWidth, baseHeight);
                byte[] ret = new byte[bitmap.getByteCount()];
                for (int i = 0; i < basePixels.length; i++) {
                    ret[(i * 4) + 3] = (byte) ((basePixels[i] >> 24) & 255);
                    ret[i * 4] = (byte) ((basePixels[i] >> 16) & 255);
                    ret[(i * 4) + 1] = (byte) ((basePixels[i] >> 8) & 255);
                    ret[(i * 4) + 2] = (byte) (basePixels[i] & 255);
                }
                return ret;
            } catch (OutOfMemoryError e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("failed to get buffer, baseWidth = ");
                stringBuilder.append(baseWidth);
                stringBuilder.append(", baseHeight = ");
                stringBuilder.append(baseHeight);
                Log.e(str, stringBuilder.toString(), e);
                return null;
            }
        }
        try {
            Field field = Bitmap.class.getDeclaredField("mBuffer");
            field.setAccessible(true);
            return (byte[]) field.get(bitmap);
        } catch (Exception e2) {
            Log.w(TAG, "get Bitmap.mBuffer failed!", e2);
            return null;
        } catch (OutOfMemoryError e3) {
            Log.e(TAG, "failed to get Bitmap.mBuffer", e3);
            return null;
        }
    }
}
