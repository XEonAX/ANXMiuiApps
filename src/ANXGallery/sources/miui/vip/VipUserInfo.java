package miui.vip;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class VipUserInfo implements Parcelable {
    public static final Creator<VipUserInfo> CREATOR = new Creator<VipUserInfo>() {
        public VipUserInfo createFromParcel(Parcel source) {
            return VipUserInfo.readFromParcel(source);
        }

        public VipUserInfo[] newArray(int size) {
            return new VipUserInfo[size];
        }
    };
    public String badgeTxt = "";
    public int dailyTaskLimit;
    public int hasNewAwards;
    public int level;
    public String levelTxt = "";
    public long registerTime;
    public int score;
    public int scoreToNextLevel;
    public String taskTxt = "";
    public String timezone;
    public int todayCompleteTaskCount;
    public int todayScore;
    public int totalScore;
    public int userId;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.userId);
        dest.writeInt(this.level);
        dest.writeInt(this.score);
        dest.writeInt(this.scoreToNextLevel);
        dest.writeInt(this.totalScore);
        dest.writeInt(this.todayScore);
        dest.writeInt(this.dailyTaskLimit);
        dest.writeInt(this.todayCompleteTaskCount);
        dest.writeString(this.timezone);
        dest.writeString(this.levelTxt);
        dest.writeString(this.taskTxt);
        dest.writeString(this.badgeTxt);
        dest.writeLong(this.registerTime);
        dest.writeInt(this.hasNewAwards);
    }

    public static VipUserInfo readFromParcel(Parcel source) {
        VipUserInfo user = new VipUserInfo();
        user.userId = source.readInt();
        user.level = source.readInt();
        user.score = source.readInt();
        user.scoreToNextLevel = source.readInt();
        user.totalScore = source.readInt();
        user.todayScore = source.readInt();
        user.dailyTaskLimit = source.readInt();
        user.todayCompleteTaskCount = source.readInt();
        user.timezone = source.readString();
        user.levelTxt = source.readString();
        user.taskTxt = source.readString();
        user.badgeTxt = source.readString();
        user.registerTime = source.readLong();
        user.hasNewAwards = source.readInt();
        return user;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("VipUserInfo{userId=");
        stringBuilder.append(this.userId);
        stringBuilder.append(", level=");
        stringBuilder.append(this.level);
        stringBuilder.append(", score=");
        stringBuilder.append(this.score);
        stringBuilder.append(", scoreToNextLevel=");
        stringBuilder.append(this.scoreToNextLevel);
        stringBuilder.append(", totalScore=");
        stringBuilder.append(this.totalScore);
        stringBuilder.append(", todayScore=");
        stringBuilder.append(this.todayScore);
        stringBuilder.append(", dailyTaskLimit=");
        stringBuilder.append(this.dailyTaskLimit);
        stringBuilder.append(", todayCompleteTaskCount=");
        stringBuilder.append(this.todayCompleteTaskCount);
        stringBuilder.append(", timezone='");
        stringBuilder.append(this.timezone);
        stringBuilder.append('\'');
        stringBuilder.append(", levelTxt='");
        stringBuilder.append(this.levelTxt);
        stringBuilder.append('\'');
        stringBuilder.append(", taskTxt='");
        stringBuilder.append(this.taskTxt);
        stringBuilder.append('\'');
        stringBuilder.append(", badgeTxt='");
        stringBuilder.append(this.badgeTxt);
        stringBuilder.append('\'');
        stringBuilder.append(", registerTime=");
        stringBuilder.append(this.registerTime);
        stringBuilder.append(", hasNewAwards=");
        stringBuilder.append(this.hasNewAwards);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
