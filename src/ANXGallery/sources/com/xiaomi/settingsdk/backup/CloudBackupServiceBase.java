package com.xiaomi.settingsdk.backup;

import android.app.IntentService;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.Log;
import com.xiaomi.settingsdk.backup.data.DataPackage;

public abstract class CloudBackupServiceBase extends IntentService {
    protected abstract ICloudBackup getBackupImpl();

    public CloudBackupServiceBase() {
        super("SettingsBackup");
    }

    private String prependPackageName(String msg) {
        return getPackageName() + ": " + msg;
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            Log.d("SettingsBackup", prependPackageName("myPid: " + Process.myPid()));
            Log.d("SettingsBackup", prependPackageName("intent: " + intent));
            Log.d("SettingsBackup", prependPackageName("extras: " + intent.getExtras()));
            String action = intent.getAction();
            ResultReceiver r = (ResultReceiver) intent.getParcelableExtra("result_receiver");
            if ("miui.action.CLOUD_BACKUP_SETTINGS".equals(action)) {
                if (r != null) {
                    Bundle bundle = backupSettings();
                    if (bundle == null) {
                        Log.e("SettingsBackup", prependPackageName("bundle result is null after backupSettings"));
                    }
                    r.send(0, bundle);
                }
            } else if ("miui.action.CLOUD_RESTORE_SETTINGS".equals(action) && r != null) {
                IBinder dataBinder = intent.getExtras().getBinder("data_package");
                Parcel data = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                try {
                    dataBinder.transact(2, data, reply, 0);
                    boolean success = restoreSettings((DataPackage) reply.readParcelable(getClass().getClassLoader()), intent.getIntExtra("version", -1));
                    Log.d("SettingsBackup", prependPackageName("r.send()" + Thread.currentThread()));
                    if (success) {
                        r.send(0, new Bundle());
                    } else {
                        r.send(0, null);
                    }
                    data.recycle();
                    reply.recycle();
                } catch (RemoteException e) {
                    Log.e("SettingsBackup", "RemoteException in onHandleIntent()", e);
                    data.recycle();
                    reply.recycle();
                } catch (BadParcelableException e2) {
                    Log.e("SettingsBackup", "BadParcelableException when read readParcelable", e2);
                    data.recycle();
                    reply.recycle();
                } catch (ClassCastException e3) {
                    Log.e("SettingsBackup", "ClassCastException when cast DataPackage");
                    data.recycle();
                    reply.recycle();
                } catch (Throwable th) {
                    data.recycle();
                    reply.recycle();
                    throw th;
                }
            }
        }
    }

    private boolean restoreSettings(DataPackage dataPackage, int version) {
        Log.d("SettingsBackup", prependPackageName("SettingsBackupServiceBase:restoreSettings"));
        ICloudBackup backuper = checkAndGetBackuper();
        int currentVersion = backuper.getCurrentVersion(this);
        if (version > currentVersion) {
            Log.w("SettingsBackup", "drop restore data because dataVersion is higher than currentAppVersion, dataVersion: " + version + ", currentAppVersion: " + currentVersion);
            return false;
        }
        backuper.onRestoreSettings(this, dataPackage, version);
        return true;
    }

    private Bundle backupSettings() {
        Log.d("SettingsBackup", prependPackageName("SettingsBackupServiceBase:backupSettings"));
        ICloudBackup backuper = checkAndGetBackuper();
        DataPackage dataPackage = new DataPackage();
        backuper.onBackupSettings(this, dataPackage);
        Bundle bundle = new Bundle();
        dataPackage.appendToWrappedBundle(bundle);
        bundle.putInt("version", backuper.getCurrentVersion(this));
        return bundle;
    }

    private ICloudBackup checkAndGetBackuper() {
        ICloudBackup backuper = getBackupImpl();
        if (backuper != null) {
            return backuper;
        }
        throw new IllegalArgumentException("backuper must not be null");
    }
}
