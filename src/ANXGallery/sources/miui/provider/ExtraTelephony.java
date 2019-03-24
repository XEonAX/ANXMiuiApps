package miui.provider;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.MiuiIntent;
import android.content.res.MiuiConfiguration;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.BaseColumns;
import android.provider.CallLog.Calls;
import android.provider.MiuiSettings.AntiSpam;
import android.provider.MiuiSettings.SilenceMode;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import com.android.internal.telephony.PhoneConstants;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.Closeable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import miui.os.C0015Build;
import miui.telephony.PhoneNumberUtils;
import miui.telephony.PhoneNumberUtils.PhoneNumber;
import miui.telephony.phonenumber.CountryCode;
import miui.util.IOUtils;
import miui.yellowpage.YellowPageContract.AntispamWhiteList;

public final class ExtraTelephony {
    public static final String BANK_CATEGORY_NUMBER_PREFIX_106 = "106";
    public static final Pattern BANK_CATEGORY_PATTERN = Pattern.compile("银行|信用卡|Bank|BANK|支付宝|中国银联");
    public static final Pattern BANK_CATEGORY_SNIPPET_PATTERN = Pattern.compile("((\\[[\\s\\S]*(银行|信用卡|Bank|BANK|支付宝|中国银联)\\])|(\\【[\\s\\S]*(银行|信用卡|Bank|BANK|支付宝|中国银联)\\】))$");
    public static final String BLOCKED_CONV_ADDR = "blocked_conv_addr";
    public static final String BLOCKED_FLAG = "blocked_flag";
    public static final String BLOCKED_FLAG_ALL_MSG = "2";
    public static final String BLOCKED_FLAG_BLOCKED_MSG = "1";
    public static final String BLOCKED_FLAG_NO_BLOCKED_MSG = "0";
    public static final String CALLER_IS_SYNCADAPTER = "caller_is_syncadapter";
    public static final String CHECK_DUPLICATION = "check_duplication";
    public static final int DEFAULT_THREADS_LIST_TYPE_SP = 1;
    public static final String DIRTY_QUERY_LIMIT = "dirty_query_limit";
    public static final String FORCE_DELETE = "force_delete";
    public static final int INTERCEPT_STATE_ALL = 0;
    public static final int INTERCEPT_STATE_CALL = 2;
    public static final int INTERCEPT_STATE_SMS = 1;
    public static final String LOCAL_PRIVATE_ADDRESS_SYNC = "local.priaddr.sync";
    public static final String LOCAL_SMS_SYNC = "local.sms.sync";
    public static final String LOCAL_STICKY_THREAD_SYNC = "local.stkthrd.sync";
    public static final String LOCAL_SYNC_NAME = "localName";
    public static final String NEED_FULL_INSERT_URI = "need_full_insert_uri";
    public static final String NO_NOTIFY_FLAG = "no_notify";
    public static final String PRIVACY_FLAG = "privacy_flag";
    public static final String PRIVACY_FLAG_ALL_MSG = "2";
    public static final String PRIVACY_FLAG_NO_PRIVATE_MSG = "0";
    public static final String PRIVACY_FLAG_PRIVATE_MSG = "1";
    public static final String PROVIDER_NAME = "antispam";
    public static final String PrefixCode = "***";
    public static final int SOURCE_ANYONE = 0;
    public static final int SOURCE_CONTACT = 1;
    public static final int SOURCE_STAR = 2;
    public static final int SOURCE_VIP = 3;
    public static final String SUPPRESS_MAKING_MMS_PREVIEW = "supress_making_mms_preview";
    private static final String TAG = "ExtraTelephony";
    public static final String THREADS_LIST_TYPE = "threads_list_type";
    public static final int THREADS_LIST_TYPE_COMPOSITE = 0;
    public static final int TYPE_INTERCEPT_ADDRESS = 2;
    public static final int TYPE_INTERCEPT_NUMBER = 1;
    public static final int TYPE_INTERCEPT_NUMBER_FRAGMENT = 3;
    public static final String ZEN_MODE = "zen_mode";
    public static final int ZEN_MODE_ALARMS = 3;
    public static final int ZEN_MODE_IMPORTANT_INTERRUPTIONS = 1;
    public static final int ZEN_MODE_MIUI_SILENT = 4;
    public static final int ZEN_MODE_NO_INTERRUPTIONS = 2;
    public static final int ZEN_MODE_OFF = 0;
    private static Set<QuietModeEnableListener> mQuietListeners = new HashSet();
    private static SilentModeObserver mSilentModeObserver;

    public static class AdvancedSeen {
        public static final int NON_SP_UNSEEN = 0;
        public static final int SEEN = 3;
        public static final int SP_NOTIFIED = 2;
        public static final int SP_UNSEEN = 1;
    }

    public static final class AntiSpamMode implements BaseColumns {
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/antispam-mode";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/antispam-mode";
        public static final Uri CONTENT_URI = Uri.parse("content://antispam/mode");
        public static final String NAME = "name";
        public static final String STATE = "state";
    }

    public static final class AntiSpamSim implements BaseColumns {
        public static final String BACKSOUND_MODE = "backsound_mode";
        public static final String CALL_WAIT = "call_wait";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/antispam-sim";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/antispam-sim";
        public static final Uri CONTENT_URI = Uri.parse("content://antispam/sim");
        public static final String NAME = "name";
        public static final String SIM_ID = "sim_id";
        public static final String STATE = "state";
    }

    public static final class Blacklist implements BaseColumns {
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/firewall-blacklist";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/firewall-blacklist";
        public static final Uri CONTENT_URI = Uri.parse("content://firewall/blacklist");
        public static final String DISPLAY_NUMBER = "display_number";
        public static final String NOTES = "notes";
        public static final String NUMBER = "number";
        public static final String STATE = "state";
    }

    public interface SyncColumns {
        public static final String MARKER = "marker";
        public static final String SOURCE = "source";
        public static final String SYNC_STATE = "sync_state";
    }

