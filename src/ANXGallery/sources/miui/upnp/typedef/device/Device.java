package miui.upnp.typedef.device;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.upnp.typedef.device.urn.DeviceType;
import miui.upnp.typedef.field.FieldList;

public class Device implements Parcelable {
    public static final Creator<Device> CREATOR = new Creator<Device>() {
        public Device createFromParcel(Parcel in) {
            return new Device(in);
        }

        public Device[] newArray(int size) {
            return new Device[size];
        }
    };
    private DeviceType deviceType = new DeviceType();
    private List<DiscoveryType> discoveryTypes = new ArrayList();
    private FieldList fields = new FieldList();
    private List<Icon> icons = new ArrayList();
    private Map<String, Service> services = new HashMap();

    public int hashCode() {
        String deviceId = (String) this.fields.getValue(DeviceDefinition.DeviceId);
        return (31 * 1) + (deviceId == null ? 0 : deviceId.hashCode());
    }

    public boolean equals(Object obj) {
        if (getClass() != obj.getClass()) {
            return false;
        }
        Device other = (Device) obj;
        if (this == other) {
            return true;
        }
        return ((String) this.fields.getValue(DeviceDefinition.DeviceId)).equals((String) other.fields.getValue(DeviceDefinition.DeviceId));
    }

    public DeviceType getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(DeviceType type) {
        this.deviceType = type;
    }

    public List<DiscoveryType> getDiscoveryTypes() {
        return this.discoveryTypes;
    }

    public void addDiscoveryType(DiscoveryType discoveryType) {
        if (!this.discoveryTypes.contains(discoveryType)) {
            this.discoveryTypes.add(discoveryType);
        }
    }

    public String getLocation() {
        return (String) this.fields.getValue(DeviceDefinition.Location);
    }

    public boolean setLocation(String location) {
        return this.fields.setValue(DeviceDefinition.Location, (Object) location);
    }

    public String getAddress() {
        return (String) this.fields.getValue(DeviceDefinition.Address);
    }

    public boolean setAddress(String address) {
        return this.fields.setValue(DeviceDefinition.Address, (Object) address);
    }

    public int getHostPort() {
        return ((Integer) this.fields.getValue(DeviceDefinition.HostPort)).intValue();
    }

    public boolean setHostPort(int port) {
        return this.fields.setValue(DeviceDefinition.HostPort, Integer.valueOf(port));
    }

    public String getDeviceId() {
        return (String) this.fields.getValue(DeviceDefinition.DeviceId);
    }

    public boolean setDeviceId(String deviceId) {
        return this.fields.setValue(DeviceDefinition.DeviceId, (Object) deviceId);
    }

    public String getFriendlyName() {
        return (String) this.fields.getValue(DeviceDefinition.FriendlyName);
    }

    public boolean setFriendlyName(String name) {
        return this.fields.setValue(DeviceDefinition.FriendlyName, (Object) name);
    }

    public String getManufacturer() {
        return (String) this.fields.getValue(DeviceDefinition.Manufacturer);
    }

    public boolean setManufacturer(String manufacturer) {
        return this.fields.setValue(DeviceDefinition.Manufacturer, (Object) manufacturer);
    }

    public String getManufacturerUrl() {
        return (String) this.fields.getValue(DeviceDefinition.ManufacturerUrl);
    }

    public boolean setManufacturerUrl(String url) {
        return this.fields.setValue(DeviceDefinition.ManufacturerUrl, (Object) url);
    }

    public String getModelDescription() {
        return (String) this.fields.getValue(DeviceDefinition.ModelDescription);
    }

    public boolean setModelDescription(String description) {
        return this.fields.setValue(DeviceDefinition.ModelDescription, (Object) description);
    }

    public String getModelName() {
        return (String) this.fields.getValue(DeviceDefinition.ModelName);
    }

    public boolean setModelName(String name) {
        return this.fields.setValue(DeviceDefinition.ModelName, (Object) name);
    }

    public String getModelNumber() {
        return (String) this.fields.getValue(DeviceDefinition.ModelNumber);
    }

    public boolean setModelNumber(String number) {
        return this.fields.setValue(DeviceDefinition.ModelNumber, (Object) number);
    }

    public String getModelUrl() {
        return (String) this.fields.getValue(DeviceDefinition.ModelUrl);
    }

    public boolean setModelUrl(String url) {
        return this.fields.setValue(DeviceDefinition.ModelUrl, (Object) url);
    }

    public String getSerialNumber() {
        return (String) this.fields.getValue(DeviceDefinition.SerialNumber);
    }

    public boolean setSerialNumber(String number) {
        return this.fields.setValue(DeviceDefinition.SerialNumber, (Object) number);
    }

