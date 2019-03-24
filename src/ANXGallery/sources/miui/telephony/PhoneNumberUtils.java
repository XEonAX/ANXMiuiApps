package miui.telephony;

import android.content.AsyncQueryHandler;
import android.content.AsyncQueryHandler.WorkerHandler;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import com.miui.internal.telephony.phonenumber.ChineseTelocation;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Locale;
import miui.os.C0015Build;
import miui.system.R;
import miui.telephony.phonenumber.CountryCode;
import miui.telephony.phonenumber.CountryCodeConverter;
import miui.telephony.phonenumber.Prefix;
import miui.util.AppConstants;

public class PhoneNumberUtils extends android.telephony.PhoneNumberUtils {
    private static final String CHINA_COUNTRY_CODE = "86";
    private static final int CHINA_IOT_MOBILE_NUMBER_LENGTH = 13;
    public static final String CHINA_MCC = "460";
    private static final int CHINA_MOBILE_NUMBER_LENGTH = 11;
    private static final String CHINA_MOBILE_NUMBER_PREFIX = "1";
    private static final String CHINA_REGION_CODE1 = "+86";
    private static final String CHINA_REGION_CODE2 = "0086";
    private static final String[] EMERGENCY_NUMBERS = new String[]{"110", "112", "119", "120", "122", "911", "999", CountryCodeConverter.GE, "100", "101", "102", "190"};
    static final String LOG_TAG = "PhoneNumberUtils";
    public static final int MASK_PHONE_NUMBER_MODE_HEAD = 0;
    public static final int MASK_PHONE_NUMBER_MODE_MIDDLE = 2;
    public static final int MASK_PHONE_NUMBER_MODE_TAIL = 1;
    private static final int MIN_QUERY_LOCATION_EFFECTIVE_IOT_NUMBER_LENGTH = 9;
    private static final int MIN_QUERY_LOCATION_EFFECTIVE_NUMBER_LENGTH = 7;
    public static final String PAYPHONE_NUMBER = "-3";
    public static final String PRIVATE_NUMBER = "-2";
    public static final String UNKNOWN_NUMBER = "-1";

    public interface OperatorQueryListener {
        void onComplete(Object obj, Object obj2, Object obj3, Object obj4, String str);
    }

    public static class PhoneNumber {
        private static final String EMPTY = "";
        private static final char HASH_STRING_INDICATOR = '\u0001';
        private static final int MAX_NUMBER_LENGTH = 256;
        private static final char MISSING_AREA_CODE_INDICATOR = '\u0002';
        private static final int POOL_SIZE = 10;
        private static final PhoneNumber[] sPool = new PhoneNumber[10];
        private static int sPoolIndex = -1;
        private String mAreaCode;
        private StringBuffer mBuffer = new StringBuffer(256);
        private String mCountryCode;
        private String mDefaultCountryCode;
        private String mEffectiveNumber;
        private int mEffectiveNumberStart;
        private boolean mIsChinaEnvironment;
        private String mNetIddCode;
        private CharSequence mOriginal;
        private String mPostDialString;
        private int mPostDialStringStart;
        private String mPrefix;

        private PhoneNumber() {
            clear();
        }

        private void clear() {
            this.mBuffer.setLength(0);
            this.mPrefix = null;
            this.mCountryCode = null;
            this.mAreaCode = null;
            this.mEffectiveNumberStart = 0;
            this.mEffectiveNumber = null;
            this.mPostDialStringStart = 0;
            this.mPostDialString = null;
            this.mIsChinaEnvironment = false;
            this.mNetIddCode = null;
        }

        private void attach(CharSequence number) {
            if (number == null) {
                number = "";
            }
            this.mOriginal = number;
            boolean postDialString = false;
            int len = number.length();
            for (int i = 0; i < len; i++) {
                char c = number.charAt(i);
                if (postDialString && PhoneNumberUtils.isNonSeparator(c)) {
                    this.mBuffer.append(c);
                } else if (i == 0 && c == '+') {
                    this.mBuffer.append(c);
                } else if (c >= '0' && c <= '9') {
                    this.mBuffer.append(c);
                } else if (!postDialString && PhoneNumberUtils.isStartsPostDial(c)) {
                    this.mPostDialStringStart = this.mBuffer.length();
                    postDialString = true;
                    this.mBuffer.append(c);
                }
            }
            if (!postDialString) {
                this.mPostDialStringStart = this.mBuffer.length();
            }
        }

        public static PhoneNumber parse(CharSequence number) {
            return parse(number, CountryCode.isChinaEnvironment(), null);
        }

        public static PhoneNumber parse(CharSequence number, boolean isChinaEnvironment) {
            return parse(number, isChinaEnvironment, null);
        }

        public static PhoneNumber parse(CharSequence number, boolean isChinaEnvironment, String iddCode) {
            PhoneNumber pn;
            synchronized (sPool) {
                if (sPoolIndex == -1) {
                    pn = new PhoneNumber();
                } else {
                    pn = sPool[sPoolIndex];
                    PhoneNumber[] phoneNumberArr = sPool;
                    int i = sPoolIndex;
                    sPoolIndex = i - 1;
                    phoneNumberArr[i] = null;
                }
            }
            pn.attach(number);
            pn.mIsChinaEnvironment = isChinaEnvironment;
            pn.mNetIddCode = iddCode;
            return pn;
        }

        public void recycle() {
            clear();
            synchronized (sPool) {
                if (sPoolIndex < sPool.length) {
                    PhoneNumber[] phoneNumberArr = sPool;
                    int i = sPoolIndex + 1;
                    sPoolIndex = i;
                    phoneNumberArr[i] = this;
                }
            }
        }

