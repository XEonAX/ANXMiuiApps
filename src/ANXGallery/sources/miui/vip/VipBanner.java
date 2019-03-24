package miui.vip;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class VipBanner implements Parcelable {
    public static final Creator<VipBanner> CREATOR = new Creator<VipBanner>() {
        public VipBanner createFromParcel(Parcel source) {
            return VipBanner.readFromParcel(source);
        }

        public VipBanner[] newArray(int size) {
            return new VipBanner[size];
        }
    };
    public String action;
    public String extraParams;
    public String icon;
    public long id;
    public String info;
    public String name;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.id);
        dest.writeString(this.icon);
        dest.writeString(this.name);
        dest.writeString(this.info);
        dest.writeString(this.action);
        dest.writeString(this.extraParams);
    }

    public static VipBanner readFromParcel(Parcel source) {
        VipBanner banner = new VipBanner();
        banner.id = source.readLong();
        banner.icon = source.readString();
        banner.name = source.readString();
        banner.info = source.readString();
        banner.action = source.readString();
        banner.extraParams = source.readString();
        return banner;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("VipBanner{id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", icon='");
        stringBuilder.append(this.icon);
        stringBuilder.append('\'');
        stringBuilder.append(", name='");
        stringBuilder.append(this.name);
        stringBuilder.append('\'');
        stringBuilder.append(", info='");
        stringBuilder.append(this.info);
        stringBuilder.append('\'');
        stringBuilder.append(", action='");
        stringBuilder.append(this.action);
        stringBuilder.append('\'');
        stringBuilder.append(", extraParams='");
        stringBuilder.append(this.extraParams);
        stringBuilder.append('\'');
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
