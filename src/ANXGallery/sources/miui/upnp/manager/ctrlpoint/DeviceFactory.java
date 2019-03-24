package miui.upnp.manager.ctrlpoint;

import android.annotation.TargetApi;
import android.util.Log;
import miui.upnp.manager.UpnpManager;
import miui.upnp.typedef.device.Device;
import miui.upnp.typedef.deviceclass.DeviceClass;

public class DeviceFactory {
    private static final String TAG = "DeviceFactroy";

    @TargetApi(19)
    public static AbstractDevice createDevice(Device device) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("device type is: ");
        stringBuilder.append(device.getDeviceType());
        Log.e(str, stringBuilder.toString());
        DeviceClass deviceClazz = UpnpManager.getInstance().getClassProvider().getDeviceClass(device.getDeviceType());
        if (deviceClazz == null) {
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("unknown device class: ");
            stringBuilder2.append(device.getDeviceType());
            Log.e(str2, stringBuilder2.toString());
            deviceClazz = UpnpManager.getInstance().getClassProvider().getDeviceClass(UnknownDevice.DEVICE_TYPE);
            if (deviceClazz == null) {
                Log.e(TAG, "default device class not found");
                return null;
            }
        }
        Class<?> clazz = deviceClazz.getClazz();
        if (clazz == null) {
            String str3 = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("class not found: ");
            stringBuilder3.append(deviceClazz.getDeviceType());
            Log.e(str3, stringBuilder3.toString());
            return null;
        }
        try {
            return (AbstractDevice) clazz.getMethod("create", new Class[]{Device.class}).invoke(null, new Object[]{device});
        } catch (ReflectiveOperationException e) {
            e.printStackTrace();
            return null;
        }
    }
}
