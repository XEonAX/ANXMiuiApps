package miui.upnp.typedef.device;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import miui.upnp.typedef.device.urn.ServiceType;
import miui.upnp.typedef.field.FieldList;
import miui.upnp.typedef.property.Property;
import miui.upnp.typedef.property.PropertyDefinition;

public class Service implements Parcelable {
    public static final Creator<Service> CREATOR = new Creator<Service>() {
        public Service createFromParcel(Parcel source) {
            return new Service(source);
        }

        public Service[] newArray(int size) {
            return new Service[size];
        }
    };
    private static final String TAG = Service.class.getSimpleName();
    private Map<String, Action> actions = new HashMap();
    private Device device;
    private FieldList fields = new FieldList();
    private volatile Map<String, Property> properties = new HashMap();
    private Map<String, Subscription> subscribers = new HashMap();
    private ServiceType type = new ServiceType();

    public Device getDevice() {
        return this.device;
    }

    public void setDevice(Device device) {
        this.device = device;
    }

    public ServiceType getType() {
        return this.type;
    }

    public void setType(ServiceType type) {
        this.type = type;
    }

    public String getServiceId() {
        return (String) this.fields.getValue(ServiceDefinition.ServiceId);
    }

    public boolean setServiceId(String id) {
        return this.fields.setValue(ServiceDefinition.ServiceId, (Object) id);
    }

    public String getControlUrl() {
        return (String) this.fields.getValue(ServiceDefinition.ControlUrl);
    }

    public boolean setControlUrl(String url) {
        return this.fields.setValue(ServiceDefinition.ControlUrl, (Object) url);
    }

    public String getEventSubUrl() {
        return (String) this.fields.getValue(ServiceDefinition.EventSubUrl);
    }

    public boolean setEventSubUrl(String url) {
        return this.fields.setValue(ServiceDefinition.EventSubUrl, (Object) url);
    }

    public String getScpdUrl() {
        return (String) this.fields.getValue(ServiceDefinition.ScpdUrl);
    }

    public boolean setScpdUrl(String url) {
        return this.fields.setValue(ServiceDefinition.ScpdUrl, (Object) url);
    }

    public boolean isSubscribed() {
        return ((Boolean) this.fields.getValue(ServiceDefinition.Subscribed)).booleanValue();
    }

    public boolean setSubscribed(boolean subscribed) {
        return this.fields.setValue(ServiceDefinition.Subscribed, Boolean.valueOf(subscribed));
    }

    public String getSubscriptionId() {
        return (String) this.fields.getValue(ServiceDefinition.SubscriptionId);
    }

    public boolean setSubscriptionId(String id) {
        return this.fields.setValue(ServiceDefinition.SubscriptionId, (Object) id);
    }

    public Collection<Property> getProperties() {
        return this.properties.values();
    }

    public Property getProperty(String name) {
        return (Property) this.properties.get(name);
    }

    public Object getPropertyValue(String name) {
        Object value = null;
        Property property = (Property) this.properties.get(name);
        if (property != null) {
            value = property.getCurrentValue();
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("getPropertyValue name:");
        stringBuilder.append(name);
        stringBuilder.append(" value:");
        stringBuilder.append(value);
        Log.d(str, stringBuilder.toString());
        return value;
    }

    public boolean setPropertyValue(String name, Object value) {
        boolean ret = false;
        Property property = (Property) this.properties.get(name);
        if (property != null) {
            ret = property.setDataValue(value);
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("setPropertyValue name:");
        stringBuilder.append(name);
        stringBuilder.append(" value:");
        stringBuilder.append(value);
        stringBuilder.append(" ret:");
        stringBuilder.append(ret);
        Log.d(str, stringBuilder.toString());
        return ret;
    }

    public PropertyDefinition getPropertyDefinition(String name) {
        Property p = (Property) this.properties.get(name);
        if (p == null) {
            return null;
        }
        return p.getDefinition();
    }

    public void addProperty(PropertyDefinition def) {
        this.properties.put(def.getName(), new Property(def, null));
    }

    public void addProperty(Property property) {
        this.properties.put(property.getDefinition().getName(), property);
    }

    public Map<String, Action> getActions() {
        return this.actions;
    }

    public void addAction(Action action) {
        action.setService(this);
        this.actions.put(action.getName(), action);
    }

    public Map<String, Subscription> getSubscribers() {
        return this.subscribers;
    }

    public void addSubscription(Subscription subscriber) {
        subscriber.setService(this);
        this.subscribers.put(subscriber.getCallbackUrl(), subscriber);
    }

    public void removeSubscription(String callback) {
        this.subscribers.remove(callback);
    }

    public boolean isPropertyChanged() {
        for (Property p : this.properties.values()) {
            if (p.getDefinition().isSendEvents() && p.isChanged()) {
                return true;
            }
        }
        return false;
    }

    public void cleanPropertyState() {
        for (Property p : this.properties.values()) {
            if (p.getDefinition().isSendEvents()) {
                p.cleanState();
            }
        }
    }

    public Service() {
        initialize();
    }

    public Service(ServiceType serviceType) {
        initialize();
        setType(serviceType);
    }

    private void initialize() {
        this.fields.initField(ServiceDefinition.ServiceId, null);
        this.fields.initField(ServiceDefinition.ControlUrl, null);
        this.fields.initField(ServiceDefinition.EventSubUrl, null);
        this.fields.initField(ServiceDefinition.ScpdUrl, null);
        this.fields.initField(ServiceDefinition.Subscribed, null);
        this.fields.initField(ServiceDefinition.SubscriptionId, null);
    }

    public Service(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        int i;
        this.type = ServiceType.create(in.readString());
        this.fields = (FieldList) in.readParcelable(FieldList.class.getClassLoader());
        int n = in.readInt();
        int i2 = 0;
        for (i = 0; i < n; i++) {
            addAction((Action) in.readParcelable(Action.class.getClassLoader()));
        }
        n = in.readInt();
        for (i = 0; i < n; i++) {
            addProperty((Property) in.readParcelable(Property.class.getClassLoader()));
        }
        n = in.readInt();
        while (i2 < n) {
            addSubscription((Subscription) in.readParcelable(Subscription.class.getClassLoader()));
            i2++;
        }
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.type.toString());
        out.writeParcelable(this.fields, flags);
        out.writeInt(this.actions.size());
        for (Action action : this.actions.values()) {
            out.writeParcelable(action, flags);
        }
        out.writeInt(this.properties.size());
        for (Property def : this.properties.values()) {
            out.writeParcelable(def, flags);
        }
        out.writeInt(this.subscribers.size());
        for (Subscription sub : this.subscribers.values()) {
            out.writeParcelable(sub, flags);
        }
    }

    public int describeContents() {
        return 0;
    }
}
