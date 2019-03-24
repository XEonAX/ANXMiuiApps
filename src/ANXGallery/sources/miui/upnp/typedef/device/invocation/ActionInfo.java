package miui.upnp.typedef.device.invocation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.upnp.typedef.device.Action;
import miui.upnp.typedef.device.Argument;
import miui.upnp.typedef.device.Argument.Direction;
import miui.upnp.typedef.device.DiscoveryType;
import miui.upnp.typedef.device.urn.ServiceType;
import miui.upnp.typedef.field.FieldList;
import miui.upnp.typedef.property.Property;

public class ActionInfo implements Parcelable {
    public static final Creator<ActionInfo> CREATOR = new Creator<ActionInfo>() {
        public ActionInfo createFromParcel(Parcel in) {
            return new ActionInfo(in);
        }

        public ActionInfo[] newArray(int size) {
            return new ActionInfo[size];
        }
    };
    private static final String TAG = "ActionInfo";
    private Action action;
    private List<DiscoveryType> discoveryTypes = new ArrayList();
    private FieldList fields = new FieldList();
    private Map<String, Property> properties = new HashMap();
    private ServiceType serviceType = new ServiceType();

    public void setDiscoveryTypes(List<DiscoveryType> discoveryTypes) {
        this.discoveryTypes = discoveryTypes;
    }

    public List<DiscoveryType> getDiscoveryTypes() {
        return this.discoveryTypes;
    }

    public ServiceType getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(ServiceType serviceType) {
        this.serviceType = serviceType;
    }

    public Action getAction() {
        return this.action;
    }

    public void setAction(Action action) {
        this.action = action;
    }

    public String getAddress() {
        return (String) this.fields.getValue(ActionInfoDefinition.Address);
    }

    public boolean setAddress(String address) {
        return this.fields.setValue(ActionInfoDefinition.Address, (Object) address);
    }

    public int getHostPort() {
        return ((Integer) this.fields.getValue(ActionInfoDefinition.HostPort)).intValue();
    }

    public boolean setHostPort(int port) {
        return this.fields.setValue(ActionInfoDefinition.HostPort, Integer.valueOf(port));
    }

    public String getDeviceId() {
        return (String) this.fields.getValue(ActionInfoDefinition.DeviceId);
    }

    public boolean setDeviceId(String deviceId) {
        return this.fields.setValue(ActionInfoDefinition.DeviceId, (Object) deviceId);
    }

    public String getServiceId() {
        return (String) this.fields.getValue(ActionInfoDefinition.ServiceId);
    }

    public boolean setServiceId(String serviceId) {
        return this.fields.setValue(ActionInfoDefinition.ServiceId, (Object) serviceId);
    }

    public String getControlUrl() {
        return (String) this.fields.getValue(ActionInfoDefinition.ControlUrl);
    }

    public boolean setControlUrl(String id) {
        return this.fields.setValue(ActionInfoDefinition.ControlUrl, (Object) id);
    }

    public String getSessionId() {
        return (String) this.fields.getValue(ActionInfoDefinition.SessionId);
    }

    public boolean setSessionId(String sessionId) {
        return this.fields.setValue(ActionInfoDefinition.SessionId, (Object) sessionId);
    }

    public Map<String, Property> getProperties() {
        return this.properties;
    }

    public boolean setArgumentValue(String name, Object value, Direction direction) {
        Property p = getRelatedProperty(name, direction);
        if (p != null) {
            return p.setDataValue(value);
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("relatedProperty not found: ");
        stringBuilder.append(name);
        Log.d(str, stringBuilder.toString());
        return false;
    }

    public boolean setArgumentValueByString(String name, String value, boolean nullValueAllowed, Direction direction) {
        Property p = getRelatedProperty(name, direction);
        if (p != null) {
            return p.setDataValueByString(value, nullValueAllowed);
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("relatedProperty not found: ");
        stringBuilder.append(name);
        Log.d(str, stringBuilder.toString());
        return false;
    }

    public Object getArgumentValue(String name) {
        Property property = getArgument(name);
        if (property != null) {
            return property.getCurrentValue();
        }
        return null;
    }

    public Property getArgument(String name) {
        return getRelatedProperty(name, Direction.IN);
    }

    public Property getResult(String name) {
        return getRelatedProperty(name, Direction.OUT);
    }

    private Property getRelatedProperty(String name, Direction direction) {
        Property p = null;
        Argument argument = null;
        for (Argument a : this.action.getArguments()) {
            if (a.getDirection() == direction) {
                if (a.getName().equals(name)) {
                    argument = a;
                    break;
                }
            }
        }
        String str;
        StringBuilder stringBuilder;
        if (argument == null) {
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("argument not found: ");
            stringBuilder.append(name);
            Log.d(str, stringBuilder.toString());
        } else {
            p = (Property) this.properties.get(argument.getRelatedProperty());
            if (p == null) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Property not found: ");
                stringBuilder.append(argument.getRelatedProperty());
                Log.d(str, stringBuilder.toString());
            }
        }
        return p;
    }

    public ActionInfo() {
        initialize();
    }

    private void initialize() {
        this.fields.initField(ActionInfoDefinition.Address, null);
        this.fields.initField(ActionInfoDefinition.HostPort, null);
        this.fields.initField(ActionInfoDefinition.ControlUrl, null);
        this.fields.initField(ActionInfoDefinition.DeviceId, null);
        this.fields.initField(ActionInfoDefinition.ServiceId, null);
        this.fields.initField(ActionInfoDefinition.SessionId, null);
    }

    public ActionInfo(Parcel in) {
        initialize();
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.action = (Action) in.readParcelable(Action.class.getClassLoader());
        this.serviceType = ServiceType.create(in.readString());
        this.fields = (FieldList) in.readParcelable(FieldList.class.getClassLoader());
        int n = in.readInt();
        int i = 0;
        for (int i2 = 0; i2 < n; i2++) {
            DiscoveryType discoveryType = DiscoveryType.retrieveType(in.readString());
            if (!this.discoveryTypes.contains(discoveryType)) {
                this.discoveryTypes.add(discoveryType);
            }
        }
        n = in.readInt();
        while (i < n) {
            Property property = (Property) in.readParcelable(Property.class.getClassLoader());
            this.properties.put(property.getDefinition().getName(), property);
            i++;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeParcelable(this.action, flags);
        out.writeString(this.serviceType.toString());
        out.writeParcelable(this.fields, flags);
        out.writeInt(this.discoveryTypes.size());
        for (DiscoveryType discoveryType : this.discoveryTypes) {
            out.writeString(discoveryType.toString());
        }
        out.writeInt(this.properties.size());
        for (Property def : this.properties.values()) {
            out.writeParcelable(def, flags);
        }
    }
}
