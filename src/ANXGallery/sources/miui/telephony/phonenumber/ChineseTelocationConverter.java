package miui.telephony.phonenumber;

import android.location.Address;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.R;
import com.miui.internal.util.DirectIndexedFileExtractor;
import com.nexstreaming.nexeditorsdk.nexCrop;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map.Entry;
import miui.util.AppConstants;
import miui.util.DirectIndexedFile;
import miui.util.DirectIndexedFile.Reader;
import org.keyczar.Keyczar;

public class ChineseTelocationConverter {
    public static final int AREACODE_INDEX = 1;
    private static ChineseTelocationConverter FA = new ChineseTelocationConverter();
    private static final int Fn = 7;
    private static final int Fo = 8;
    private static final int Fp = 13;
    private static final String Fq = "";
    private static final String Fr = "telocation.idf";
    private static final String Fs = "operators.dat";
    private static final String Ft = "xiaomi_mobile.dat";
    private static final String Fu = "tel_uniqid_len8.dat";
    private static final int Fv = 3;
    private static final int Fw = 4;
    private static final int Fx = 5;
    private static final int Fy = 7;
    private static final HashSet<CharSequence> Fz = new HashSet();
    public static final int LOCATION_INDEX = 0;
    public static final int LOCATION_KIND = 0;
    private static final String TAG = "ChineseTelocation";
    public static final int UNIQUE_ID_NONE = 0;
    private final HashMap<String, String> FB = new HashMap();
    private final HashMap<CharSequence, String> FC = new HashMap();
    private final HashSet<CharSequence> FD = new HashSet();
    private final HashSet<Integer> FE = new HashSet();
    private Reader FF;

    private interface DatFileRawReadListener {
        void b(String[] strArr);
    }

    static {
        Fz.add("170");
        Fz.add("171");
    }