        public void setDefaultCountryCode(String defaultCountryCode) {
            this.mDefaultCountryCode = defaultCountryCode;
        }

        public String getPrefix() {
            if (this.mPrefix == null && this.mIsChinaEnvironment) {
                this.mPrefix = Prefix.parse(this.mBuffer, this.mEffectiveNumberStart, this.mPostDialStringStart - this.mEffectiveNumberStart);
                this.mEffectiveNumberStart += this.mPrefix.length();
            }
            return this.mPrefix;
        }

        public String getCountryCode() {
            if (this.mCountryCode == null) {
                getPrefix();
                for (String iddCode : CountryCode.getIddCodes()) {
                    String idd = CountryCode.GSM_GENERAL_IDD_CODE;
                    if (!areEqual(this.mBuffer, this.mEffectiveNumberStart, idd, 0, idd.length())) {
                        if (TextUtils.isEmpty(this.mNetIddCode)) {
                            idd = iddCode;
                        } else {
                            idd = this.mNetIddCode;
                        }
                        if (!areEqual(this.mBuffer, this.mEffectiveNumberStart, idd, 0, idd.length())) {
                            idd = null;
                        }
                    }
                    if (idd != null) {
                        this.mEffectiveNumberStart += idd.length();
                        this.mCountryCode = CountryCodeConverter.parse(this.mBuffer, this.mEffectiveNumberStart, this.mPostDialStringStart - this.mEffectiveNumberStart);
                        if (this.mCountryCode.length() != 0) {
                            this.mEffectiveNumberStart += this.mCountryCode.length();
                            break;
                        }
                        this.mEffectiveNumberStart -= idd.length();
                    } else {
                        this.mCountryCode = "";
                    }
                }
            }
            return this.mCountryCode;
        }

        public boolean isChineseNumber() {
            String countryCode = getCountryCode();
            if (TextUtils.isEmpty(countryCode)) {
                return this.mIsChinaEnvironment || "86".equals(this.mDefaultCountryCode);
            } else {
                return "86".equals(countryCode);
            }
        }

        public String getAreaCode() {
            if (this.mAreaCode == null) {
                this.mAreaCode = "";
                if (isChineseNumber() && !Prefix.isSmsPrefix(getPrefix())) {
                    boolean areacodeExists = true;
                    String countryCode = getCountryCode();
                    if (TextUtils.isEmpty(countryCode)) {
                        areacodeExists = false;
                        if (this.mBuffer.length() - 1 > this.mEffectiveNumberStart && this.mBuffer.charAt(this.mEffectiveNumberStart) == '0') {
                            areacodeExists = true;
                            this.mEffectiveNumberStart++;
                        }
                    }
                    if (areacodeExists) {
                        this.mAreaCode = ChineseTelocation.getInstance().parseAreaCode(this.mBuffer, this.mEffectiveNumberStart, this.mPostDialStringStart - this.mEffectiveNumberStart);
                        if (this.mAreaCode.length() == 0 && TextUtils.isEmpty(countryCode)) {
                            this.mEffectiveNumberStart--;
                        } else {
                            this.mEffectiveNumberStart += this.mAreaCode.length();
                        }
                    }
                }
            }
            return this.mAreaCode;
        }

        public String getEffectiveNumber() {
            if (this.mEffectiveNumber == null) {
                getAreaCode();
                if (this.mBuffer.length() > this.mEffectiveNumberStart) {
                    this.mEffectiveNumber = this.mBuffer.substring(this.mEffectiveNumberStart, this.mPostDialStringStart);
                } else {
                    this.mEffectiveNumber = "";
                }
            }
            if (!TextUtils.isEmpty(this.mEffectiveNumber)) {
                return this.mEffectiveNumber;
            }
            CharSequence charSequence = this.mOriginal.toString();
            this.mOriginal = charSequence;
            return charSequence.toString();
        }

        public String getFakeNumberToQueryLocation() {
            String queryNumber = "";
            String effectiveNumber = getEffectiveNumber();
            if (!TextUtils.isEmpty(getAreaCode()) || !effectiveNumber.startsWith("1")) {
                return this.mOriginal.toString();
            }
            int effectiveNumberlength = effectiveNumber.length();
            int minLength = 7;
            int fakeNumberLength = 11;
            if (effectiveNumber.startsWith("141") || effectiveNumber.startsWith("1064")) {
                minLength = 9;
                fakeNumberLength = 13;
            }
            if (effectiveNumberlength < minLength || effectiveNumberlength >= fakeNumberLength) {
                return this.mOriginal.toString();
            }
            StringBuilder sb = new StringBuilder(this.mOriginal);
            for (int i = effectiveNumberlength; i < fakeNumberLength; i++) {
                sb.append('9');
            }
            return sb.toString();
        }

        public String getPostDialString() {
            if (this.mPostDialString == null) {
                if (this.mBuffer.length() > this.mPostDialStringStart) {
                    this.mPostDialString = this.mBuffer.substring(this.mPostDialStringStart);
                } else {
                    this.mPostDialString = "";
                }
            }
            return this.mPostDialString;
        }

