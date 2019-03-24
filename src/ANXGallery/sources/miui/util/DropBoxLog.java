package miui.util;

import android.os.DropBoxManager;
import android.os.Process;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import miui.reflect.Field;

public class DropBoxLog {
    private static final String IA = "micloud";
    private static final SoftReferenceSingleton<SimpleDateFormat> IB = new SoftReferenceSingleton<SimpleDateFormat>() {
        /* renamed from: do */
        protected SimpleDateFormat createInstance() {
            return new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
        }
    };
    private StringBuilder IC = new StringBuilder();

    public DropBoxLog v(String str, String str2) {
        Log.v(str, str2);
        a(Field.VOID_SIGNATURE_PRIMITIVE, str, str2, null);
        return this;
    }

    public DropBoxLog v(String str, String str2, Throwable th) {
        Log.v(str, str2, th);
        a(Field.VOID_SIGNATURE_PRIMITIVE, str, str2, th);
        return this;
    }

    public DropBoxLog d(String str, String str2) {
        Log.d(str, str2);
        a(Field.DOUBLE_SIGNATURE_PRIMITIVE, str, str2, null);
        return this;
    }

    public DropBoxLog d(String str, String str2, Throwable th) {
        Log.d(str, str2, th);
        a(Field.DOUBLE_SIGNATURE_PRIMITIVE, str, str2, th);
        return this;
    }

    public DropBoxLog i(String str, String str2) {
        Log.i(str, str2);
        a(Field.INT_SIGNATURE_PRIMITIVE, str, str2, null);
        return this;
    }

    public DropBoxLog i(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
        a(Field.INT_SIGNATURE_PRIMITIVE, str, str2, th);
        return this;
    }

    public DropBoxLog w(String str, String str2) {
        Log.w(str, str2);
        a("W", str, str2, null);
        return this;
    }

    public DropBoxLog w(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
        a("W", str, str2, th);
        return this;
    }

    public DropBoxLog e(String str, String str2) {
        Log.e(str, str2);
        a("E", str, str2, null);
        return this;
    }

    public DropBoxLog e(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
        a("E", str, str2, th);
        return this;
    }

    public String getMessage() {
        return this.IC.toString();
    }

    public void commit(String str) {
        if (str == null) {
            str = AppConstants.getCurrentApplication().getPackageName();
        }
        CharSequence charSequence = this.IC;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("micloud_");
        stringBuilder.append(str);
        writeLog(charSequence, stringBuilder.toString());
        this.IC.setLength(0);
    }

    private void a(String str, String str2, String str3, Throwable th) {
        this.IC.append(((SimpleDateFormat) IB.get()).format(new Date()));
        this.IC.append(' ');
        this.IC.append(str);
        this.IC.append('/');
        this.IC.append(str2);
        this.IC.append('(');
        this.IC.append(Process.myPid());
        this.IC.append(')');
        this.IC.append(':');
        this.IC.append(str3);
        if (th != null) {
            this.IC.append(':');
            this.IC.append(Log.getStackTraceString(th));
        }
        this.IC.append(13);
    }

    /* JADX WARNING: Missing block: B:10:0x0027, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void writeLog(CharSequence charSequence, String str) {
        DropBoxManager dropBoxManager = (DropBoxManager) AppConstants.getCurrentApplication().getSystemService("dropbox");
        if (charSequence != null && charSequence.length() > 0 && dropBoxManager != null && dropBoxManager.isTagEnabled(str)) {
            dropBoxManager.addText(str, charSequence.toString());
        }
    }
}