    private ChineseTelocationConverter() {
        String str;
        StringBuilder stringBuilder;
        String directIndexedFilePath = DirectIndexedFileExtractor.getDirectIndexedFilePath(AppConstants.getCurrentApplication(), Fr);
        if (directIndexedFilePath != null && new File(directIndexedFilePath).exists()) {
            try {
                this.FF = DirectIndexedFile.open(directIndexedFilePath);
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Read Telocation from ");
                stringBuilder.append(directIndexedFilePath);
                Log.v(str, stringBuilder.toString());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (this.FF == null) {
            try {
                this.FF = DirectIndexedFile.open(AppConstants.getCurrentApplication().getResources().getAssets().open(Fr, 1));
                Log.v(TAG, "Read Telocation from assets");
            } catch (IOException e2) {
                Log.w(TAG, "Can't read telocation.idf, NO mobile telocation supported!");
            }
        }
        if (this.FF != null) {
            int dataVersion = this.FF.getDataVersion();
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Telocation version :");
            stringBuilder.append(dataVersion);
            Log.i(str, stringBuilder.toString());
        }
    }

    protected void finalize() throws Throwable {
        if (this.FF != null) {
            this.FF.close();
        }
        super.finalize();
    }

    public static ChineseTelocationConverter getInstance() {
        return FA;
    }

    public static void reloadInstance() {
        FA = new ChineseTelocationConverter();
    }

    public int getUniqId(CharSequence charSequence, int i, int i2, boolean z) {
        if (i2 > 0 && charSequence.charAt(i) == '0') {
            i++;
            i2--;
        }
        if (i2 <= 1) {
            return 0;
        }
        if (this.FE.size() == 0) {
            synchronized (this.FE) {
                if (this.FE.size() == 0) {
                    cV();
                }
            }
        }
        switch (charSequence.charAt(i)) {
            case '0':
                break;
            case '1':
                int i3 = i + 1;
                if (charSequence.charAt(i3) == '0' && (!z || i2 < 13 || !charSequence.subSequence(i, i + i2).toString().startsWith("1064"))) {
                    return 10;
                }
                if (z && i2 >= 7) {
                    int charAt = (((((1000000 + ((charSequence.charAt(i3) - 48) * nexCrop.ABSTRACT_DIMENSION)) + ((charSequence.charAt(i + 2) - 48) * 10000)) + ((charSequence.charAt(i + 3) - 48) * 1000)) + ((charSequence.charAt(i + 4) - 48) * 100)) + ((charSequence.charAt(i + 5) - 48) * 10)) + (charSequence.charAt(i + 6) - 48);
                    if (charAt == 1380013 && i2 > 10 && charSequence.charAt(i + 7) == '8' && charSequence.charAt(i + 8) == '0' && charSequence.charAt(i + 9) == '0' && charSequence.charAt(i + 10) == '0') {
                        return 0;
                    }
                    if (i2 >= 8 && this.FE.contains(Integer.valueOf(charAt))) {
                        charAt = (charAt * 10) + (charSequence.charAt(i + 7) - 48);
                    } else if (i2 >= 13 && ((charAt >= 1410000 && charAt <= 1419999) || (charAt >= 1064000 && charAt <= 1064999))) {
                        charAt = ((charAt * 100) + ((charSequence.charAt(i + 7) - 48) * 10)) + (charSequence.charAt(i + 8) - 48);
                    }
                    return charAt;
                }
                break;
            case '2':
                return 20 + (charSequence.charAt(i + 1) - 48);
            default:
                if (i2 > 2) {
                    return ((((charSequence.charAt(i) - 48) * 10) + (charSequence.charAt(i + 1) - 48)) * 10) + (charSequence.charAt(i + 2) - 48);
                }
                break;
        }
        return 0;
    }

    public String getLocation(CharSequence charSequence, int i, int i2, boolean z) {
        if (this.FF == null) {
            return "";
        }
        if (!z) {
            return "";
        }
        int uniqId = getUniqId(charSequence, i, i2, true);
        if (uniqId <= 0) {
            return "";
        }
        return (String) this.FF.get(0, uniqId, 0);
    }

    public String getAreaCode(CharSequence charSequence, int i, int i2) {
        if (this.FF == null) {
            return "";
        }
        return (String) this.FF.get(0, getUniqId(charSequence, i, i2, true), 1);
    }

    public String parseAreaCode(CharSequence charSequence, int i, int i2) {
        if (this.FF == null) {
            return "";
        }
        return (String) this.FF.get(0, getUniqId(charSequence, i, i2, false), 1);
    }

    public String getAreaCode(Address address) {
        if (address == null || this.FF == null) {
            return "";
        }
        String str;
        if (this.FB.size() == 0) {
            synchronized (this.FB) {
                if (this.FB.size() == 0) {
                    for (int i = 0; i < 1000; i++) {
                        str = (String) this.FF.get(0, i, 0);
                        if (!TextUtils.isEmpty(str)) {
                            this.FB.put(String.valueOf(i), str);
                        }
                    }
                }
            }
        }
        Object adminArea = address.getAdminArea();
        Object locality = address.getLocality();
        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("adminArea:");
        stringBuilder.append(adminArea);
        stringBuilder.append(" locality:");
        stringBuilder.append(locality);
        Log.d(str2, stringBuilder.toString());
        if (!(TextUtils.isEmpty(adminArea) || TextUtils.isEmpty(locality))) {
            String replace = adminArea.replace("省", "").replace("市", "");
            CharSequence replace2 = locality.replace("市", "").replace("区", "").replace("县", "");
            for (Entry entry : this.FB.entrySet()) {
                str = (String) entry.getValue();
                if (str.startsWith(replace) && str.contains(replace2)) {
                    return (String) entry.getKey();
                }
            }
        }
        return "";
    }

    public String getOperator(CharSequence charSequence, int i, int i2) {
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < 3) {
            return "";
        }
        charSequence = charSequence.subSequence(i, i2 + i);
        if (this.FC.size() == 0) {
            synchronized (this.FC) {
                if (this.FC.size() == 0) {
                    cT();
                }
            }
        }
        Object subSequence = charSequence.subSequence(0, 3);
        if (Fz.contains(subSequence)) {
            if (charSequence.length() < 7) {
                return "";
            }
            if (this.FD.size() == 0) {
                synchronized (this.FD) {
                    if (this.FD.size() == 0) {
                        cU();
                    }
                }
            }
            if (this.FD.contains(charSequence.subSequence(0, 7))) {
                return AppConstants.getCurrentApplication().getResources().getString(R.string.xiaomi_mobile);
            }
            subSequence = charSequence.subSequence(0, 4);
        } else if (charSequence.length() >= 5 && charSequence.subSequence(0, 4).equals("1064")) {
            subSequence = charSequence.subSequence(0, 5);
        }
        if (this.FC.containsKey(subSequence)) {
            return (String) this.FC.get(subSequence);
        }
        return "";
    }

    private void cT() {
        a(Fs, new DatFileRawReadListener() {
            public void b(String[] strArr) {
                ChineseTelocationConverter.this.FC.put(strArr[0], strArr[1]);
            }
        });
    }

    private void cU() {
        a(Ft, new DatFileRawReadListener() {
            public void b(String[] strArr) {
                ChineseTelocationConverter.this.FD.add(strArr[0]);
            }
        });
    }

    private void cV() {
        a(Fu, new DatFileRawReadListener() {
            public void b(String[] strArr) {
                int parseInt;
                try {
                    parseInt = Integer.parseInt(strArr[0]);
                } catch (NumberFormatException e) {
                    parseInt = 0;
                }
                if (parseInt != 0) {
                    ChineseTelocationConverter.this.FE.add(Integer.valueOf(parseInt));
                }
            }
        });
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x008c A:{SYNTHETIC, Splitter: B:30:0x008c} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(String str, DatFileRawReadListener datFileRawReadListener) {
        Throwable e;
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(AppConstants.getCurrentApplication().getResources().getAssets().open(str), Keyczar.DEFAULT_ENCODING));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        try {
                            bufferedReader2.close();
                            return;
                        } catch (Throwable e2) {
                            Log.e(TAG, "Failed to close reader", e2);
                            return;
                        }
                    } else if (!readLine.trim().startsWith("#")) {
                        if (readLine.trim().startsWith("version")) {
                            Log.i(TAG, String.format("%s version: %s", new Object[]{str, readLine.split(":")[1]}));
                        } else {
                            datFileRawReadListener.b(readLine.split(" "));
                        }
                    }
                } catch (Exception e3) {
                    e2 = e3;
                    bufferedReader = bufferedReader2;
                    try {
                        Log.e(TAG, "Failed to getxiaomi_mobile.dat", e2);
                        if (bufferedReader != null) {
                            bufferedReader.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        e2 = th;
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                        }
                        throw e2;
                    }
                } catch (Throwable th2) {
                    e2 = th2;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Throwable e4) {
                            Log.e(TAG, "Failed to close reader", e4);
                        }
                    }
                    throw e2;
                }
            }
        } catch (Exception e5) {
            e2 = e5;
        }
    }

    public int getVersion() {
        return this.FF.getDataVersion();
    }
}