        public boolean isNormalMobileNumber() {
            getAreaCode();
            boolean z = false;
            if (isChineseNumber()) {
                int length = this.mPostDialStringStart - this.mEffectiveNumberStart;
                if (length == 11) {
                    if (this.mBuffer.charAt(this.mEffectiveNumberStart) == '1') {
                        switch (this.mBuffer.charAt(this.mEffectiveNumberStart + 1)) {
                            case '3':
                                if (!(this.mBuffer.charAt(this.mEffectiveNumberStart + 2) == '8' && this.mBuffer.charAt(this.mEffectiveNumberStart + 3) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 4) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 5) == '1' && this.mBuffer.charAt(this.mEffectiveNumberStart + 6) == '3' && this.mBuffer.charAt(this.mEffectiveNumberStart + 7) == '8' && this.mBuffer.charAt(this.mEffectiveNumberStart + 8) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 9) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 10) == '0')) {
                                    z = true;
                                }
                                return z;
                            case '4':
                            case '5':
                            case '6':
                            case '8':
                            case '9':
                                return true;
                            case '7':
                                if (this.mBuffer.charAt(this.mEffectiveNumberStart + 2) != '9') {
                                    z = true;
                                }
                                return z;
                            default:
                                return false;
                        }
                    }
                } else if (length == 13 && this.mBuffer.charAt(this.mEffectiveNumberStart) == '1') {
                    char c = this.mBuffer.charAt(this.mEffectiveNumberStart + 1);
                    if (c == '0') {
                        if (this.mBuffer.charAt(this.mEffectiveNumberStart + 2) == '6' && this.mBuffer.charAt(this.mEffectiveNumberStart + 3) == '4') {
                            z = true;
                        }
                        return z;
                    } else if (c == '4') {
                        if (this.mBuffer.charAt(this.mEffectiveNumberStart + 2) == '1') {
                            z = true;
                        }
                        return z;
                    }
                }
            }
            return false;
        }

        public boolean isServiceNumber() {
            getAreaCode();
            boolean z = false;
            if (isChineseNumber() && this.mPostDialStringStart - this.mEffectiveNumberStart > 2) {
                char c = this.mBuffer.charAt(this.mEffectiveNumberStart);
                if (c == '1') {
                    switch (this.mBuffer.charAt(this.mEffectiveNumberStart + 1)) {
                        case '0':
                        case '1':
                        case '2':
                        case '6':
                            return true;
                        case '3':
                            if (this.mPostDialStringStart - this.mEffectiveNumberStart >= 11 && this.mBuffer.charAt(this.mEffectiveNumberStart + 2) == '8' && this.mBuffer.charAt(this.mEffectiveNumberStart + 3) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 4) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 5) == '1' && this.mBuffer.charAt(this.mEffectiveNumberStart + 6) == '3' && this.mBuffer.charAt(this.mEffectiveNumberStart + 7) == '8' && this.mBuffer.charAt(this.mEffectiveNumberStart + 8) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 9) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 10) == '0') {
                                z = true;
                            }
                            return z;
                        case '7':
                            if (this.mBuffer.charAt(this.mEffectiveNumberStart + 2) == '9') {
                                z = true;
                            }
                            return z;
                        default:
                            return false;
                    }
                } else if (c == '9') {
                    return true;
                } else {
                    if (c >= '2' && c <= '8') {
                        if (c == '4' || c == '8') {
                            if (this.mEffectiveNumberStart == 0 && this.mBuffer.charAt(1) == '0' && this.mBuffer.charAt(2) == '0' && this.mBuffer.length() == 10) {
                                z = true;
                            }
                            return z;
                        }
                        if (this.mBuffer.charAt(this.mEffectiveNumberStart + 1) == '0' && this.mBuffer.charAt(this.mEffectiveNumberStart + 2) == '0' && this.mBuffer.length() - this.mEffectiveNumberStart > 7) {
                            z = true;
                        }
                        return z;
                    }
                }
            }
            return false;
        }

        public String getNumberWithoutPrefix(boolean withPostDialString) {
            int start = 0;
            if (!TextUtils.isEmpty(getPrefix())) {
                start = getPrefix().length();
            }
            return withPostDialString ? this.mBuffer.substring(start) : this.mBuffer.substring(start, this.mPostDialStringStart);
        }

        public String getNormalizedNumber(boolean withCountryCode, boolean withPostDialString) {
            String number;
            StringBuilder stringBuilder;
            if (!isChineseNumber()) {
                number = this.mBuffer.substring(withCountryCode ? this.mEffectiveNumberStart - getCountryCode().length() : this.mEffectiveNumberStart, withPostDialString ? this.mBuffer.length() : this.mPostDialStringStart);
                if (!withCountryCode || getCountryCode().length() <= 0) {
                    return number;
                }
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(CountryCode.GSM_GENERAL_IDD_CODE);
                stringBuilder2.append(number);
                return stringBuilder2.toString();
            } else if (isNormalMobileNumber()) {
                number = this.mBuffer.substring(this.mEffectiveNumberStart, withPostDialString ? this.mBuffer.length() : this.mPostDialStringStart);
                if (!withCountryCode) {
                    return number;
                }
                stringBuilder = new StringBuilder();
                stringBuilder.append(PhoneNumberUtils.CHINA_REGION_CODE1);
                stringBuilder.append(number);
                return stringBuilder.toString();
            } else {
                int end = withPostDialString ? this.mBuffer.length() : this.mPostDialStringStart;
                if (TextUtils.isEmpty(getAreaCode()) || isServiceNumber()) {
                    return this.mBuffer.substring(this.mEffectiveNumberStart, end);
                }
                number = this.mBuffer.substring(this.mEffectiveNumberStart - getAreaCode().length(), end);
                if (withCountryCode) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(PhoneNumberUtils.CHINA_REGION_CODE1);
                    stringBuilder.append(number);
                    return stringBuilder.toString();
                }
                stringBuilder = new StringBuilder();
                stringBuilder.append("0");
                stringBuilder.append(number);
                return stringBuilder.toString();
            }
        }

        public String getLocation(Context context) {
            String location = "";
            Locale locale = context.getResources().getConfiguration().locale;
            if (!locale.getLanguage().equals(Locale.CHINA.getLanguage()) || !isChineseNumber()) {
                return ChineseTelocation.getInstance().getExternalLocation(context, getCountryCode(), this.mOriginal, locale);
            }
            ChineseTelocation instance = ChineseTelocation.getInstance();
            CharSequence charSequence = this.mBuffer;
            int i = this.mEffectiveNumberStart;
            int i2 = this.mPostDialStringStart - this.mEffectiveNumberStart;
            boolean z = isNormalMobileNumber() || getAreaCode().length() > 0;
            return instance.getLocation(context, charSequence, i, i2, z);
        }

        public String getOperator(Context context) {
            if (!context.getResources().getConfiguration().locale.getLanguage().equals(Locale.CHINA.getLanguage()) || !isChineseNumber()) {
                return "";
            }
            return ChineseTelocation.getInstance().getOperator(context, this.mBuffer.toString(), this.mEffectiveNumberStart, this.mPostDialStringStart - this.mEffectiveNumberStart, isNormalMobileNumber());
        }

        public String getLocationAreaCode(Context context) {
            String areaCode = "";
            if (!isChineseNumber()) {
                return areaCode;
            }
            if (isNormalMobileNumber()) {
                return ChineseTelocation.getInstance().getAreaCode(this.mBuffer, this.mEffectiveNumberStart, this.mPostDialStringStart - this.mEffectiveNumberStart);
            }
            return getAreaCode();
        }

        public boolean isSmsPrefix() {
            return Prefix.isSmsPrefix(getPrefix());
        }

        public static String addCountryCode(String number) {
            if (TextUtils.isEmpty(number)) {
                return number;
            }
            PhoneNumber pn = parse(number);
            boolean addCountryCode = TextUtils.isEmpty(pn.getCountryCode());
            if (addCountryCode && pn.isChineseNumber()) {
                if (!TextUtils.isEmpty(pn.getPrefix())) {
                    addCountryCode = false;
                } else if (pn.isServiceNumber()) {
                    addCountryCode = false;
                } else if (!pn.isNormalMobileNumber()) {
                    addCountryCode = TextUtils.isEmpty(pn.getAreaCode()) ^ 1;
                }
            }
            if ((number.startsWith("*") || number.startsWith("#")) && number.endsWith("#")) {
                addCountryCode = false;
            }
            String result = number;
            if (addCountryCode) {
                String countryCode = CountryCode.getUserDefinedCountryCode();
                if (TextUtils.isEmpty(countryCode)) {
                    countryCode = CountryCode.getIccCountryCode();
                }
                if (!TextUtils.isEmpty(countryCode)) {
                    if (CountryCodeConverter.IT.equals(countryCode) || number.charAt(0) != '0') {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(CountryCode.GSM_GENERAL_IDD_CODE);
                        stringBuilder.append(countryCode);
                        stringBuilder.append(number);
                        result = stringBuilder.toString();
                    } else {
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append(CountryCode.GSM_GENERAL_IDD_CODE);
                        stringBuilder2.append(countryCode);
                        stringBuilder2.append(number.substring(1));
                        result = stringBuilder2.toString();
                    }
                }
            }
            pn.recycle();
            return result;
        }

        public static String getHashString(String dialable) {
            String effectiveNumber;
            PhoneNumber pn = parse(dialable);
            String result = dialable;
            if (pn.isSmsPrefix()) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(pn.getPrefix());
                stringBuilder.append(pn.getEffectiveNumber());
                effectiveNumber = stringBuilder.toString();
            } else {
                effectiveNumber = pn.getEffectiveNumber();
            }
            if (!pn.isChineseNumber()) {
                result = String.format("%c(00%s)%s%s", new Object[]{Character.valueOf(HASH_STRING_INDICATOR), pn.getCountryCode(), effectiveNumber, pn.getPostDialString()});
            } else if (pn.isNormalMobileNumber()) {
                result = String.format("%c(00%s)%s%s", new Object[]{Character.valueOf(HASH_STRING_INDICATOR), "86", effectiveNumber, pn.getPostDialString()});
            } else if (TextUtils.isEmpty(pn.getCountryCode())) {
                if (TextUtils.isEmpty(pn.getAreaCode())) {
                    result = String.format("%c(00%s)%c%s%s", new Object[]{Character.valueOf(HASH_STRING_INDICATOR), "86", Character.valueOf(MISSING_AREA_CODE_INDICATOR), effectiveNumber, pn.getPostDialString()});
                } else {
                    result = String.format("%c(00%s)%s-%s%s", new Object[]{Character.valueOf(HASH_STRING_INDICATOR), "86", pn.getAreaCode(), effectiveNumber, pn.getPostDialString()});
                }
            } else if (TextUtils.isEmpty(pn.getAreaCode())) {
                result = String.format("%c(00%s)%s%s", new Object[]{Character.valueOf(HASH_STRING_INDICATOR), "86", effectiveNumber, pn.getPostDialString()});
            } else {
                result = String.format("%c(00%s)%s-%s%s", new Object[]{Character.valueOf(HASH_STRING_INDICATOR), "86", pn.getAreaCode(), effectiveNumber, pn.getPostDialString()});
            }
            pn.recycle();
            return result;
        }

        public static String getDialableNumber(String hash) {
            if (TextUtils.isEmpty(hash)) {
                return "";
            }
            int index = hash.indexOf(2);
            if (index < 0) {
                index = 1;
            } else {
                index++;
            }
            return hash.charAt(0) == HASH_STRING_INDICATOR ? hash.substring(index) : hash;
        }

        public static String replaceCdmaInternationalAccessCode(String number) {
            if (number.startsWith(PhoneNumberUtils.CHINA_REGION_CODE1) && "86".equals(CountryCode.getNetworkCountryCode())) {
                String leftNumber = number.substring(3);
                if (PhoneNumberUtils.isChinaMobileNumber(leftNumber) || leftNumber.charAt(0) == '0') {
                    return leftNumber;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append('0');
                stringBuilder.append(leftNumber);
                return stringBuilder.toString();
            }
            if (!TextUtils.isEmpty(number) && number.charAt(0) == '+') {
                List<String> iddCodes = CountryCode.getIddCodes();
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append((String) iddCodes.get(0));
                stringBuilder2.append(number.substring(1));
                number = stringBuilder2.toString();
            }
            return number;
        }

        public static String getLocation(Context context, CharSequence number) {
            PhoneNumber pn = parse(number);
            String location = pn.getLocation(context);
            pn.recycle();
            return location;
        }

        public static String getOperator(Context context, CharSequence number) {
            PhoneNumber pn = parse(number);
            String operator = pn.getOperator(context);
            pn.recycle();
            return operator;
        }

        public static String getLocationAreaCode(Context context, String number) {
            PhoneNumber pn = parse(number);
            String location = pn.getLocationAreaCode(context);
            pn.recycle();
            return location;
        }

        public static boolean isValidCountryCode(String countryCode) {
            return CountryCodeConverter.isValidCountryCode(countryCode);
        }

        public static String getDefaultCountryCode() {
            return CountryCode.getIccCountryCode();
        }

        public static boolean isChineseOperator() {
            return CountryCode.isChinaEnvironment();
        }

        /* JADX WARNING: Missing block: B:19:0x0035, code:
            return false;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static boolean areEqual(CharSequence s1, int b1, CharSequence s2, int b2, int length) {
            if (s1 == null || s2 == null || b1 < 0 || b2 < 0 || length < 0 || s1.length() < b1 + length || s2.length() < b2 + length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (s1.charAt(b1 + i) != s2.charAt(b2 + i)) {
                    return false;
                }
            }
            return true;
        }
    }

    public interface TelocationAndOperatorQueryListener {
        void onComplete(Object obj, Object obj2, Object obj3, Object obj4, String str, String str2);
    }

    private static class TelocationAsyncQueryHandler extends AsyncQueryHandler {
        private static final int EVENT_QUERY_OPERATOR = 20;
        private static final int EVENT_QUERY_TELOCATION = 10;
        private static final int EVENT_QUERY_TELOCATION_AND_OPERATOR = 30;
        private Handler mWorkerHandler;

        private static class SingletonHolder {
            private static final TelocationAsyncQueryHandler INSTANCE = new TelocationAsyncQueryHandler();

            private SingletonHolder() {
            }
        }

        protected static final class TelocationWorkerArgs {
            public Context context;
            public Object cookie1;
            public Object cookie2;
            public Object cookie3;
            public Object cookie4;
            public Handler handler;
            public String location;
            public String operator;
            public OperatorQueryListener operatorQueryListener;
            public String phoneNumber;
            public TelocationAndOperatorQueryListener telocationAndOperatorQueryListener;
            public TelocationQueryListener telocationQueryListener;

            protected TelocationWorkerArgs() {
            }
        }

        protected class TelocationWorkerHandler extends WorkerHandler {
            public TelocationWorkerHandler(Looper looper) {
                super(TelocationAsyncQueryHandler.this, looper);
            }

            public void handleMessage(Message msg) {
                TelocationWorkerArgs args = msg.obj;
                if (msg.arg1 == 10 || msg.arg1 == 30) {
                    args.location = TelocationAsyncQueryHandler.queryTelocation(args.context, args.phoneNumber);
                }
                if (msg.arg1 == 20 || msg.arg1 == 30) {
                    args.operator = TelocationAsyncQueryHandler.queryOperator(args.context, args.phoneNumber);
                }
                Message reply = args.handler.obtainMessage(msg.what);
                reply.arg1 = msg.arg1;
                reply.obj = msg.obj;
                reply.sendToTarget();
            }
        }

        public static TelocationAsyncQueryHandler getInstance() {
            return SingletonHolder.INSTANCE;
        }

        public static String queryTelocation(Context context, CharSequence phoneNumber) {
            return PhoneNumber.getLocation(context, phoneNumber);
        }

        public static String queryOperator(Context context, CharSequence phoneNumber) {
            return PhoneNumber.getOperator(context, phoneNumber);
        }

        private TelocationAsyncQueryHandler() {
            super(null);
        }

        protected Handler createHandler(Looper looper) {
            if (this.mWorkerHandler == null) {
                this.mWorkerHandler = new TelocationWorkerHandler(looper);
            }
            return this.mWorkerHandler;
        }

        public void startQueryTelocationString(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, TelocationQueryListener listener, Context context, String phoneNumber) {
            TelocationWorkerArgs args = new TelocationWorkerArgs();
            args.telocationQueryListener = listener;
            sendMsg(args, 10, token, cookie1, cookie2, cookie3, cookie4, context, phoneNumber);
        }

        public void startQueryOperatorString(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, OperatorQueryListener listener, Context context, String phoneNumber) {
            TelocationWorkerArgs args = new TelocationWorkerArgs();
            args.operatorQueryListener = listener;
            sendMsg(args, 20, token, cookie1, cookie2, cookie3, cookie4, context, phoneNumber);
        }

        public void startQueryTelocationAndOperatorString(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, TelocationAndOperatorQueryListener listener, Context context, String phoneNumber) {
            TelocationWorkerArgs args = new TelocationWorkerArgs();
            args.telocationAndOperatorQueryListener = listener;
            sendMsg(args, 30, token, cookie1, cookie2, cookie3, cookie4, context, phoneNumber);
        }

        private void sendMsg(TelocationWorkerArgs args, int arg1, int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, Context context, String phoneNumber) {
            args.handler = this;
            args.context = context;
            args.phoneNumber = phoneNumber;
            args.cookie1 = cookie1;
            args.cookie2 = cookie2;
            args.cookie3 = cookie3;
            args.cookie4 = cookie4;
            args.location = null;
            Message msg = this.mWorkerHandler.obtainMessage(token);
            msg.arg1 = arg1;
            msg.obj = args;
            msg.sendToTarget();
        }

        public void handleMessage(Message msg) {
            TelocationWorkerArgs args = msg.obj;
            if (msg.arg1 == 10 && args.telocationQueryListener != null) {
                args.telocationQueryListener.onComplete(args.cookie1, args.cookie2, args.cookie3, args.cookie4, args.location);
            } else if (msg.arg1 == 20 && args.operatorQueryListener != null) {
                args.operatorQueryListener.onComplete(args.cookie1, args.cookie2, args.cookie3, args.cookie4, args.operator);
            } else if (msg.arg1 == 30 && args.telocationAndOperatorQueryListener != null) {
                args.telocationAndOperatorQueryListener.onComplete(args.cookie1, args.cookie2, args.cookie3, args.cookie4, args.location, args.operator);
            }
        }
    }

    public interface TelocationQueryListener {
        void onComplete(Object obj, Object obj2, Object obj3, Object obj4, String str);
    }

    public static String stripSeparatorsAndCountryCode(String phoneNumber) {
        String number = stripSeparators(phoneNumber);
        if (number == null) {
            return number;
        }
        if (number.startsWith(CHINA_REGION_CODE1)) {
            return number.substring(CHINA_REGION_CODE1.length());
        }
        if (number.startsWith(CHINA_REGION_CODE2)) {
            return number.substring(CHINA_REGION_CODE2.length());
        }
        return number;
    }

    private static int minPositive(int a, int b) {
        if (a >= 0 && b >= 0) {
            return a < b ? a : b;
        } else if (a >= 0) {
            return a;
        } else {
            if (b >= 0) {
                return b;
            }
            return -1;
        }
    }

    private static int indexOfLastNetworkChar(String a) {
        int origLength = a.length();
        int trimIndex = minPositive(a.indexOf(44), a.indexOf(59));
        if (trimIndex < 0) {
            return origLength - 1;
        }
        return trimIndex - 1;
    }

    public static String extractNetworkPortion(String phoneNumber) {
        return extractNetworkPortion(phoneNumber, 0);
    }

    public static String extractNetworkPortion(String phoneNumber, int phoneType) {
        if (phoneNumber == null) {
            return null;
        }
        if (phoneType == 3 || invokeIsUriNumber(phoneNumber)) {
            return phoneNumber.substring(0, indexOfLastNetworkChar(phoneNumber) + 1).trim();
        }
        return android.telephony.PhoneNumberUtils.extractNetworkPortion(phoneNumber);
    }

    private static boolean invokeIsUriNumber(String phoneNumber) {
        try {
            Method method = android.telephony.PhoneNumberUtils.class.getDeclaredMethod("isUriNumber", new Class[]{String.class});
            method.setAccessible(true);
            return ((Boolean) method.invoke(null, new Object[]{phoneNumber})).booleanValue();
        } catch (Exception e) {
            Log.w(LOG_TAG, "invoke isUriNumber failed", e);
            return false;
        }
    }

    public static String extractNetworkPortionAlt(String phoneNumber) {
        return extractNetworkPortionAlt(phoneNumber, 0);
    }

    public static String extractNetworkPortionAlt(String phoneNumber, int phoneType) {
        if (phoneNumber == null) {
            return null;
        }
        if (phoneType == 3 || invokeIsUriNumber(phoneNumber)) {
            return phoneNumber.substring(0, indexOfLastNetworkChar(phoneNumber) + 1).trim();
        }
        return invokeExtractNetworkPortionAlt(phoneNumber);
    }

    private static String invokeExtractNetworkPortionAlt(String phoneNumber) {
        try {
            Method method = android.telephony.PhoneNumberUtils.class.getDeclaredMethod("extractNetworkPortionAlt", new Class[]{String.class});
            method.setAccessible(true);
            return (String) method.invoke(null, new Object[]{phoneNumber});
        } catch (Exception e) {
            Log.w(LOG_TAG, "invoke extractNetworkPortionAlt failed", e);
            return null;
        }
    }

    public static boolean isDialable(String address) {
        if (TextUtils.isEmpty(address)) {
            return false;
        }
        int count = address.length();
        for (int i = 0; i < count; i++) {
            if (!isDialable(address.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isChinaMobileNumber(String phoneNumber) {
        if (TextUtils.isEmpty(phoneNumber) || phoneNumber.length() < 11) {
            return false;
        }
        String number = stripSeparators(phoneNumber);
        if (number.length() >= "86".length() + 11) {
            return number.substring((number.length() - 11) - "86".length()).startsWith("861");
        }
        if (number.length() >= 11) {
            return number.substring(number.length() - 11).startsWith("1");
        }
        return false;
    }

    public static String[] splitNetworkAndPostDialPortion(String phoneNumber) {
        if (phoneNumber == null) {
            return null;
        }
        int networkEnd = indexOfLastNetworkChar(phoneNumber) + 1;
        String[] ret = new String[2];
        ret[0] = phoneNumber.substring(0, networkEnd);
        ret[1] = networkEnd == phoneNumber.length() ? "" : phoneNumber.substring(networkEnd);
        return ret;
    }

    public static boolean isServiceNumber(String phoneNumber) {
        PhoneNumber pn = PhoneNumber.parse(phoneNumber);
        return pn != null && pn.isServiceNumber();
    }

    public static boolean isChineseOperator(String operator) {
        return !TextUtils.isEmpty(operator) && operator.startsWith("460");
    }

    public static void queryTelocationStringAsync(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, TelocationQueryListener listener, Context context, String phoneNumber) {
        if (ChineseTelocation.isTelocationEnable(context.getContentResolver())) {
            TelocationAsyncQueryHandler.getInstance().startQueryTelocationString(token, cookie1, cookie2, cookie3, cookie4, listener, context, phoneNumber);
        } else {
            listener.onComplete(cookie1, cookie2, cookie3, cookie4, null);
        }
    }

    public static void queryOperatorStringAsync(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, OperatorQueryListener listener, Context context, String phoneNumber) {
        if (ChineseTelocation.isTelocationEnable(context.getContentResolver())) {
            TelocationAsyncQueryHandler.getInstance().startQueryOperatorString(token, cookie1, cookie2, cookie3, cookie4, listener, context, phoneNumber);
        } else {
            listener.onComplete(cookie1, cookie2, cookie3, cookie4, null);
        }
    }

    public static void queryTelocationAndOperatorStringAsync(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, TelocationAndOperatorQueryListener listener, Context context, String phoneNumber) {
        if (ChineseTelocation.isTelocationEnable(context.getContentResolver())) {
            TelocationAsyncQueryHandler.getInstance().startQueryTelocationAndOperatorString(token, cookie1, cookie2, cookie3, cookie4, listener, context, phoneNumber);
        } else {
            listener.onComplete(cookie1, cookie2, cookie3, cookie4, null, null);
        }
    }

    public static void queryTelocationStringAsync(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, TelocationQueryListener listener, Context context, String phoneNumber, boolean enableTelocation) {
        if (enableTelocation) {
            TelocationAsyncQueryHandler.getInstance().startQueryTelocationString(token, cookie1, cookie2, cookie3, cookie4, listener, context, phoneNumber);
        } else {
            listener.onComplete(cookie1, cookie2, cookie3, cookie4, null);
        }
    }

    public static void queryOperatorStringAsync(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, OperatorQueryListener listener, Context context, String phoneNumber, boolean enableTelocation) {
        if (enableTelocation) {
            TelocationAsyncQueryHandler.getInstance().startQueryOperatorString(token, cookie1, cookie2, cookie3, cookie4, listener, context, phoneNumber);
        } else {
            listener.onComplete(cookie1, cookie2, cookie3, cookie4, null);
        }
    }

    public static void queryTelocationAndOperatorStringAsync(int token, Object cookie1, Object cookie2, Object cookie3, Object cookie4, TelocationAndOperatorQueryListener listener, Context context, String phoneNumber, boolean enableTelocation) {
        if (enableTelocation) {
            TelocationAsyncQueryHandler.getInstance().startQueryTelocationAndOperatorString(token, cookie1, cookie2, cookie3, cookie4, listener, context, phoneNumber);
        } else {
            listener.onComplete(cookie1, cookie2, cookie3, cookie4, null, null);
        }
    }

    public static void cancelAsyncTelocationQuery(int token) {
        TelocationAsyncQueryHandler.getInstance().cancelOperation(token);
    }

    public static String parseTelocationString(Context context, CharSequence phoneNumber) {
        return TelocationAsyncQueryHandler.queryTelocation(context, phoneNumber);
    }

    public static String getDefaultIpBySim(Context context) {
        return getDefaultIpBySim(context, SubscriptionManager.getDefault().getDefaultSlotId());
    }

    public static String getDefaultIpBySim(Context context, int slotId) {
        TelephonyManager telephonyManager = TelephonyManager.getDefault();
        String simOperator = telephonyManager.getSimOperatorForSlot(slotId);
        if (telephonyManager.isSameOperator(simOperator, TelephonyManager.OPERATOR_NUMERIC_CHINA_MOBILE)) {
            return Prefix.PREFIX_17951;
        }
        if (telephonyManager.isSameOperator(simOperator, TelephonyManager.OPERATOR_NUMERIC_CHINA_UNICOM)) {
            return Prefix.PREFIX_17911;
        }
        if (telephonyManager.isSameOperator(simOperator, TelephonyManager.OPERATOR_NUMERIC_CHINA_TELECOM)) {
            return Prefix.PREFIX_17901;
        }
        return "";
    }

    public static String removeDashesAndBlanks(String phoneNumber) {
        if (TextUtils.isEmpty(phoneNumber)) {
            return phoneNumber;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < phoneNumber.length(); i++) {
            char c = phoneNumber.charAt(i);
            if (!(c == ' ' || c == '-')) {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public static boolean isMiuiEmergencyNumber(String number, boolean useExactMatch) {
        if (number == null) {
            return false;
        }
        for (String emergencyNum : EMERGENCY_NUMBERS) {
            if (useExactMatch) {
                if (emergencyNum.equals(number)) {
                    return true;
                }
            } else if (number.startsWith(emergencyNum)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEmergencyNumber(String number) {
        if (VERSION.SDK_INT >= 21 && C0015Build.IS_MIUI) {
            return invokeIsLocalEmergencyNumber(AppConstants.getCurrentApplication(), number);
        }
        boolean z = true;
        if (!(isMiuiEmergencyNumber(number, true) || android.telephony.PhoneNumberUtils.isEmergencyNumber(number))) {
            z = false;
        }
        return z;
    }

    private static boolean invokeIsLocalEmergencyNumber(Context context, String number) {
        try {
            Method method = Class.forName("miui.telephony.TelephonyManagerEx").getDeclaredMethod("isLocalEmergencyNumber", new Class[]{Context.class, String.class});
            method.setAccessible(true);
            return ((Boolean) method.invoke(number, new Object[]{context, number})).booleanValue();
        } catch (Exception e) {
            Log.w(LOG_TAG, "invokeIsLocalEmergencyNumber failed", e);
            return false;
        }
    }

    public static String parseNumber(String number) {
        if (TelephonyManager.getDefault().getSimState() != 5) {
            return number;
        }
        PhoneNumber pn = PhoneNumber.parse(number);
        if (pn != null) {
            return pn.getEffectiveNumber();
        }
        return number;
    }

    public static String maskPhoneNumber(String phoneNumber, int cutMode) {
        if (phoneNumber == null) {
            return "";
        }
        int i;
        int i2 = 0;
        int alnumCount = 0;
        for (i = 0; i < phoneNumber.length(); i++) {
            if (isAlnum(phoneNumber.charAt(i))) {
                alnumCount++;
            }
        }
        if (alnumCount < 7) {
            return new String(phoneNumber);
        }
        int cutStart;
        if (alnumCount < 11) {
            i = 2;
        } else {
            i = 3;
        }
        switch (cutMode) {
            case 0:
                cutStart = 0;
                break;
            case 1:
                cutStart = alnumCount - i;
                break;
            case 2:
                cutStart = (alnumCount - i) / 2;
                break;
            default:
                throw new IllegalArgumentException("Invalid cut mode");
        }
        StringBuilder result = new StringBuilder();
        int addedAlnumCount = 0;
        while (i2 < phoneNumber.length()) {
            if (isAlnum(phoneNumber.charAt(i2))) {
                if (addedAlnumCount < cutStart || i <= 0) {
                    result.append(phoneNumber.charAt(i2));
                } else {
                    result.append('?');
                    i--;
                }
                addedAlnumCount++;
            } else {
                result.append(phoneNumber.charAt(i2));
            }
            i2++;
        }
        return result.toString();
    }

    private static boolean isAlnum(char ch) {
        return (ch >= '0' && ch <= '9') || ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'));
    }

    public static String miuiFormatNumber(String phoneNumber, String phoneNumberE164, String defaultCountryIso) {
        if (Locale.getDefault().equals(Locale.SIMPLIFIED_CHINESE)) {
            PhoneNumber pn = PhoneNumber.parse(phoneNumber);
            if (pn != null) {
                String prefix = pn.getPrefix();
                if (!TextUtils.isEmpty(prefix) && phoneNumber.startsWith(prefix)) {
                    String formatedNumber = android.telephony.PhoneNumberUtils.formatNumber(phoneNumber.substring(prefix.length()), phoneNumberE164, defaultCountryIso);
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(prefix);
                    stringBuilder.append(" ");
                    stringBuilder.append(formatedNumber);
                    return stringBuilder.toString();
                }
            }
        }
        return android.telephony.PhoneNumberUtils.formatNumber(phoneNumber, phoneNumberE164, defaultCountryIso);
    }

    public static int getPresentation(CharSequence number) {
        if (TextUtils.isEmpty(number) || TextUtils.equals(number, "-1")) {
            return PhoneConstants.PRESENTATION_UNKNOWN;
        }
        if (TextUtils.equals(number, PRIVATE_NUMBER)) {
            return PhoneConstants.PRESENTATION_RESTRICTED;
        }
        if (TextUtils.equals(number, PAYPHONE_NUMBER)) {
            return PhoneConstants.PRESENTATION_PAYPHONE;
        }
        return PhoneConstants.PRESENTATION_ALLOWED;
    }

    public static String getPresentationString(int presentation) {
        String name = "";
        if (presentation == PhoneConstants.PRESENTATION_RESTRICTED) {
            return Resources.getSystem().getString(R.string.presentation_private);
        }
        if (presentation == PhoneConstants.PRESENTATION_PAYPHONE) {
            return Resources.getSystem().getString(R.string.presentation_payphone);
        }
        if (presentation == PhoneConstants.PRESENTATION_UNKNOWN) {
            return Resources.getSystem().getString(R.string.presentation_unknown);
        }
        return name;
    }

    public static String toLogSafePhoneNumber(String number) {
        return toLogSafePhoneNumber(number, 0);
    }

    public static String toLogSafePhoneNumber(String number, int originalCount) {
        int i = 0;
        int length = number == null ? 0 : number.length();
        if (length == 0) {
            return "";
        }
        StringBuilder builder = new StringBuilder(length);
        int originalIndex = length > originalCount ? length - originalCount : length;
        while (i < length) {
            char c = number.charAt(i);
            if (i >= originalIndex || c == '-' || c == '@' || c == '.') {
                builder.append(c);
            } else {
                builder.append('x');
            }
            i++;
        }
        return builder.toString();
    }
}
