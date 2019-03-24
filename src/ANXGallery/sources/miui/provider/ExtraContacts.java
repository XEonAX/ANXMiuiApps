package miui.provider;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.UserHandle;
import android.provider.BaseColumns;
import android.provider.ContactsContract;
import android.provider.ContactsContract.Data;
import android.provider.SyncStateContract.Columns;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.CallerInfo;
import com.android.internal.telephony.PhoneConstants;
import com.miui.system.internal.R;
import java.util.ArrayList;
import java.util.Collections;
import miui.os.C0015Build;
import miui.telephony.SubscriptionManager;

public class ExtraContacts {
    private static final String LOG_TAG = "ExtraContacts";

    public static final class AccountSyncState implements Columns {
        public static final Uri CONTENT_URI = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "account_sync_state");
        public static final String PHONE_NUMBER = "number";
        public static final String WATER_MARK = "water_mark";
    }

    public static final class AnimalSign {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/animalSign";
        public static final int TYPE_DOG = 11;
        public static final int TYPE_DRAGON = 5;
        public static final int TYPE_GOAT = 8;
        public static final int TYPE_HORSE = 7;
        public static final int TYPE_MONKEY = 9;
        public static final int TYPE_OX = 2;
        public static final int TYPE_PIG = 12;
        public static final int TYPE_RABBIT = 4;
        public static final int TYPE_RAT = 1;
        public static final int TYPE_ROOSTER = 10;
        public static final int TYPE_SNAKE = 6;
        public static final int TYPE_TIGER = 3;
        public static final String VALUE = "data1";

        private AnimalSign() {
        }
    }

    public static final class BloodType {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/bloodType";
        public static final int TYPE_A = 1;
        public static final int TYPE_AB = 3;
        public static final int TYPE_B = 2;
        public static final int TYPE_O = 4;
        public static final String VALUE = "data1";

        private BloodType() {
        }
    }

    public static class Calls {
        public static final String BACKUP_PARAM = "backup";
        public static final String CLOUD_ANTISPAM_TYPE = "cloud_antispam_type";
        public static final int CLOUD_ANTISPAM_TYPE_CUSTOM = 3;
        public static final int CLOUD_ANTISPAM_TYPE_MAKRED = 2;
        public static final int CLOUD_ANTISPAM_TYPE_NONE = 0;
        public static final int CLOUD_ANTISPAM_TYPE_SP = 1;
        public static final String CLOUD_ANTISPAM_TYPE_TAG = "cloud_antispam_type_tag";
        public static final String CONTACT_ID = "contact_id";
        public static final Uri CONTENT_CONVERSATION_URI = Uri.parse("content://call_log/calls_conversation");
        public static final Uri CONTENT_QUERY_URI = Uri.parse("content://call_log/calls_query");
        public static final Uri CONTENT_URI_WITH_BACKUP = android.provider.CallLog.Calls.CONTENT_URI.buildUpon().appendQueryParameter(BACKUP_PARAM, "true").build();
        public static final String DEFAULT_SORT_ORDER = "date DESC";
        public static final String FEATURES = "features";
        public static final int FEATURES_NONE = 0;
        public static final int FEATURES_VIDEO = 1;
        public static final String FIREWALL_TYPE = "firewalltype";
        public static final String FORWARDED_CALL = "forwarded_call";
        public static final int INCOMING_FORWARDING_CALL = 1;
        public static final int INCOMING_MUTE_TYPE = 2;
        public static final int INCOMING_NO_FIREWALL_TYPE = 0;
        public static final int INCOMING_REJECTED_TYPE = 1;
        public static final String MARK_DELETED = "mark_deleted";
        public static final String MISSED_COUNT = "missed_count";
        public static final String MY_NUMBER = "my_number";
        public static final int NEWCONTACT_TYPE = 10;
        public static final String NUMBER_TYPE = "number_type";
        public static final int NUMBER_TYPE_NORMAL = 0;
        public static final int NUMBER_TYPE_YELLOWPAGE = 1;
        public static final String PHONE_ACCOUNT_ADDRESS = "phone_account_address";
        public static final String PHONE_ACCOUNT_COMPONENT_NAME = "subscription_component_name";
        public static final String PHONE_ACCOUNT_ID = "subscription_id";
        public static final String PHONE_CALL_TYPE = "phone_call_type";
        public static final int PHONE_CALL_TYPE_CALLBACK = 2;
        public static final int PHONE_CALL_TYPE_CONFERENCE = 3;
        public static final int PHONE_CALL_TYPE_NONE = 0;
        public static final int PHONE_CALL_TYPE_VOIP = 1;
        public static final int REJECTED_TYPE = 5;
        public static final String SHADOW_AUTHORITY = "call_log_shadow";
        public static final Uri SHADOW_CONTENT_URI = Uri.parse("content://call_log_shadow/calls");
        public static final String SIM_ID = "simid";
        public static final String SOURCE_ID = "source_id";
        public static final String SYNC1 = "sync_1";
        public static final String SYNC2 = "sync_2";
        public static final String SYNC3 = "sync_3";

        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall) {
            return addCall(ci, context, number, presentation, callType, start, duration, firewallType, forwardedCall, (long) SubscriptionManager.INVALID_SLOT_ID, 0, 0);
        }

        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall, long simInfoId) {
            return addCall(ci, context, number, presentation, callType, start, duration, firewallType, forwardedCall, simInfoId, 0, 0);
        }

        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall, long simInfoId, long phoneCallType) {
            return addCall(ci, context, number, presentation, callType, start, duration, firewallType, forwardedCall, simInfoId, phoneCallType, 0);
        }

        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall, long simInfoId, long phoneCallType, long feature) {
            return addCall(ci, context, number, presentation, callType, start, duration, firewallType, forwardedCall, simInfoId, phoneCallType, feature, false, null, null, null);
        }

        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall, long simInfoId, long phoneCallType, long feature, boolean addForAllUsers) {
            return addCall(ci, context, number, presentation, callType, start, duration, firewallType, forwardedCall, simInfoId, phoneCallType, feature, addForAllUsers, null, null, null);
        }

        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall, long simInfoId, long phoneCallType, long feature, boolean addForAllUsers, String accountComponentString, String accountId, String accountAddress) {
            return addCall(ci, context, number, presentation, callType, start, duration, firewallType, forwardedCall, simInfoId, phoneCallType, feature, addForAllUsers, null, accountComponentString, accountId, accountAddress);
        }

        /* JADX WARNING: Missing block: B:22:0x0078, code:
            if (r31 >= 3) goto L_0x007d;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static Uri addCall(CallerInfo ci, Context context, String number, int presentation, int callType, long start, int duration, int firewallType, int forwardedCall, long simInfoId, long phoneCallType, long feature, boolean addForAllUsers, UserHandle userToBeInsertedTo, String accountComponentString, String accountId, String accountAddress) {
            String number2;
            CallerInfo callerInfo = ci;
            int i = presentation;
            int i2 = callType;
            long s = System.currentTimeMillis();
            ContentResolver resolver = context.getContentResolver();
            int numberPresentation = 1;
            if (i == PhoneConstants.PRESENTATION_RESTRICTED) {
                numberPresentation = 2;
            } else if (i == PhoneConstants.PRESENTATION_PAYPHONE) {
                numberPresentation = 4;
            } else if (TextUtils.isEmpty(number) || i == PhoneConstants.PRESENTATION_UNKNOWN) {
                numberPresentation = 3;
            }
            int numberPresentation2 = numberPresentation;
            if (numberPresentation2 != 1) {
                String number3 = "";
                if (callerInfo != null) {
                    callerInfo.name = "";
                }
                number2 = number3;
            } else {
                number2 = number;
            }
            ContentValues values = new ContentValues();
            values.put("number", number2);
            values.put("presentation", Integer.valueOf(numberPresentation2));
            values.put("type", Integer.valueOf(callType));
            values.put("date", Long.valueOf(start));
            values.put("duration", Long.valueOf((long) duration));
            values.put("new", Integer.valueOf(1));
            if (i2 == 3) {
                int i3 = firewallType;
            }
            values.put("is_read", Integer.valueOf(0));
            if (callerInfo != null) {
                values.put("name", callerInfo.name);
                values.put("numbertype", Integer.valueOf(callerInfo.numberType));
                values.put("numberlabel", callerInfo.numberLabel);
            }
            values.put("firewalltype", Integer.valueOf(firewallType));
            values.put("forwarded_call", Integer.valueOf(forwardedCall));
            values.put("simid", Long.valueOf(simInfoId));
            values.put("phone_call_type", Long.valueOf(phoneCallType));
            values.put("features", Long.valueOf(feature));
            values.put(PHONE_ACCOUNT_COMPONENT_NAME, accountComponentString);
            values.put(PHONE_ACCOUNT_ID, accountId);
            values.put(PHONE_ACCOUNT_ADDRESS, accountAddress);
            if (i2 == 3) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("PHONE_NUMBERS_EQUAL(number,");
                stringBuilder.append(DatabaseUtils.sqlEscapeString(number2));
                stringBuilder.append(",0)");
                String selection = stringBuilder.toString();
                numberPresentation = 3;
                Cursor cursor = resolver.query(android.provider.CallLog.Calls.CONTENT_URI, new String[]{"type"}, selection, null, DEFAULT_SORT_ORDER);
                long missedCount = 1;
                if (cursor != null) {
                    while (cursor.moveToNext() && cursor.getInt(0) == numberPresentation) {
                        try {
                            missedCount++;
                        } catch (Throwable th) {
                            cursor.close();
                        }
                    }
                    cursor.close();
                }
                values.put("missed_count", Long.valueOf(missedCount));
            }
            Uri uri = ExtraContacts.addCall(context, android.provider.CallLog.Calls.CONTENT_URI, values, addForAllUsers, userToBeInsertedTo);
            long e = System.currentTimeMillis();
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("add call ");
            stringBuilder2.append(e - s);
            Log.d("T9", stringBuilder2.toString());
            return uri;
        }
    }

    public static final class Characteristic {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/characteristic";
        public static final String VALUE = "data1";

        private Characteristic() {
        }
    }

    public static final class ConferenceCalls {
        public static final String AUTHORITY = "conference_calls";
        public static final Uri AUTHORITY_URI = Uri.parse("content://conference_calls");
        public static final String LIMIT_PARAM_KEY = "limit";
        public static final String OFFSET_PARAM_KEY = "offset";
        public static final String SPLIT_EXPRESSION = ";";

        public static class CallsColumns implements BaseColumns {
            public static final String CONFERENCE_ID = "conference_id";
            public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/conference_calls";
            public static final String CONTENT_TYPE = "vnd.android.cursor.dir/conference_calls";
            public static final Uri CONTENT_URI = Uri.withAppendedPath(ConferenceCalls.AUTHORITY_URI, ConferenceCalls.AUTHORITY);
            public static final String COUNTRY_ISO = "countryiso";
            public static final String DATE = "date";
            public static final String DURATION = "duration";
            public static final String FEATURES = "features";
            public static final String FIREWALL_TYPE = "firewalltype";
            public static final String FORWARDED_CALL = "forwarded_call";
            public static final String MISSED_COUNT = "missed_count";
            public static final String NORMALIZED_NUMBER = "normalized_number";
            public static final String NUMBER = "number";
            public static final String PHONE_CALL_TYPE = "phone_call_type";
            public static final String SIM_ID = "simid";
            public static final String SPONSOR = "isSponsor";
            public static final String TYPE = "type";
        }

        public static class ConferenceColumns implements BaseColumns {
            public static final Uri CONTENT_FILTER_URI = Uri.withAppendedPath(ConferenceCalls.AUTHORITY_URI, "conference_groups/filter");
            public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/conference_groups";
            public static final String CONTENT_TYPE = "vnd.android.cursor.dir/conference_groups";
            public static final Uri CONTENT_URI = Uri.withAppendedPath(ConferenceCalls.AUTHORITY_URI, "conference_groups");
            public static final String DISPLAY_NAME = "display_name";
            public static final String MEMBERS = "members";
            public static final String MEMBERS_COUNT = "members_count";
        }

        public static class MembersColumns implements BaseColumns {
            public static final String CONFERENCE_ID = "group_id";
            public static final String LABEL = "label";
            public static final String NORMALIZED_NUMBER = "normalized_number";
            public static final String NUMBER = "number";
        }

        public static Uri addConferenceCall(Context context, ArrayList<String> numberList, int callType, long start, int duration, int forwardedCall, long simInfoId, long phoneCallType) {
            return addConferenceCall(context, numberList, callType, start, duration, forwardedCall, simInfoId, phoneCallType, false);
        }

        public static Uri addConferenceCall(Context context, ArrayList<String> numberList, int callType, long start, int duration, int forwardedCall, long simInfoId, long phoneCallType, boolean addForAllUsers) {
            String conferenceCallNumber = computeConferenceCallNumber(numberList);
            ContentResolver contentResolver = context.getContentResolver();
            ContentValues values = new ContentValues();
            values.put("number", conferenceCallNumber);
            values.put("type", Integer.valueOf(callType));
            values.put("date", Long.valueOf(start));
            values.put("duration", Integer.valueOf(duration));
            values.put("forwarded_call", Integer.valueOf(forwardedCall));
            values.put("simid", Long.valueOf(simInfoId));
            values.put("phone_call_type", Long.valueOf(phoneCallType));
            if (values.containsKey(CallsColumns.SPONSOR)) {
                int i = callType;
            } else {
                values.put(CallsColumns.SPONSOR, Integer.valueOf(callType == 2 ? 1 : 0));
            }
            return ExtraContacts.addCall(context, CallsColumns.CONTENT_URI, values, addForAllUsers);
        }

        private static String computeConferenceCallNumber(ArrayList<String> numbers) {
            Collections.sort(numbers);
            return TextUtils.join(SPLIT_EXPRESSION, numbers);
        }
    }

    public static final class ConferenceColumns {
        public static final String CONFERENCE_ID = "conference_id";
        public static final String CONFERENCE_MEMBERS_NAME = "conference_members_name";
        public static final String CONFERENCE_NAME = "conference_name";
    }

    public static final class Constellation {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/constellation";
        public static final int TYPE_AQUARIUS = 11;
        public static final int TYPE_ARIES = 1;
        public static final int TYPE_CANCER = 4;
        public static final int TYPE_CAPRICORN = 10;
        public static final int TYPE_GEMINI = 3;
        public static final int TYPE_LEO = 5;
        public static final int TYPE_LIBRA = 7;
        public static final int TYPE_LITHIUM = 14;
        public static final int TYPE_NATRIUM = 13;
        public static final int TYPE_PISCES = 12;
        public static final int TYPE_SAGITTARIUS = 9;
        public static final int TYPE_SCORPION = 8;
        public static final int TYPE_TAURUS = 2;
        public static final int TYPE_VIRGO = 6;
        public static final String VALUE = "data1";

        private Constellation() {
        }
    }

    public interface Contacts {
        public static final String COMPANY = "company";
        public static final String CONTACT_ACCOUNT_TYPE = "contact_account_type";
        public static final Uri CONTENT_ACCOUNT_COUNT_URI = Uri.withAppendedPath(CONTENT_URI, "account_count");
        public static final Uri CONTENT_ACCOUNT_NOT_GROUP_URI = Uri.withAppendedPath(CONTENT_URI, "account_not_group");
        public static final Uri CONTENT_ACCOUNT_URI = Uri.withAppendedPath(CONTENT_URI, "account");
        public static final Uri CONTENT_GROUP_IDS_URI = Uri.withAppendedPath(CONTENT_URI, "group_ids");
        public static final Uri CONTENT_GROUP_ID_URI = Uri.withAppendedPath(CONTENT_URI, MembersColumns.CONFERENCE_ID);
        public static final Uri CONTENT_MIGRAGE_CONTACTS = Uri.withAppendedPath(CONTENT_URI, MIGRATE_CONTACTS_KEY);
        public static final String CONTENT_MULTIPLE_TYPE = "vnd.android.cursor.dir/contact_multiple";
        public static final String CONTENT_PICK_MULTI_TYPE = "vnd.android.cursor.dir/contact_pick_multi";
        public static final String CONTENT_PICK_SINGLE_TYPE = "vnd.android.cursor.dir/contact_pick_single";
        public static final String CONTENT_PREVIEW_CONTACT_TYPE = "vnd.android.cursor.dir/preview_contact";
        public static final Uri CONTENT_RECENT_CONTACTS_URI = Uri.withAppendedPath(CONTENT_URI, "recent_contacts");
        public static final Uri CONTENT_URI = Uri.withAppendedPath(Uri.parse("content://com.android.contacts"), "contacts");
        public static final String CUSTOM_RINGTONE = "custom_ringtone";
        public static final String EXTRAS_STARRED_TOP = "extras_starred_top";
        public static final String FILTER_STRANGER_KEY = "filter_stranger";
        public static final String FILTER_STRANGER_KEY_FILTER = "1";
        public static final String MIGRATE_CONTACTS_KEY = "migrate_contacts";
        public static final String NICKNAME = "nickname";
        public static final String PHONE_NUMBER_COUNT = "number_count";
        public static final String PRIMARY_PHONE_NUMBER = "primary_number";

        public static final class AggregationSuggestions {
            public static final String PARAMETER_MATCH_NAME = "name";

            public static final class Builder {
                private long mContactId;
                private ArrayList<String> mKinds = new ArrayList();
                private int mLimit;
                private ArrayList<String> mValues = new ArrayList();

                public Builder setContactId(long contactId) {
                    this.mContactId = contactId;
                    return this;
                }

                public Builder addParameter(String kind, String value) {
                    if (!TextUtils.isEmpty(value)) {
                        this.mKinds.add(kind);
                        this.mValues.add(value);
                    }
                    return this;
                }

                public Builder setLimit(int limit) {
                    this.mLimit = limit;
                    return this;
                }

                public Uri build() {
                    android.net.Uri.Builder builder = android.provider.ContactsContract.Contacts.CONTENT_URI.buildUpon();
                    builder.appendEncodedPath(String.valueOf(this.mContactId));
                    builder.appendPath("suggestions");
                    if (this.mLimit != 0) {
                        builder.appendQueryParameter(ConferenceCalls.LIMIT_PARAM_KEY, String.valueOf(this.mLimit));
                    }
                    int count = this.mKinds.size();
                    for (int i = 0; i < count; i++) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append((String) this.mKinds.get(i));
                        stringBuilder.append(":");
                        stringBuilder.append((String) this.mValues.get(i));
                        builder.appendQueryParameter("query", stringBuilder.toString());
                    }
                    return builder.build();
                }
            }

            public static final Builder builder() {
                return new Builder();
            }
        }
    }

    public interface DefaultAccount {
        public static final String NAME = "default";
        public static final String TYPE = "com.android.contacts.default";
    }

    public static final class Degree {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/degree";
        public static final String VALUE = "data1";

        private Degree() {
        }
    }

    public static final class EmotionStatus {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/emotionStatus";
        public static final int TYPE_MARRIED = 3;
        public static final int TYPE_SINGLEL = 1;
        public static final int TYPE_UNMARRIED = 2;
        public static final String VALUE = "data1";

        private EmotionStatus() {
        }
    }

    public static final class Gender {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/gender";
        public static final int TYPE_FEMALE = 2;
        public static final int TYPE_MALE = 1;
        public static final String VALUE = "data1";

        private Gender() {
        }
    }

    public static final class Groups {
        public static final String CUSTOM_RINGTONE = "custom_ringtone";
        public static final String GROUP_ORDER = "group_order";
        public static final String SYSTEM_ID_CONTACTS = "Contacts";
        public static final String SYSTEM_ID_COWORKERS = "Coworkers";
        public static final String SYSTEM_ID_FAMILY = "Family";
        public static final String SYSTEM_ID_FRIENDS = "Friends";

        public static String translateGroupName(Context context, String systemId, String title) {
            if (TextUtils.isEmpty(systemId)) {
                return title;
            }
            if (SYSTEM_ID_CONTACTS.equals(systemId)) {
                return context.getString(R.string.group_name_contacts);
            }
            if (SYSTEM_ID_FRIENDS.equals(systemId)) {
                return context.getString(R.string.group_name_friends);
            }
            if (SYSTEM_ID_FAMILY.equals(systemId)) {
                return context.getString(R.string.group_name_family);
            }
            if (SYSTEM_ID_COWORKERS.equals(systemId)) {
                return context.getString(R.string.group_name_coworkers);
            }
            return systemId;
        }
    }

    public static final class Hobby {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/hobby";
        public static final String VALUE = "data1";

        private Hobby() {
        }
    }

    public interface Insert {
        public static final String INSERT_INSTANTLY = "insert_instantly";
        public static final String SIP_ADDRESS = "sip_address";
    }

    public static final class Intents {

        public static final class Insert {
            public static final String ACCOUNT = "com.android.contacts.extra.ACCOUNT";
            public static final String DATA_SET = "com.android.contacts.extra.DATA_SET";
        }

        public static final class UI {
            public static final String FILTER_CONTACTS_ACTION = "com.android.contacts.action.FILTER_CONTACTS";
            public static final String FILTER_TEXT_EXTRA_KEY = "com.android.contacts.extra.FILTER_TEXT";
            public static final String GROUP_NAME_EXTRA_KEY = "com.android.contacts.extra.GROUP";
            public static final String LIST_ALL_CONTACTS_ACTION = "com.android.contacts.action.LIST_ALL_CONTACTS";
            public static final String LIST_CONTACTS_WITH_PHONES_ACTION = "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES";
            public static final String LIST_DEFAULT = "com.android.contacts.action.LIST_DEFAULT";
            public static final String LIST_FREQUENT_ACTION = "com.android.contacts.action.LIST_FREQUENT";
            public static final String LIST_GROUP_ACTION = "com.android.contacts.action.LIST_GROUP";
            public static final String LIST_STARRED_ACTION = "com.android.contacts.action.LIST_STARRED";
            public static final String LIST_STREQUENT_ACTION = "com.android.contacts.action.LIST_STREQUENT";
            public static final String TITLE_EXTRA_KEY = "com.android.contacts.extra.TITLE_EXTRA";
        }
    }

    public static final class Interest {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/interest";
        public static final int TYPE_BOY = 2;
        public static final int TYPE_FRIENDS = 3;
        public static final int TYPE_GIRL = 1;
        public static final String VALUE = "data1";

        private Interest() {
        }
    }

    public static final class LunarBirthday {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/lunarBirthday";
        public static final String VALUE = "data1";

        private LunarBirthday() {
        }
    }

    public interface Nickname {
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/nickname";
        public static final Uri CONTENT_URI = Uri.withAppendedPath(Data.CONTENT_URI, "nickname");
    }

    public interface Phone {
        public static final String COMPANY = "company";
        public static final String NAMES = "names";
        public static final String NICKNAME = "nickname";
        public static final String NUMBERS = "numbers";
        public static final String PHONE_NUMBER_COUNT = "number_count";
        public static final String PRIMARY_PHONE_NUMBER = "primary_number";
    }

    public interface Preferences {
        public static final String CHECK_UNSYNCHRONIZED_ACCOUNTS = "android.contacts.CHECK_UNSYNCHRONIZED_ACCOUNTS";
        public static final String DISPLAY_SIM_CONTACS = "android.contacts.display_sim_contacs";
        public static final int DISPLAY_SIM_CONTACS_FALSE = 0;
        public static final int DISPLAY_SIM_CONTACS_TRUE = 1;
        public static final int FREQUENCY_NONE = 3;
        public static final int FREQUENCY_THREE_DAYS = 1;
        public static final int FREQUENCY_WEEKLY = 2;
    }

    public interface ProviderStatus {
        public static final String DATA1 = "data1";
        public static final int STATUS_CHANGING_LOCALE = 3;
        public static final int STATUS_NO_ACCOUNTS_NO_CONTACTS = 4;
        public static final int STATUS_UPGRADE_OUT_OF_MEMORY = 2;
        public static final int STATUS_UPGRADING = 1;
    }

    public interface RawContacts {
        public static final String NAME_VERIFIED = "name_verified";
        public static final String SORT_KEY_CUSTOM = "sort_key_custom";
    }

    public static final class Schools {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/schools";
        public static final String TYPE = "data2";
        public static final int TYPE_HIGHSCHOOL = 1;
        public static final int TYPE_UNIVERSITY = 2;
        public static final String VALUE = "data1";

        private Schools() {
        }
    }

    public static class SimAccount {
        public static final String ACTION_CLEAR_SIM_CONTACTS = "com.android.contacts.intent.clear_sim_contacts";
        public static final String ACTION_SYNC_SIM_CONTACTS = "com.android.contacts.intent.sync_sim_contacts";
        public static final String NAME = "SIM";
        public static final String SIM_ANR = "anr";
        public static final String SIM_EMAILS = "emails";
        public static final String SIM_ID = "_id";
        public static final String SIM_NEW_ANR = "newAnr";
        public static final String SIM_NEW_EMAILS = "newEmails";
        public static final String SIM_NEW_NUMBER = "newNumber";
        public static final String SIM_NEW_TAG = "newTag";
        public static final String SIM_NUMBER = "number";
        public static final String SIM_TAG = "tag";
        public static final String TYPE = "com.android.contacts.sim";
        public static final String URI_ADN = "content://icc/adn";
        public static final String URI_ADN_ISREADY = "content://icc/isphonebookready";
        public static final String URI_ADN_ISUSIM = "content://icc/isusimphonebook";
        public static final String URI_ADN_STORAGE = "content://icc/adnstroage";
        public static final String URI_AND_LASTERROR = "content://icc/lasterror";
        public static final String URI_FREE_ADN = "content://icc/freeadn";
    }

    public static final class SmartDialer implements BaseColumns {
        public static final String CALL_COUNT = "call_count";
        public static final String CALL_DATE = "call_date";
        public static final String CALL_DURATION = "call_duration";
        public static final String CALL_TYPE = "call_type";
        public static final String CLOUD_ANTISPAM_TYPE = "cloud_antispam_type";
        public static final String CLOUD_ANTISPAM_TYPE_TAG = "cloud_antispam_type_tag";
        public static final String CONTACT_ID = "contact_id";
        public static final int CONTACT_SP_DIVIDER_ID = -99;
        public static final Uri CONTENT_BUILD_YELLOWPAGE_T9_URI = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "build_yellowpage_t9_index");
        public static final Uri CONTENT_REBUILDT9_URI = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "rebuild_t9_index");
        public static final Uri CONTENT_URI = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "search_t9");
        public static final String COUNTRY_ISO = "country_iso";
        public static final int CREATE_CONTACT_TAG = -7;
        public static final int CREATE_OR_EDIT_CONTACT_TAG = -6;
        public static final String CREDIT_IMG = "credit_img";
        public static final String DATA_ID = "data_id";
        public static final String DATA_TAG = "data_tag";
        public static final String EXTRA_CONTACT_SP_DIVIDER_POS = "contact_sp_divider_pos_in_t9_cursor";
        public static final String FEATURES = "features";
        public static final String FIREWALL_TYPE = "firewall_type";
        public static final String FORWARDED_CALL = "forwarded_call";
        public static final int INFORMATION_ONLY_TAG = -8;
        public static final String IS_NEW = "is_new";
        public static final String MISSED_COUNT = "missed_count";
        public static final String NAME = "name";
        public static final String NORMALIZED_NUMBER = "normalized_number";
        public static final String NUMBER = "number";
        public static final String NUMBER_TYPE = "number_type";
        public static final String PHONE_CALL_TYPE = "phone_call_type";
        public static final String PHOTO_ID = "photo_id";
        public static final int SEARCH_THE_YELLOWPAGE_ID = -98;
        public static final int SEARCH_THE_YELLOWPAGE_TAG = -10;
        public static final int SEND_SMS_TAG = -9;
        public static final String SIM_ID = "sim_id";
        public static final int SP_CONTACT_START_ID = -100;
        public static final int VIDEO_CALL_TAG = -11;
        public static final String VOICEMAIL_URI = "voicemail_uri";
    }

    public interface T9LookupColumns {
        public static final String CONTACT_ID = "contact_id";
        public static final String CREDIT_IMG = "credit_img";
        public static final String DATA = "data";
        public static final String DATA_ID = "data_id";
        public static final String DATA_TAG = "data_tag";
        public static final String DISPLAY_NAME = "display_name";
        public static final String DISPLAY_STRING = "display_string";
        public static final String KEY_TYPE = "key_type";
        public static final String MATCH_DETAIL = "match_detail";
        public static final String MATCH_LEVEL = "match_level";
        public static final String NORMALIZED_DATA = "normalized_data";
        public static final String PHOTO_ID = "photo_id";
        public static final String RAW_CONTACT_ID = "raw_contact_id";
        public static final String T9_KEY = "t9_key";
        public static final String TIMES_CONTACTED = "times_contacted";
    }

    public static final class T9LookupType {
        public static final int NAME = 2;
        public static final int NUMBER = 0;
        public static final int PINYIN = 1;
    }

    public static final class T9MatchLevel {
        public static final int FULLNAME = 3;
        public static final int NUMBER = 0;
        public static final int PARTIAL = 1;
        public static final int PINYIN = 2;
    }

    public static class T9Query {
        public static final int CLOUD_ANTISPAM_TYPE = 20;
        public static final int CLOUD_ANTISPAM_TYPE_TAG = 21;
        public static final String[] COLUMNS = new String[]{"_id", "contact_id", "name", "number", "photo_id", SmartDialer.CALL_COUNT, SmartDialer.IS_NEW, SmartDialer.CALL_TYPE, SmartDialer.CALL_DATE, SmartDialer.CALL_DURATION, "missed_count", T9LookupColumns.KEY_TYPE, T9LookupColumns.MATCH_DETAIL, SmartDialer.FIREWALL_TYPE, "forwarded_call", T9LookupColumns.DISPLAY_STRING, SmartDialer.COUNTRY_ISO, SmartDialer.VOICEMAIL_URI, "normalized_number", "data_id", "cloud_antispam_type", "cloud_antispam_type_tag", "data_tag", "number_type", "sim_id", "phone_call_type", "features", "credit_img"};
        public static final String[] COLUMNS_WITH_CONFERENCE = new String[]{"_id", "contact_id", "name", "number", "photo_id", SmartDialer.CALL_COUNT, SmartDialer.IS_NEW, SmartDialer.CALL_TYPE, SmartDialer.CALL_DATE, SmartDialer.CALL_DURATION, "missed_count", T9LookupColumns.KEY_TYPE, T9LookupColumns.MATCH_DETAIL, SmartDialer.FIREWALL_TYPE, "forwarded_call", T9LookupColumns.DISPLAY_STRING, SmartDialer.COUNTRY_ISO, SmartDialer.VOICEMAIL_URI, "normalized_number", "data_id", "cloud_antispam_type", "cloud_antispam_type_tag", "data_tag", "number_type", "sim_id", "phone_call_type", "features", "credit_img", "conference_id", ConferenceColumns.CONFERENCE_NAME, ConferenceColumns.CONFERENCE_MEMBERS_NAME};
        public static final int CONFERENCE_ID = 28;
        public static final int CONFERENCE_MEMBERS_NAME = 30;
        public static final int CONFERENCE_NAME = 29;
        public static final int CONTACT_ID = 1;
        public static final int COUNT = 5;
        public static final int COUNTRY_ISO = 16;
        public static final int CREDIT_IMG = 27;
        public static final int DATA_ID = 19;
        public static final int DATA_TAG = 22;
        public static final int DATE = 8;
        public static final int DURATION = 9;
        public static final int FEATURES = 26;
        public static final int FIREWALL_TYPE = 13;
        public static final int FORWARDED_CALL = 14;
        public static final int MISSED_COUNT = 10;
        public static final int NAME = 2;
        public static final int NEW = 6;
        public static final int NORMALIZED_NUMBER = 18;
        public static final int NUMBER = 3;
        public static final int NUMBER_TYPE = 23;
        public static final int PHONE_CALL_TYPE = 25;
        public static final int PHOTO_ID = 4;
        public static final int SIM_ID = 24;
        public static final int T9DISPLAY_STRING = 15;
        public static final int T9KEY_TYPE = 11;
        public static final int T9MATCH_DETAIL = 12;
        public static final int TYPE = 7;
        public static final int VOICEMAIL_URI = 17;
        public static final int _ID = 0;
    }

    public interface UI {
        public static final String GROUP_ID_EXTRA_KEY = "com.android.contacts.extra.GROUP_ID";
    }

    public static final class USimAccount extends SimAccount {
        public static final String NAME = "USIM";
        public static final String TYPE = "com.android.contacts.usim";
    }

    public static final class XiaomiId {
        public static final String CONTENT_ITEM_TYPE = "vnd.com.miui.cursor.item/xiaomiId";
        public static final String VALUE = "data1";

        private XiaomiId() {
        }
    }

    protected static Uri addCall(Context context, Uri insertUri, ContentValues values, boolean addForAllUsers) {
        return addCall(context, insertUri, values, addForAllUsers, null);
    }

    protected static Uri addCall(Context context, Uri insertUri, ContentValues values, boolean addForAllUsers, UserHandle userToBeInsertedTo) {
        if (C0015Build.IS_MIUI) {
            return CallLog.addCall(context, insertUri, values, addForAllUsers, userToBeInsertedTo);
        }
        return null;
    }
}