    public interface DeletableSyncColumns extends SyncColumns {
        public static final String DELETED = "deleted";
    }

    public static final class FirewallLog implements BaseColumns {
        public static final String CALL_TYPE = "callType";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/antispam-log";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/antispam-log";
        public static final Uri CONTENT_URI = Uri.parse("content://antispam/log");
        public static final Uri CONTENT_URI_LOG_CONVERSATION = Uri.parse("content://antispam/logconversation");
        public static final Uri CONTENT_URI_SMS_LOG = Uri.parse("content://antispam/log_sms");
        public static final String DATA1 = "data1";
        public static final String DATA2 = "data2";
        public static final String DATE = "date";
        public static final String MODE = "mode";
        public static final String NUMBER = "number";
        public static final String READ = "read";
        public static final String REASON = "reason";
        public static final String SIM_ID = "simid";
        public static final String TYPE = "type";
        public static final int TYPE_CALL = 1;
        public static final int TYPE_SMS = 2;

        public interface CallBlockType {
            public static final int ADDRESS = 13;
            public static final int AGENT = 10;
            public static final int BLACKLIST = 3;
            public static final int CALL_TRANSFER = 15;
            public static final int CLOUDS = 16;
            public static final int CONTACT = 9;
            public static final int FRAUD = 8;
            public static final int HARASS = 14;
            public static final int IMPORT = 5;
            public static final int MUTE_BY_QM = 1;
            public static final int MUTE_NEED_CHECK = 2;
            public static final int NONE = 0;
            public static final int NONE_NEED_CHECK = -1;
            public static final int OVERSEA = 17;
            public static final int PREFIX = 6;
            public static final int PRIVATE_CALL = 4;
            public static final int SELL = 12;
            public static final int STRANGER = 7;
        }

        public interface SmsBlockType {
            public static final int ADDRESS = 13;
            public static final int BLACKLIST = 3;
            public static final int CLOUDS = 16;
            public static final int CONTACT = 9;
            public static final int FILTER = 4;
            public static final int IMPORT = 5;
            public static final int KEYWORDS = 12;
            public static final int NONE = 0;
            public static final int NONE_BUT_MUTE = 1;
            public static final int PREFIX = 6;
            public static final int SERVICE = 10;
            public static final int STRANGER = 7;
            public static final int URL = 8;
        }
    }

    public static final class Hms implements BaseColumns {
        public static final String ADDRESS = "address";
        public static final String ADVANCED_SEEN = "advanced_seen";
        public static final Uri CONTENT_URI = Uri.parse("content://hms/");
        public static final String DATE = "date";
        public static final String MX_CONTENT = "mx_content";
        public static final String MX_EXTENSION = "mx_extension";
        public static final String MX_MESSAGE_ID = "mx_message_id";
        public static final String MX_SEQ = "mx_seq";
        public static final String MX_TYPE = "mx_type";
        public static final String READ = "read";
        public static final String SEEN = "seen";
        public static final String SNIPPET = "snippet";
        public static final String THREAD_ID = "thread_id";
        public static final Uri THREAD_ID_CONTENT_URI = Uri.withAppendedPath(CONTENT_URI, "threadId");
        public static final String TYPE = "type";
    }

    public static final class Judge implements BaseColumns {
        public static final Uri CALL_CONTENT_URI = Uri.parse("content://antispam/call_judge");
        public static final Uri CALL_TRANSFER_CONTENT_URI = Uri.parse("content://antispam/call_transfer_intercept_judge");
        public static final int FORWARD_CALL_ALLOW = 0;
        public static final int FORWARD_CALL_INTERCEPT = 1;
        public static final String IS_FORWARD_CALL = "is_forward_call";
        public static final String IS_REPEATED_BLOCKED_CALL = "is_repeated_blocked_call";
        public static final String IS_REPEATED_NORMAL_CALL = "is_repeated_normal_call";
        public static final Uri SERVICE_NUM_CONTENT_URI = Uri.parse("content://antispam/service_num_judge");
        public static final Uri SMS_CONTENT_URI = Uri.parse("content://antispam/sms_judge");
        public static final Uri URL_CONTENT_URI = Uri.parse("content://antispam/url_judge");
        public static final int URL_SCAN_RESULT_DANGEROUS = 2;
        public static final int URL_SCAN_RESULT_NORMAL = 0;
        public static final int URL_SCAN_RESULT_RISKY = 1;
        public static final int URL_SCAN_RESULT_UNKNOWN = -1;
    }

    public static final class Keyword implements BaseColumns {
        public static final String CLOUD_UID = "cloudUid";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/antispam-keyword";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/antispam-keyword";
        public static final Uri CONTENT_URI = Uri.parse("content://antispam/keyword");
        public static final String DATA = "data";
        public static final String SIM_ID = "sim_id";
        public static final String TYPE = "type";
        public static final int TYPE_CLOUDS_BLACK = 2;
        public static final int TYPE_CLOUDS_WHITE = 3;
        public static final int TYPE_LOCAL_BLACK = 1;
        public static final int TYPE_LOCAL_WHITE = 4;
    }

    public static final class Mms implements DeletableSyncColumns {
        public static final String ACCOUNT = "account";
        public static final String ADDRESSES = "addresses";
        public static final String ADVANCED_SEEN = "advanced_seen";
        public static final String BIND_ID = "bind_id";
        public static final String BLOCK_TYPE = "block_type";
        public static final String DATE_FULL = "date_full";
        public static final String DATE_MS_PART = "date_ms_part";
        public static final String ERROR_TYPE = "error_type";
        public static final String FAVORITE_DATE = "favorite_date";
        public static final String FILE_ID = "file_id";
        public static final String MX_EXTENSION = "mx_extension";
        public static final String MX_ID = "mx_id";
        public static final String MX_STATUS = "mx_status";
        public static final String MX_TYPE = "mx_type";
        public static final String NEED_DOWNLOAD = "need_download";
        public static final String OUT_TIME = "out_time";
        public static final String PREVIEW_DATA = "preview_data";
        public static final String PREVIEW_DATA_TS = "preview_data_ts";
        public static final String PREVIEW_TYPE = "preview_type";
        public static final String SIM_ID = "sim_id";
        public static final String SNIPPET = "snippet";
        public static final String TIMED = "timed";

