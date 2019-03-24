package miui.upnp.typedef.device.urn;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Urn implements Parcelable {
    public static final Creator<Urn> CREATOR = new Creator<Urn>() {
        public Urn createFromParcel(Parcel in) {
            return new Urn(in);
        }

        public Urn[] newArray(int size) {
            return new Urn[size];
        }
    };
    private static final String URN = "urn";
    private String domain;
    private String subType;
    private Type type = Type.UNDEFINED;
    private String version;

    public enum Type {
        UNDEFINED,
        DEVICE,
        SERVICE;
        
        private static final String STR_DEVICE = "device";
        private static final String STR_SERVICE = "service";
        private static final String STR_UNDEFINED = "undefined";

        public static Type retrieveType(String value) {
            if (value.equals(STR_UNDEFINED)) {
                return UNDEFINED;
            }
            if (value.equals("device")) {
                return DEVICE;
            }
            if (value.equals(STR_SERVICE)) {
                return SERVICE;
            }
            return UNDEFINED;
        }

        public String toString() {
            switch (this) {
                case DEVICE:
                    return "device";
                case SERVICE:
                    return STR_SERVICE;
                default:
                    return STR_UNDEFINED;
            }
        }
    }

    public static Urn create(String domain, Type type, String subType, String version) {
        Urn thiz = new Urn();
        thiz.domain = domain;
        thiz.type = type;
        thiz.subType = subType;
        thiz.version = version;
        return thiz;
    }

    public static Urn create(String domain, Type type, String subType, float version) {
        return create(domain, type, subType, String.valueOf(version));
    }

    public static Urn create(String domain, Type type, String subType, int version) {
        return create(domain, type, subType, String.valueOf(version));
    }

    public boolean parse(String string) {
        String[] a = string.split(":");
        if (a.length != 5 || !a[0].equals(URN)) {
            return false;
        }
        this.domain = a[1];
        this.type = Type.retrieveType(a[2]);
        this.subType = a[3];
        try {
            this.version = a[4];
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public String getDomain() {
        return this.domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getSubType() {
        return this.subType;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String toString() {
        return String.format("%s:%s:%s:%s:%s", new Object[]{URN, this.domain, this.type.toString(), this.subType, this.version});
    }

    public int hashCode() {
        int i = 0;
        int result = 31 * ((31 * ((31 * ((31 * 1) + (this.domain == null ? 0 : this.domain.hashCode()))) + (this.type == null ? 0 : this.type.hashCode()))) + (this.subType == null ? 0 : this.subType.hashCode()));
        if (this.version != null) {
            i = this.version.hashCode();
        }
        return result + i;
    }

    public boolean equals(Object obj) {
        boolean ret = false;
        if (obj != null && (obj instanceof Urn)) {
            Urn other = (Urn) obj;
            if (this.domain == null) {
                if (other.domain != null) {
                    return false;
                }
            } else if (!this.domain.equals(other.domain)) {
                return false;
            }
            if (this.type != other.type) {
                return false;
            }
            if (this.subType == null) {
                if (other.subType != null) {
                    return false;
                }
            } else if (!this.subType.equals(other.subType)) {
                return false;
            }
            if (!this.version.equals(other.version)) {
                return false;
            }
            ret = true;
        }
        return ret;
    }

    public Urn(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        parse(in.readString());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(toString());
    }
}
