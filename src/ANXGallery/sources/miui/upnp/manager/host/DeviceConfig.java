package miui.upnp.manager.host;

import android.content.Context;
import android.net.wifi.WifiManager;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import miui.upnp.typedef.device.Device;
import miui.upnp.typedef.device.DiscoveryType;
import miui.upnp.typedef.device.urn.DeviceType;
import miui.upnp.typedef.exception.UpnpException;

public class DeviceConfig {
    private String deviceName;
    private List<DiscoveryType> discoveryTypes = new ArrayList();
    private String manufacturer;
    private String manufacturerUrl;
    private String modelDescription;
    private String modelName;
    private String modelNumber;
    private String modelUrl;

    public void addDiscoveryType(DiscoveryType discoveryType) {
        this.discoveryTypes.add(discoveryType);
    }

    public void deviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public void modelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }

    public void modelName(String modelName) {
        this.modelName = modelName;
    }

    public void modelDescription(String modelDescription) {
        this.modelDescription = modelDescription;
    }

    public void modelUrl(String modelUrl) {
        this.modelUrl = modelUrl;
    }

    public void manufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public void manufacturerUrl(String manufacturerUrl) {
        this.manufacturerUrl = manufacturerUrl;
    }

    public Device build(Context context, DeviceType deviceType) throws UpnpException {
        String deviceId = genDeviceId(context);
        Device device = new Device(deviceType);
        for (DiscoveryType type : this.discoveryTypes) {
            device.addDiscoveryType(type);
        }
        device.setDeviceId(deviceId);
        device.setFriendlyName(this.deviceName);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/upnp/");
        stringBuilder.append(deviceId);
        stringBuilder.append("/description.xml");
        device.setLocation(stringBuilder.toString());
        device.setModelNumber(this.modelNumber);
        device.setModelName(this.modelName);
        device.setModelDescription(this.modelDescription);
        device.setModelUrl(this.modelUrl);
        device.setManufacturer(this.manufacturer);
        device.setManufacturerUrl(this.manufacturerUrl);
        return device;
    }

    private String genDeviceId(Context context) {
        String address = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("uuid:");
        stringBuilder.append(UUID.nameUUIDFromBytes(address.getBytes()).toString());
        return stringBuilder.toString();
    }
}
