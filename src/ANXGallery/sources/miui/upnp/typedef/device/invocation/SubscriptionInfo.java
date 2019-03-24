package miui.upnp.typedef.device.invocation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;
import miui.upnp.typedef.device.DiscoveryType;
import miui.upnp.typedef.field.FieldList;

public class SubscriptionInfo implements Parcelable {
    public static final Creator<SubscriptionInfo> CREATOR = new Creator<SubscriptionInfo>() {
        public SubscriptionInfo createFromParcel(Parcel in) {
            return new SubscriptionInfo(in);
        }

        public SubscriptionInfo[] newArray(int size) {
            return new SubscriptionInfo[size];
        }
    };
    private List<DiscoveryType> discoveryTypes = new ArrayList();
    private FieldList fields = new FieldList();

    public void setDiscoveryTypes(List<DiscoveryType> discoveryTypes) {
        this.discoveryTypes = discoveryTypes;
    }

    public List<DiscoveryType> getDiscoveryTypes() {
        return this.discoveryTypes;
    }

    public String getHost() {
        return String.format("%s:%d", new Object[]{getHostAddress(), Integer.valueOf(getHostPort())});
    }

    public String getFullEventSubUrl() {
        return String.format("http://%s:%d%s", new Object[]{getHostAddress(), Integer.valueOf(getHostPort()), getEventSubUrl()});
    }

    public String getHostAddress() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.HostAddress);
    }

    public boolean setHostAddress(String address) {
        return this.fields.setValue(SubscriptionInfoDefinition.HostAddress, (Object) address);
    }

    public int getHostPort() {
        return ((Integer) this.fields.getValue(SubscriptionInfoDefinition.HostPort)).intValue();
    }

    public boolean setHostPort(int port) {
        return this.fields.setValue(SubscriptionInfoDefinition.HostPort, Integer.valueOf(port));
    }

    public String getDeviceId() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.DeviceId);
    }

    public boolean setDeviceId(String deviceId) {
        return this.fields.setValue(SubscriptionInfoDefinition.DeviceId, (Object) deviceId);
    }

    public String getServiceId() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.ServiceId);
    }

    public boolean setServiceId(String id) {
        return this.fields.setValue(SubscriptionInfoDefinition.ServiceId, (Object) id);
    }

    public String getEventSubUrl() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.EventSubUrl);
    }

    public boolean setEventSubUrl(String url) {
        return this.fields.setValue(SubscriptionInfoDefinition.EventSubUrl, (Object) url);
    }

    public String getSubscriptionId() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.SubscriptionId);
    }

    public boolean setSubscriptionId(String id) {
        return this.fields.setValue(SubscriptionInfoDefinition.SubscriptionId, (Object) id);
    }

    public boolean isSubscribed() {
        return ((Boolean) this.fields.getValue(SubscriptionInfoDefinition.Subscribed)).booleanValue();
    }

    public boolean setSubscribed(boolean subscribed) {
        return this.fields.setValue(SubscriptionInfoDefinition.Subscribed, Boolean.valueOf(subscribed));
    }

    public int getTimeout() {
        return ((Integer) this.fields.getValue(SubscriptionInfoDefinition.Timeout)).intValue();
    }

    public boolean setTimeout(int timeout) {
        return this.fields.setValue(SubscriptionInfoDefinition.Timeout, Integer.valueOf(timeout));
    }

    public String getSessionId() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.SessionId);
    }

    public boolean setSessionId(String sessionId) {
        return this.fields.setValue(SubscriptionInfoDefinition.SessionId, (Object) sessionId);
    }

    public String getCallbackUrl() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.CallbackUrl);
    }

    public boolean setCallbackUrl(String callbackUrl) {
        return this.fields.setValue(SubscriptionInfoDefinition.CallbackUrl, (Object) callbackUrl);
    }

    public String getCpAddress() {
        return (String) this.fields.getValue(SubscriptionInfoDefinition.CpAddress);
    }

    public boolean setCpAddress(String address) {
        return this.fields.setValue(SubscriptionInfoDefinition.CpAddress, (Object) address);
    }

    public int getCpPort() {
        return ((Integer) this.fields.getValue(SubscriptionInfoDefinition.CpPort)).intValue();
    }

    public boolean setCpPort(int port) {
        return this.fields.setValue(SubscriptionInfoDefinition.CpPort, Integer.valueOf(port));
    }

    public SubscriptionInfo() {
        initialize();
    }

    private void initialize() {
        this.fields.initField(SubscriptionInfoDefinition.HostAddress, null);
        this.fields.initField(SubscriptionInfoDefinition.HostPort, null);
        this.fields.initField(SubscriptionInfoDefinition.DeviceId, null);
        this.fields.initField(SubscriptionInfoDefinition.ServiceId, null);
        this.fields.initField(SubscriptionInfoDefinition.EventSubUrl, null);
        this.fields.initField(SubscriptionInfoDefinition.SubscriptionId, null);
        this.fields.initField(SubscriptionInfoDefinition.Subscribed, null);
        this.fields.initField(SubscriptionInfoDefinition.Timeout, null);
        this.fields.initField(SubscriptionInfoDefinition.SessionId, null);
        this.fields.initField(SubscriptionInfoDefinition.CallbackUrl, null);
        this.fields.initField(SubscriptionInfoDefinition.CpAddress, null);
        this.fields.initField(SubscriptionInfoDefinition.CpPort, null);
    }

    public SubscriptionInfo(Parcel in) {
        initialize();
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.fields = (FieldList) in.readParcelable(FieldList.class.getClassLoader());
        int n = in.readInt();
        for (int i = 0; i < n; i++) {
            this.discoveryTypes.add(DiscoveryType.retrieveType(in.readString()));
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeParcelable(this.fields, flags);
        out.writeInt(this.discoveryTypes.size());
        for (DiscoveryType discoveryType : this.discoveryTypes) {
            out.writeString(discoveryType.toString());
        }
    }
}