        public static final class Intents {
            public static final String MAKE_MMS_PREVIEW_ACTION = "android.provider.Telephony.MAKE_MMS_PREVIEW";
        }

        public static final class PreviewType {
            public static final int AUDIO = 3;
            public static final int IMAGE = 2;
            public static final int NONE = 1;
            public static final int SLIDESHOW = 6;
            public static final int UNKNOWN = 0;
            public static final int VCARD = 5;
            public static final int VIDEO = 4;
        }
    }

    public static final class MmsSms {
        public static final Uri BLOCKED_CONVERSATION_CONTENT_URI = Uri.parse("content://mms-sms/blocked");
        public static final Uri BLOCKED_THREAD_CONTENT_URI = Uri.parse("content://mms-sms/blocked-thread");
        public static final Uri CONTENT_ALL_LOCKED_URI = Uri.parse("content://mms-sms/locked/all");
        public static final Uri CONTENT_ALL_UNDERSTAND_INFO_URI = Uri.parse("content://mms-sms/understand-info/all");
        public static final Uri CONTENT_EXPIRED_URI = Uri.parse("content://mms-sms/expired");
        public static final Uri CONTENT_PREVIEW_URI = Uri.parse("content://mms-sms/message/preview");
        public static final Uri CONTENT_RECENT_RECIPIENTS_URI = Uri.parse("content://mms-sms/recent-recipients");
        public static final Uri CONTENT_UNDERSTAND_INFO_URI = Uri.parse("content://mms-sms/understand-info");
        public static final String EXCLUDE_VERIFICATION_CODES_FLAG = "exclude_verification_codes";
        public static final String EXCLUDE_VERIFICATION_CODES_FLAG_EXCLUDE = "1";
        public static final String EXCLUDE_VERIFICATION_CODES_FLAG_NOT_EXCLUDE = "0";
        public static final String INSERT_PATH_IGNORED = "ignored";
        public static final String INSERT_PATH_INSERTED = "inserted";
        public static final String INSERT_PATH_RESTORED = "restored";
        public static final String INSERT_PATH_UPDATED = "updated";
        public static final int PREVIEW_ADDRESS_COLUMN_INDEX = 1;
        public static final int PREVIEW_BODY_COLUMN_INDEX = 4;
        public static final int PREVIEW_CHARSET_COLUMN_INDEX = 5;
        public static final int PREVIEW_DATE_COLUMN_INDEX = 2;
        public static final int PREVIEW_ID_COLUMN_INDEX = 0;
        public static final int PREVIEW_THREAD_ID_COLUMN_INDEX = 6;
        public static final int PREVIEW_TYPE_COLUMN_INDEX = 3;
        public static final int SYNC_STATE_DIRTY = 0;
        public static final int SYNC_STATE_ERROR = 3;
        public static final int SYNC_STATE_MARKED_DELETING = 65538;
        public static final int SYNC_STATE_NOT_UPLOADABLE = 4;
        public static final int SYNC_STATE_SYNCED = 2;
        public static final int SYNC_STATE_SYNCING = 1;
    }

    public static final class Mx {
        public static final int TYPE_COMMON = 0;
        public static final int TYPE_DELIVERED = 17;
        public static final int TYPE_FAILED = 131073;
        public static final int TYPE_INCOMING = 65537;
        public static final int TYPE_PENDING = 1;
        public static final int TYPE_READ = 256;
        public static final int TYPE_SENT = 16;
        public static final int TYPE_WEB = 196609;
    }

    public static class MxType {
        public static final int AUDIO = 3;
        public static final int IMAGE = 2;
        public static final int MMS = 1;
        public static final int NONE_MX = 0;
        public static final int RED = 5;
        public static final int VIDEO = 4;
    }

    public static final class Phonelist implements BaseColumns {
        public static final String CLOUD_UUID = "cloudUid";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/antispam-phone_list";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/antispam-phone_list";
        public static final Uri CONTENT_URI = Uri.parse("content://antispam/phone_list");
        public static final Uri CONTENT_URI_SYNCED_COUNT = Uri.parse("content://antispam/synced_count");
        public static final Uri CONTENT_URI_UNSYNCED_COUNT = Uri.parse("content://antispam/unsynced_count");
        public static final String DISPLAY_NUMBER = "display_number";
        public static final String E_TAG = "e_tag";
        public static final String IS_DISPLAY = "isdisplay";
        public static final String LOCATION = "location";
        public static final String NOTES = "notes";
        public static final String NUMBER = "number";
        public static final String RECORD_ID = "record_id";
        public static final String SIM_ID = "sim_id";
        public static final String STATE = "state";
        public static final String SYNC_DIRTY = "sync_dirty";
        public static final String TYPE = "type";
        public static final String TYPE_BLACK = "1";
        public static final String TYPE_CLOUDS_BLACK = "4";
        public static final String TYPE_CLOUDS_WHITE = "5";
        public static final String TYPE_STRONG_CLOUDS_BLACK = "6";
        public static final String TYPE_STRONG_CLOUDS_WHITE = "7";
        public static final String TYPE_VIP = "3";
        public static final String TYPE_WHITE = "2";
        public static final String UNKNOWN_NUMBER = "-1";

        public static final class Location {
            public static final int IS_CLOUD = 1;
            public static final int IS_LOCAL = 0;
        }

        public static final class State {
            public static final int ALL = 0;
            public static final int CALL = 2;
            public static final int MSG = 1;
        }