    public String getPresentationUrl() {
        return (String) this.fields.getValue(DeviceDefinition.PresentationUrl);
    }

    public boolean setPresentationUrl(String url) {
        return this.fields.setValue(DeviceDefinition.PresentationUrl, (Object) url);
    }

    public String getUrlBase() {
        return (String) this.fields.getValue(DeviceDefinition.UrlBase);
    }

    public boolean setUrlBase(String url) {
        return this.fields.setValue(DeviceDefinition.UrlBase, (Object) url);
    }

    public String getUpc() {
        return (String) this.fields.getValue(DeviceDefinition.Upc);
    }

    public boolean setUpc(String upc) {
        return this.fields.setValue(DeviceDefinition.Upc, (Object) upc);
    }

    public String getQplayCapability() {
        return (String) this.fields.getValue(DeviceDefinition.QplayCapability);
    }

    public boolean setQplayCapability(String capability) {
        return this.fields.setValue(DeviceDefinition.QplayCapability, (Object) capability);
    }

    public String getDlnaDoc() {
        return (String) this.fields.getValue(DeviceDefinition.DlnaDoc);
    }

    public boolean setDlnaDoc(String doc) {
        return this.fields.setValue(DeviceDefinition.DlnaDoc, (Object) doc);
    }

    public String getDlnaCap() {
        return (String) this.fields.getValue(DeviceDefinition.DlnaCap);
    }

    public boolean setDlnaCap(String cap) {
        return this.fields.setValue(DeviceDefinition.DlnaCap, (Object) cap);
    }

    public List<Icon> getIcons() {
        return this.icons;
    }

    public void addIcon(Icon icon) {
        this.icons.add(icon);
    }

    public Map<String, Service> getServices() {
        return this.services;
    }

    public void addService(Service service) {
        service.setDevice(this);
        this.services.put(service.getServiceId(), service);
    }

    public Service getService(String serviceId) {
        return (Service) this.services.get(serviceId);
    }

    public Device() {
        initialize();
    }

    public Device(DeviceType deviceType) {
        initialize();
        setDeviceType(deviceType);
    }

    private void initialize() {
        this.fields.initField(DeviceDefinition.Location, null);
        this.fields.initField(DeviceDefinition.Address, null);
        this.fields.initField(DeviceDefinition.HostPort, null);
        this.fields.initField(DeviceDefinition.DeviceId, null);
        this.fields.initField(DeviceDefinition.FriendlyName, null);
        this.fields.initField(DeviceDefinition.Manufacturer, null);
        this.fields.initField(DeviceDefinition.ManufacturerUrl, null);
        this.fields.initField(DeviceDefinition.ModelDescription, null);
        this.fields.initField(DeviceDefinition.ModelName, null);
        this.fields.initField(DeviceDefinition.ModelNumber, null);
        this.fields.initField(DeviceDefinition.ModelUrl, null);
        this.fields.initField(DeviceDefinition.SerialNumber, null);
        this.fields.initField(DeviceDefinition.PresentationUrl, null);
        this.fields.initField(DeviceDefinition.UrlBase, null);
        this.fields.initField(DeviceDefinition.Upc, null);
        this.fields.initField(DeviceDefinition.QplayCapability, null);
        this.fields.initField(DeviceDefinition.DlnaDoc, null);
        this.fields.initField(DeviceDefinition.DlnaCap, null);
    }

    public Device(Parcel in) {
        initialize();
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        int i;
        this.deviceType = DeviceType.create(in.readString());
        this.fields = (FieldList) in.readParcelable(FieldList.class.getClassLoader());
        int n = in.readInt();
        int i2 = 0;
        for (i = 0; i < n; i++) {
            this.discoveryTypes.add(DiscoveryType.retrieveType(in.readString()));
        }
        n = in.readInt();
        for (i = 0; i < n; i++) {
            this.icons.add((Icon) in.readParcelable(Icon.class.getClassLoader()));
        }
        n = in.readInt();
        while (i2 < n) {
            addService((Service) in.readParcelable(Service.class.getClassLoader()));
            i2++;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.deviceType.toString());
        out.writeParcelable(this.fields, flags);
        out.writeInt(this.discoveryTypes.size());
        for (DiscoveryType discoveryType : this.discoveryTypes) {
            out.writeString(discoveryType.toString());
        }
        out.writeInt(this.icons.size());
        for (Icon icon : this.icons) {
            out.writeParcelable(icon, flags);
        }
        out.writeInt(this.services.size());
        for (Service service : this.services.values()) {
            out.writeParcelable(service, flags);
        }
    }
}
