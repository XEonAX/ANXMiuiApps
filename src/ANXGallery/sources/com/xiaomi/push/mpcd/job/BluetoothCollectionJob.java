package com.xiaomi.push.mpcd.job;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.util.Set;

public class BluetoothCollectionJob extends CollectionJob {
    public BluetoothCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        StringBuilder builder = new StringBuilder();
        try {
            Set<BluetoothDevice> pairedDevices = BluetoothAdapter.getDefaultAdapter().getBondedDevices();
            if (!CollectionUtils.isEmpty(pairedDevices)) {
                int count = 0;
                for (BluetoothDevice device : pairedDevices) {
                    if (count > 10) {
                        break;
                    }
                    if (builder.length() > 0) {
                        builder.append(";");
                    }
                    builder.append(device.getName()).append(",").append(device.getAddress()).append(",");
                    if (VERSION.SDK_INT >= 18) {
                        builder.append(device.getType());
                    }
                    count++;
                }
            }
        } catch (Throwable th) {
        }
        return builder.toString();
    }

    protected boolean checkPermission() {
        return this.context.getPackageManager().checkPermission("android.permission.BLUETOOTH", this.context.getPackageName()) == 0;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.Bluetooth;
    }

    public int getJobId() {
        return 6;
    }
}