        public static final class SyncDirty {
            public static final int ADD = 0;
            public static final int DELETE = 1;
            public static final int SYNCED = 3;
            public static final int UPDATE = 2;
        }
    }

    public interface PrivateAddresses extends DeletableSyncColumns {
        public static final String ADDRESS = "address";
        public static final Uri CONTENT_URI = Uri.parse("content://mms-sms/private-addresses");
        public static final String _ID = "_id";
    }

    public interface QuietModeEnableListener {
        void onQuietModeEnableChange(boolean z);
    }

    public static class ServiceCategory {
        public static final int DEFAULT_SERVICE_NUMBER = 1;
        public static final int FINANCE_NUMBER = 2;
        public static final int NOT_SERVICE_NUMBER = 0;
    }

    private static class SilentModeObserver extends ContentObserver {
        private Context mContext;

        public SilentModeObserver(Context context, Handler handler) {
            super(handler);
            this.mContext = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        }

        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            if (ExtraTelephony.mQuietListeners != null) {
                boolean isSilenceModeEnable = SilenceMode.isSilenceModeEnable(this.mContext);
                for (QuietModeEnableListener onQuietModeEnableChange : ExtraTelephony.mQuietListeners) {
                    onQuietModeEnableChange.onQuietModeEnableChange(isSilenceModeEnable);
                }
            }
        }
    }

    public static final class SimCards {
        public static final String BIND_ID = "bind_id";
        public static final Uri CONTENT_URI = Uri.parse("content://mms-sms/sim-cards");
        public static final String DL_STATUS = "download_status";
        @Deprecated
        public static final String IMSI = "imsi";
        public static final String MARKER1 = "marker1";
        public static final String MARKER2 = "marker2";
        public static final String MARKER_BASE = "marker_base";
        public static final String NUMBER = "number";
        public static final String SIM_ID = "sim_id";
        @Deprecated
        public static final String SLOT = "slot";
        public static final String SYNC_ENABLED = "sync_enabled";
        public static final String SYNC_EXTRA_INFO = "sync_extra_info";
        public static final String _ID = "_id";

        public static final class DLStatus {
            public static final int FINISH = 2;
            public static final int INIT = 0;
            public static final int NEED = 1;
        }

        public static final class SyncStatus {
            public static final int ACTIVE = 1;
            public static final int CLOSED = 2;
            public static final int DIRTY_MASK = 10000;
            public static final int INACTIVE = 0;
        }
    }

    public interface TextBasedSmsColumns {
        public static final int MESSAGE_TYPE_INVALID = 7;
    }

    public static final class Sms implements TextBasedSmsColumns, DeletableSyncColumns {
        public static final String ACCOUNT = "account";
        public static final String ADDRESSES = "addresses";
        public static final String ADVANCED_SEEN = "advanced_seen";
        public static final String B2C_NUMBERS = "b2c_numbers";
        public static final String B2C_TTL = "b2c_ttl";
        public static final String BIND_ID = "bind_id";
        public static final String BLOCK_TYPE = "block_type";
        public static final String FAKE_CELL_TYPE = "fake_cell_type";
        public static final String FAVORITE_DATE = "favorite_date";
        public static final String MX_ID = "mx_id";
        public static final String MX_STATUS = "mx_status";
        public static final String OUT_TIME = "out_time";
        public static final String SIM_ID = "sim_id";
        public static final String TIMED = "timed";
        public static final String URL_RISKY_TYPE = "url_risky_type";

        public static final class FakeCellType {
            public static final int CHECKED_SAFE = -1;
            public static final int FAKE = 1;
            public static final int NORMAL = 0;
        }

        public static final class Intents {
            public static final String DISMISS_NEW_MESSAGE_NOTIFICATION_ACTION = "android.provider.Telephony.DISMISS_NEW_MESSAGE_NOTIFICATION";
        }

        public static final class UrlRiskyType {
            public static final int URL_FRAUD_DANGEROUS = 3;
            public static final int URL_RISKY = 2;
            public static final int URL_SAFE = 0;
            public static final int URL_SUSPICIOUS = 1;
        }
    }

    public static final class SmsPhrase {
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/smsphrase";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/smsphrase";
    }

    public interface ThreadsColumns extends SyncColumns {
        public static final String HAS_DRAFT = "has_draft";
        public static final String LAST_SIM_ID = "last_sim_id";
        public static final String MX_SEQ = "mx_seq";
        public static final String PRIVATE_ADDR_IDS = "private_addr_ids";
        public static final String RMS_TYPE = "rms_type";
        public static final String SP_TYPE = "sp_type";
        public static final String STICK_TIME = "stick_time";
        public static final String UNREAD_COUNT = "unread_count";
    }

    public static final class Threads implements ThreadsColumns {

        public static final class Intents {
            public static final String THREADS_OBSOLETED_ACTION = "android.intent.action.SMS_THREADS_OBSOLETED_ACTION";
        }
    }

    public static final class UnderstandInfo {
        public static final String CLASS = "class";
        public static final String MSG_ID = "msg_id";
        public static final String MSG_TYPE = "msg_type";
        public static final String OUT_OF_DATE = "out_of_date";
        public static final String VERSION = "version";

        public static final class MessageType {
            public static final int RMS = 1;
            public static final int SMS = 0;
        }

        public static final class UnderstandClass {
            public static final int NORMAL = 0;
            public static final int VERIFICATION_CODE = 1;
        }
    }

    public static final class Whitelist implements BaseColumns {
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/firewall-whitelist";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/firewall-whitelist";
        public static final Uri CONTENT_URI = Uri.parse("content://firewall/whitelist");
        public static final String DISPLAY_NUMBER = "display_number";
        public static final String ISDISPLAY = "isdisplay";
        public static final String NOTES = "notes";
        public static final String NUMBER = "number";
        public static final String STATE = "state";
        public static final String VIP = "vip";
    }

    public static boolean isInBlacklist(Context context, String number) {
        boolean z = false;
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        String nomalizeNumber;
        if (number.contains("*")) {
            nomalizeNumber = normalizeNumber(number);
        } else {
            nomalizeNumber = PhoneNumber.parse(number).getNormalizedNumber(false, true);
        }
        number = TextUtils.isEmpty(nomalizeNumber) ? number : nomalizeNumber;
        if (number.matches("[a-zA-Z]*-[a-zA-Z]*")) {
            number = number.substring(number.indexOf("-"));
        }
        Closeable c = null;
        try {
            c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sync_dirty <> ? ", new String[]{number, "1", String.valueOf(1)}, null);
            if (c != null) {
                if (c.getCount() > 0) {
                    z = true;
                }
                IOUtils.closeQuietly(c);
                return z;
            }
        } catch (Exception e) {
            Log.e(TAG, "Cursor exception in isInBlacklist(): ", e);
        } catch (Throwable th) {
            IOUtils.closeQuietly(null);
        }
        IOUtils.closeQuietly(c);
        return false;
    }

    public static boolean isInBlacklist(Context context, String number, int simId) {
        boolean z = false;
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        String nomalizeNumber;
        if (number.contains("*")) {
            nomalizeNumber = normalizeNumber(number);
        } else {
            nomalizeNumber = PhoneNumber.parse(number).getNormalizedNumber(false, true);
        }
        number = TextUtils.isEmpty(nomalizeNumber) ? number : nomalizeNumber;
        if (number.matches("[a-zA-Z]*-[a-zA-Z]*")) {
            number = number.substring(number.indexOf("-"));
        }
        Cursor c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", new String[]{number, "1", String.valueOf(simId), String.valueOf(1)}, null);
        if (c != null) {
            try {
                if (c.getCount() > 0) {
                    z = true;
                }
                c.close();
                return z;
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception in isInBlacklist(): ", e);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean isInBlacklist(Context context, String number, int state, int simId) {
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        Cursor c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", new String[]{number, "1", String.valueOf(simId), String.valueOf(1)}, null);
        if (c != null) {
            try {
                if (c.moveToNext()) {
                    int dbState = c.getInt(c.getColumnIndex("state"));
                    if (dbState == 0 || dbState == state) {
                        c.close();
                        return true;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception in isInBlacklist(): ", e);
            } catch (Throwable th) {
                c.close();
            }
            c.close();
        }
        return false;
    }

    public static boolean isPrefixInBlack(Context context, String number, int state, int simId) {
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        String tmp = "";
        for (int i = 0; i < number.length(); i++) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(tmp);
            stringBuilder.append(number.charAt(i));
            tmp = stringBuilder.toString();
            r7 = new String[4];
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(tmp);
            stringBuilder2.append("*");
            r7[0] = stringBuilder2.toString();
            r7[1] = "1";
            r7[2] = String.valueOf(simId);
            r7[3] = String.valueOf(1);
            Cursor c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", r7, null);
            if (c != null) {
                try {
                    if (c.moveToNext()) {
                        int dbState = c.getInt(c.getColumnIndex("state"));
                        if (dbState == 0 || dbState == state) {
                            c.close();
                            return true;
                        }
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Cursor exception in isPrefixInBlack(): ", e);
                } catch (Throwable th) {
                    c.close();
                }
                c.close();
            }
        }
        return false;
    }

    public static boolean isAddressInBlack(Context context, String rawNumber, int state, int simId) {
        r4 = new String[4];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PrefixCode);
        stringBuilder.append(PhoneNumber.getLocationAreaCode(context, rawNumber));
        r4[0] = stringBuilder.toString();
        r4[1] = "1";
        r4[2] = String.valueOf(simId);
        r4[3] = String.valueOf(1);
        Cursor c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", r4, null);
        if (c != null) {
            try {
                if (c.moveToNext()) {
                    int dbState = c.getInt(c.getColumnIndex("state"));
                    if (dbState == 0 || dbState == state) {
                        c.close();
                        return true;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception in isAddressInBlack(): ", e);
            } catch (Throwable th) {
                c.close();
            }
            c.close();
        }
        return false;
    }

    public static boolean isInWhiteList(Context context, String number) {
        boolean z = false;
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        String normalizeNumber;
        if (number.contains("*")) {
            normalizeNumber = normalizeNumber(number);
        } else {
            normalizeNumber = PhoneNumber.parse(number).getNormalizedNumber(false, true);
        }
        number = normalizeNumber;
        Cursor c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sync_dirty <> ? ", new String[]{number, "2", String.valueOf(1)}, null);
        if (c != null) {
            try {
                if (c.getCount() > 0) {
                    z = true;
                }
                c.close();
                return z;
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception in isInWhiteList(): ", e);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean isInWhiteList(Context context, String number, int simId) {
        boolean z = false;
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        String normalizeNumber;
        if (number.contains("*")) {
            normalizeNumber = normalizeNumber(number);
        } else {
            normalizeNumber = PhoneNumber.parse(number).getNormalizedNumber(false, true);
        }
        number = normalizeNumber;
        Cursor c = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", new String[]{number, "2", String.valueOf(simId), String.valueOf(1)}, null);
        if (c != null) {
            try {
                if (c.getCount() > 0) {
                    z = true;
                }
                c.close();
                return z;
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception in isInWhiteList(): ", e);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean isInWhiteList(Context context, String rawNumber, int state, int simId) {
        int i = state;
        if (TextUtils.isEmpty(rawNumber)) {
            return false;
        }
        int dbState;
        Cursor cursor;
        r7 = new String[4];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PrefixCode);
        stringBuilder.append(PhoneNumber.getLocationAreaCode(context, rawNumber));
        r7[0] = stringBuilder.toString();
        r7[1] = "2";
        r7[2] = String.valueOf(simId);
        r7[3] = String.valueOf(1);
        Cursor cursor2 = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", r7, null);
        if (cursor2 != null) {
            try {
                if (cursor2.moveToNext()) {
                    dbState = cursor2.getInt(cursor2.getColumnIndex("state"));
                    if (dbState == 0 || dbState == i) {
                        cursor2.close();
                        return true;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception when area check in whiteList: ", e);
            } catch (Throwable th) {
                cursor2.close();
            }
            cursor2.close();
        }
        String normalizedNum = PhoneNumber.parse(rawNumber).getNormalizedNumber(false, true);
        String tmp = "";
        dbState = 0;
        while (true) {
            int i2 = dbState;
            if (i2 < normalizedNum.length()) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(tmp);
                stringBuilder.append(normalizedNum.charAt(i2));
                tmp = stringBuilder.toString();
                r0 = new String[4];
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(tmp);
                stringBuilder2.append("*");
                r0[0] = stringBuilder2.toString();
                r0[1] = "2";
                r0[2] = String.valueOf(simId);
                r0[3] = String.valueOf(1);
                cursor = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? ", r0, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToNext()) {
                            dbState = cursor.getInt(cursor.getColumnIndex("state"));
                            if (dbState == 0 || dbState == i) {
                                cursor.close();
                            }
                        }
                    } catch (Exception e2) {
                        Log.e(TAG, "Cursor exception when prefix check in whiteList: ", e2);
                    } catch (Throwable th2) {
                        cursor.close();
                    }
                    cursor.close();
                }
                dbState = i2 + 1;
            } else {
                cursor = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number= ? AND type= ? AND sim_id = ? AND sync_dirty <> ? ", new String[]{normalizedNum, "2", String.valueOf(simId), String.valueOf(1)}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToNext()) {
                            dbState = cursor.getInt(cursor.getColumnIndex("state"));
                            if (dbState == 0 || dbState == i) {
                                cursor.close();
                                return true;
                            }
                        }
                    } catch (Exception e22) {
                        Log.e(TAG, "Cursor exception when complete check in whiteList: ", e22);
                    } catch (Throwable th3) {
                        cursor.close();
                    }
                    cursor.close();
                }
                return false;
            }
        }
        cursor.close();
        return true;
    }

    public static boolean isInVipList(Context context, String number) {
        boolean z = false;
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        Cursor cursor = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "number = ? AND type = ? AND sync_dirty <> ? ", new String[]{number, Phonelist.TYPE_VIP, String.valueOf(1)}, null);
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0) {
                    z = true;
                }
                cursor.close();
                return z;
            } catch (Exception e) {
                Log.e(TAG, "Cursor exception in isInVipList(): ", e);
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean isInCloudPhoneList(Context context, String number, int state, String type) {
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        Cursor cursor = context.getContentResolver().query(Phonelist.CONTENT_URI, null, "type = ? AND state in (0, ?)", new String[]{type, String.valueOf(state)}, null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    if (number.matches(number2regex(cursor.getString(cursor.getColumnIndex("number"))))) {
                        cursor.close();
                        return true;
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Cursor exception when check prefix cloudPhoneList: ", e);
                } catch (Throwable th) {
                    cursor.close();
                }
            }
            cursor.close();
        }
        return false;
    }

    private static String number2regex(String number) {
        return number.replace("*", "[\\s\\S]*").replace("#", "[\\s\\S]").replace(CountryCode.GSM_GENERAL_IDD_CODE, "\\+");
    }

    public static boolean containsKeywords(Context context, String smsBody, int type, int simId) {
        Cursor cursor = context.getContentResolver().query(Keyword.CONTENT_URI, null, "type = ? AND sim_id = ? ", new String[]{String.valueOf(type), String.valueOf(simId)}, null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    String keyword = cursor.getString(cursor.getColumnIndex("data")).trim();
                    if (!TextUtils.isEmpty(keyword) && smsBody.toLowerCase().contains(keyword.toLowerCase())) {
                        cursor.close();
                        return true;
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Cursor exception in shouldFilter()", e);
                } catch (Throwable th) {
                    cursor.close();
                }
            }
            cursor.close();
        }
        return false;
    }

    public static boolean isInSmsWhiteList(Context context, String number) {
        if (TextUtils.isEmpty(number)) {
            return false;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = AntispamWhiteList.CONTNET_URI;
        String[] strArr = new String[]{"number"};
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("number LIKE '");
        stringBuilder.append(number);
        stringBuilder.append("%'");
        Cursor c = contentResolver.query(uri, strArr, stringBuilder.toString(), null, null);
        if (c != null) {
            while (c.moveToNext()) {
                try {
                    if (TextUtils.equals(number, c.getString(0)) || number.startsWith(BANK_CATEGORY_NUMBER_PREFIX_106)) {
                        c.close();
                        return true;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    c.close();
                }
            }
            c.close();
        }
        return false;
    }

    public static boolean checkMarkedNumberIntercept(Context context, int simId, int cid, String number, int antispamProviderId, boolean isUserMarked, int markedCount) {
        String markType = (String) ((HashMap) AntiSpam.mapIdToState.get(Integer.valueOf(simId))).get(Integer.valueOf(cid));
        if (markType == null) {
            Slog.d(TAG, "the mark type of cid is not found ... allow");
            return false;
        }
        if (!(AntiSpam.getMode(context, markType, 1) == 0)) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("the switch of ");
            stringBuilder.append(markType);
            stringBuilder.append(" is not open ... allow");
            Slog.d(str, stringBuilder.toString());
            return false;
        } else if (isRelatedNumber(context, number)) {
            Slog.d(TAG, "call number is a related number... allow");
            return false;
        } else {
            boolean threshold = AntiSpam.getMode(context, (String) ((HashMap) AntiSpam.mapIdToMarkTime.get(Integer.valueOf(simId))).get(Integer.valueOf(cid)), 50) <= markedCount;
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("marking threshold reached ? ");
            stringBuilder2.append(threshold);
            Slog.d(str2, stringBuilder2.toString());
            if (!isUserMarked && antispamProviderId != 398 && !threshold) {
                return false;
            }
            Slog.d(TAG, "should intercept this marked call !");
            return true;
        }
    }

    private static boolean isRelatedNumber(Context context, String number) {
        Closeable c = null;
        try {
            c = context.getContentResolver().query(Calls.CONTENT_URI, new String[]{"type"}, "number = ? OR normalized_number = ? ", new String[]{number, number}, ExtraContacts.Calls.DEFAULT_SORT_ORDER);
            if (c != null) {
                while (c.moveToNext()) {
                    if (c.getInt(0) == 2) {
                        IOUtils.closeQuietly(c);
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Cursor exception in isRelatedNumber(): ", e);
        } catch (Throwable th) {
            IOUtils.closeQuietly(null);
        }
        IOUtils.closeQuietly(c);
        return false;
    }

    public static int getCallBlockType(Context context, String number, int slotId, boolean isForwardCall, boolean isRepeated, boolean isRepeatedBlocked) {
        if (TextUtils.isEmpty(number)) {
            return 0;
        }
        int blockType = 0;
        final Context context2 = context;
        final String str = number;
        final int i = slotId;
        final boolean z = isForwardCall;
        final boolean z2 = isRepeated;
        final boolean z3 = isRepeatedBlocked;
        FutureTask<Integer> task = new FutureTask(new Callable<Integer>() {
            public Integer call() throws Exception {
                int callBlockType = context2.getContentResolver();
                Uri uri = Judge.CALL_CONTENT_URI;
                ContentValues contentValues = new ContentValues();
                String[] strArr = new String[5];
                strArr[0] = str;
                strArr[1] = String.valueOf(i);
                strArr[2] = z ? Judge.IS_FORWARD_CALL : "";
                strArr[3] = z2 ? Judge.IS_REPEATED_NORMAL_CALL : "";
                strArr[4] = z3 ? Judge.IS_REPEATED_BLOCKED_CALL : "";
                return Integer.valueOf(callBlockType.update(uri, contentValues, null, strArr));
            }
        });
        try {
            new Thread(task).start();
            blockType = ((Integer) task.get(5000, TimeUnit.MILLISECONDS)).intValue();
        } catch (InterruptedException e) {
            Log.e(TAG, "InterruptedException when getCallBlockType", e);
        } catch (ExecutionException e2) {
            Log.e(TAG, "ExecutionException when getCallBlockType", e2);
        } catch (TimeoutException e3) {
            if (!task.isDone()) {
                task.cancel(true);
            }
            Log.e(TAG, "TimeoutException when getCallBlockType", e3);
        }
        return blockType;
    }

    public static int getSmsBlockType(Context context, String number, String body, int slotId) {
        int i = 0;
        if (TextUtils.isEmpty(number)) {
            return 0;
        }
        String smsBody = body == null ? "" : body;
        int smsBlockType = 0;
        try {
            smsBlockType = context.getContentResolver().update(Judge.SMS_CONTENT_URI, new ContentValues(), null, new String[]{number, smsBody, String.valueOf(slotId)});
        } catch (Exception e) {
            Log.e(TAG, "getSmsBlockType error", e);
        }
        if (smsBlockType >= 0) {
            i = smsBlockType;
        }
        return i;
    }

    public static boolean isCallTransferBlocked(Context context, int slotId) {
        boolean z = false;
        try {
            if (context.getContentResolver().update(Judge.CALL_TRANSFER_CONTENT_URI, new ContentValues(), null, new String[]{String.valueOf(slotId)}) == 1) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            Log.e(TAG, "Exception when isCallTransferBlocked()", e);
            return false;
        }
    }

    public static int getSmsURLScanResult(Context context, String num, String url) {
        num = PhoneNumber.parse(num).getNormalizedNumber(false, true);
        try {
            return context.getContentResolver().update(Judge.URL_CONTENT_URI, new ContentValues(), null, new String[]{num, url});
        } catch (Exception e) {
            Log.e(TAG, "Exception when getSmsURLScanResult()", e);
            return -1;
        }
    }

    public static boolean isTargetServiceNum(Context context, String num) {
        boolean z = true;
        num = PhoneNumber.parse(num).getNormalizedNumber(false, true);
        try {
            if (context.getContentResolver().update(Judge.SERVICE_NUM_CONTENT_URI, new ContentValues(), null, new String[]{num}) != 1) {
                z = false;
            }
            return z;
        } catch (Exception e) {
            Log.e(TAG, "Exception when isTargetServiceNum()", e);
            return false;
        }
    }

    public static int getRealBlockType(int blockType) {
        return blockType & BaiduSceneResult.BANK_CARD;
    }

    public static boolean isURLFlagRisky(int blockType) {
        return (blockType & 128) == 128;
    }

    public static void sendCallInterceptNotification(Context context, String number, int blockType, int subId) {
        Intent intent = new Intent(MiuiIntent.ACTION_FIREWALL_UPDATED);
        intent.putExtra("key_sim_id", subId);
        intent.putExtra("notification_intercept_number", number);
        intent.putExtra(MiuiIntent.INTENT_EXTRA_KEY_BLOCK_LOG_TYPE, 1);
        intent.putExtra("notification_block_type", blockType);
        if (blockType == 3 || blockType == 6 || blockType == 13) {
            intent.putExtra("notification_show_type", 0);
        } else {
            intent.putExtra("notification_show_type", 1);
        }
        context.sendBroadcastAsUser(intent, UserHandle.CURRENT_OR_SELF);
    }

    public static void sendMsgInterceptNotification(Context context, int blockType, int subId) {
        if (C0015Build.IS_MIUI) {
            Intent intent = new Intent(MiuiIntent.ACTION_FIREWALL_UPDATED);
            intent.putExtra("key_sim_id", subId);
            intent.putExtra(MiuiIntent.INTENT_EXTRA_KEY_BLOCK_LOG_TYPE, 2);
            if (blockType == 3 || blockType == 13 || blockType == 6 || blockType == 12) {
                intent.putExtra("notification_show_type", 0);
            } else {
                intent.putExtra("notification_show_type", 1);
            }
            context.sendBroadcast(intent);
        }
    }

    private static String convertPresentationToFilterNumber(int presentation, String logNumber) {
        if (presentation == PhoneConstants.PRESENTATION_RESTRICTED) {
            return PhoneNumberUtils.PRIVATE_NUMBER;
        }
        if (presentation == PhoneConstants.PRESENTATION_PAYPHONE) {
            return PhoneNumberUtils.PAYPHONE_NUMBER;
        }
        if (TextUtils.isEmpty(logNumber) || presentation == PhoneConstants.PRESENTATION_UNKNOWN) {
            return "-1";
        }
        return logNumber;
    }

    public static void registerQuietModeEnableListener(Context context, QuietModeEnableListener quietListener) {
        if (C0015Build.IS_MIUI) {
            mQuietListeners.add(quietListener);
            if (mSilentModeObserver == null) {
                mSilentModeObserver = new SilentModeObserver(context, new Handler());
                if (SilenceMode.isSupported) {
                    registerContentObserver(context.getContentResolver(), Global.getUriFor(ZEN_MODE), false, mSilentModeObserver, -1);
                    registerContentObserver(context.getContentResolver(), System.getUriFor("vibrate_in_silent"), false, mSilentModeObserver, -1);
                    registerContentObserver(context.getContentResolver(), System.getUriFor("show_notification"), false, mSilentModeObserver, -1);
                } else {
                    registerContentObserver(context.getContentResolver(), Secure.getUriFor("quiet_mode_enable"), false, mSilentModeObserver, -1);
                }
            }
        }
    }

    public static void unRegisterQuietModeEnableListener(Context context, QuietModeEnableListener quietListener) {
        mQuietListeners.remove(quietListener);
        if (mQuietListeners.size() <= 0 && mSilentModeObserver != null) {
            context.getContentResolver().unregisterContentObserver(mSilentModeObserver);
            mSilentModeObserver = null;
        }
    }

    /* JADX WARNING: Missing block: B:28:0x005e, code:
            if (r0 != null) goto L_0x0069;
     */
    /* JADX WARNING: Missing block: B:33:0x0067, code:
            if (r0 == null) goto L_0x006d;
     */
    /* JADX WARNING: Missing block: B:34:0x0069, code:
            r0.close();
     */
    /* JADX WARNING: Missing block: B:35:0x006d, code:
            return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean checkKeyguardForQuiet(Context context, String pkg) {
        if (!C0015Build.IS_MIUI) {
            return true;
        }
        if (SilenceMode.isSupported) {
            return checkKeyguardForSilentMode(context);
        }
        if (VERSION.SDK_INT < 21) {
            return AntiSpam.isQuietModeEnable(context);
        }
        if (!AntiSpam.isQuietModeEnable(context)) {
            return false;
        }
        if (MiuiConfiguration.MMS_PKG_NAME.equals(pkg) || "com.android.incallui".equals(pkg) || "com.android.server.telecom".equals(pkg)) {
            return true;
        }
        Cursor c = null;
        try {
            c = context.getContentResolver().query(Uri.withAppendedPath(Uri.parse("content://antispamCommon/zenmode"), Phonelist.TYPE_CLOUDS_BLACK), null, null, null, null);
            if (c != null) {
                if (c != null) {
                    c.close();
                }
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            throw th;
        }
    }

    public static boolean checkKeyguardForSilentMode(Context context) {
        boolean z = false;
        if (!C0015Build.IS_MIUI) {
            return false;
        }
        if (VERSION.SDK_INT < 21) {
            return SilenceMode.isSilenceModeEnable(context);
        }
        if (SilenceMode.getZenMode(context) == 1) {
            z = true;
        }
        return z;
    }

    public static String normalizeNumber(String phoneNumber) {
        if (TextUtils.isEmpty(phoneNumber)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int len = phoneNumber.length();
        for (int i = 0; i < len; i++) {
            char c = phoneNumber.charAt(i);
            appendNonSeparator(sb, c, i);
            int digit = Character.digit(c, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (i == 0 && c == '+') {
                sb.append(c);
            } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
                return normalizeNumber(PhoneNumberUtils.convertKeypadLettersToDigits(phoneNumber));
            }
        }
        return sb.toString();
    }

    private static void appendNonSeparator(StringBuilder sb, char c, int pos) {
        if (!(pos == 0 && c == '+') && Character.digit(c, 10) == -1 && PhoneNumberUtils.isNonSeparator(c)) {
            sb.append(c);
        }
    }

    public static boolean isServiceNumber(String address) {
        if (TextUtils.isEmpty(address)) {
            return false;
        }
        PhoneNumber phoneNumber = PhoneNumber.parse(address);
        if (phoneNumber.isServiceNumber()) {
            return true;
        }
        if (phoneNumber.isChineseNumber() && address.startsWith(BANK_CATEGORY_NUMBER_PREFIX_106)) {
            return true;
        }
        return false;
    }

    private static void registerContentObserver(ContentResolver cr, Uri uri, boolean notifyForDescendents, ContentObserver observer, int userHandle) {
        try {
            Method method = ContentResolver.class.getDeclaredMethod("registerContentObserver", new Class[]{Uri.class, Boolean.TYPE, ContentObserver.class, Integer.TYPE});
            method.setAccessible(true);
            method.invoke(cr, new Object[]{uri, Boolean.valueOf(notifyForDescendents), observer, Integer.valueOf(userHandle)});
        } catch (Exception e) {
            Log.w(TAG, "invoke registerContentObserver failed", e);
        }
    }
}
