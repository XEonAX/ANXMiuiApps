package com.miui.gallery.cloud.baby;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.Calendar;
import java.util.TimeZone;
import org.json.JSONObject;

public final class BabyInfo implements Parcelable {
    public static final Creator<BabyInfo> CREATOR = new Creator<BabyInfo>() {
        public BabyInfo createFromParcel(Parcel source) {
            boolean z = true;
            String readString = source.readString();
            String readString2 = source.readString();
            String readString3 = source.readString();
            String readString4 = source.readString();
            String readString5 = source.readString();
            String readString6 = source.readString();
            if (source.readInt() != 1) {
                z = false;
            }
            return new BabyInfo(readString, readString2, readString3, readString4, readString5, readString6, z, source.readInt());
        }

        public BabyInfo[] newArray(int size) {
            return new BabyInfo[size];
        }
    };
    private static final int[] sDaysInMon = new int[]{31, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30};
    public boolean mAutoupdate;
    public String mBirthday;
    public int mLocalFlag;
    public String mNickName;
    public String mPeopleId;
    public String mRelation;
    public String mRelationText;
    public String mSex;

    public BabyInfo(String nickName, String birthday, String sex, String relation, String relationText, String peopleId, boolean autoupdate, int localFlag) {
        this.mNickName = nickName;
        this.mBirthday = birthday;
        this.mSex = sex;
        this.mRelation = relation;
        this.mRelationText = relationText;
        this.mPeopleId = peopleId;
        this.mAutoupdate = autoupdate;
        this.mLocalFlag = localFlag;
    }

    public static BabyInfo fromJSON(String babyInfoJson) {
        if (!TextUtils.isEmpty(babyInfoJson)) {
            try {
                JSONObject jo = new JSONObject(babyInfoJson);
                return new BabyInfo(jo.optString(BabyAlbumUtils.BABY_ALBUM_NAME), jo.optString(BabyAlbumUtils.BABY_ALBUM_BIRTHDAY), jo.optString(BabyAlbumUtils.BABY_GENDER), jo.optString(BabyAlbumUtils.BABY_RELATION), jo.optString(BabyAlbumUtils.BABY_RELATION_TEXT), jo.optString(BabyAlbumUtils.BABY_PEOPLE_ID), jo.optBoolean(BabyAlbumUtils.BABY_AUTO_UPDATE), jo.optInt("localFlag"));
            } catch (Object e) {
                Log.e("BabyInfo", "failed to parse baby info", e);
            }
        }
        return null;
    }

    public boolean equals(Object rhs) {
        if (this == rhs) {
            return true;
        }
        if (!(rhs instanceof BabyInfo)) {
            return false;
        }
        BabyInfo another = (BabyInfo) rhs;
        if (TextUtils.equals(this.mNickName, another.mNickName) && TextUtils.equals(this.mBirthday, another.mBirthday) && TextUtils.equals(this.mSex, another.mSex) && TextUtils.equals(this.mRelation, another.mRelation) && TextUtils.equals(this.mRelationText, another.mRelationText) && TextUtils.equals(this.mPeopleId, another.mPeopleId) && this.mAutoupdate == another.mAutoupdate && this.mLocalFlag == another.mLocalFlag) {
            return true;
        }
        return false;
    }

    public String toJSON() {
        StringBuilder bd = new StringBuilder();
        bd.append("{");
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_ALBUM_NAME);
        bd.append("':");
        bd.append("'");
        bd.append(this.mNickName);
        bd.append("',");
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_GENDER);
        bd.append("':");
        bd.append("'");
        bd.append(this.mSex);
        bd.append("',");
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_RELATION);
        bd.append("':");
        bd.append("'");
        bd.append(this.mRelation);
        bd.append("',");
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_RELATION_TEXT);
        bd.append("':");
        bd.append("'");
        bd.append(this.mRelationText);
        bd.append("',");
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_ALBUM_BIRTHDAY);
        bd.append("':");
        bd.append("'");
        bd.append(this.mBirthday);
        bd.append("',");
        if (!TextUtils.isEmpty(this.mPeopleId)) {
            bd.append("'");
            bd.append(BabyAlbumUtils.BABY_PEOPLE_ID);
            bd.append("':");
            bd.append("'");
            bd.append(this.mPeopleId);
            bd.append("',");
        }
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_AUTO_UPDATE);
        bd.append("':");
        bd.append(this.mAutoupdate);
        bd.append(",");
        bd.append("'");
        bd.append("localFlag");
        bd.append("':");
        bd.append(this.mLocalFlag);
        bd.append(",");
        bd.append("'");
        bd.append(nexExportFormat.TAG_FORMAT_TYPE);
        bd.append("':");
        bd.append("'");
        bd.append(BabyAlbumUtils.BABY_BABY);
        bd.append("'}");
        return bd.toString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mNickName);
        dest.writeString(this.mBirthday);
        dest.writeString(this.mSex);
        dest.writeString(this.mRelation);
        dest.writeString(this.mRelationText);
        dest.writeString(this.mPeopleId);
        dest.writeInt(this.mAutoupdate ? 1 : 0);
        dest.writeInt(this.mLocalFlag);
    }

    public static int[] splitBirthDay(BabyInfo babyInfo) {
        if (!(babyInfo == null || TextUtils.isEmpty(babyInfo.mBirthday))) {
            String[] days = babyInfo.mBirthday.split("-");
            if (days == null || days.length != 3) {
                Log.e("BabyInfo", "illegal birthday: " + babyInfo.mBirthday);
            } else {
                String birthYearStr = days[0];
                String birthMonStr = days[1];
                String birthDayStr = days[2];
                try {
                    int birthYear = Integer.valueOf(birthYearStr).intValue();
                    int birthMon = Integer.valueOf(birthMonStr).intValue();
                    int birthDay = Integer.valueOf(birthDayStr).intValue();
                    return new int[]{birthYear, birthMon, birthDay};
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    Log.e("BabyInfo", "illegal birthday: " + babyInfo.mBirthday);
                }
            }
        }
        return null;
    }

    public static int[] getAge(long toThisDay, int birthdayYear, int birthdayMonth, int birthdayDay) {
        int[] days = getCurrentYearMonthDay(toThisDay);
        int year = days[0];
        int month = days[1];
        int day = days[2];
        int diffYear = 0;
        int diffMonth = 0;
        int diffDay = day - birthdayDay;
        if (diffDay < 0) {
            diffMonth = 0 - 1;
            diffDay = (sDaysInMon[((month - 1) + 12) % 12] + day) - birthdayDay;
            if (year % 4 == 0 && month - 1 == 2) {
                diffDay++;
            }
        }
        diffMonth += month - birthdayMonth;
        if (diffMonth < 0) {
            diffYear = 0 - 1;
            diffMonth += 12;
        }
        diffYear += year - birthdayYear;
        return new int[]{diffYear, diffMonth, diffDay};
    }

    private static int[] getCurrentYearMonthDay(long millis) {
        int[] result = new int[3];
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.setTimeInMillis(millis);
        int year = calendar.get(1);
        int month = calendar.get(2) + 1;
        int day = calendar.get(5);
        result[0] = year;
        result[1] = month;
        result[2] = day;
        return result;
    }
}
