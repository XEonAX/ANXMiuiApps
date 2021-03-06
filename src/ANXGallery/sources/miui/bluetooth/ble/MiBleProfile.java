package miui.bluetooth.ble;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.UUID;
import miui.bluetooth.ble.IBluetoothMiBle.Stub;

public class MiBleProfile {
    public static final String ACTION_MIBLE_SERVICE = "miui.bluetooth.mible.Service";
    public static final String ACTION_SELECT_DEVICE = "miui.bluetooth.action.PICK_DEVICE";
    protected static final boolean DBG = true;
    public static final String EXTRA_MIBLE_PROPERTY = "miui.bluetooth.extra.MIBLE_PROPERTY";
    private static final int MSG_PROPERTY = 2;
    private static final int MSG_STATUS = 1;
    public static final int PROPERTY_ALARM_CLOCK = 106;
    public static final int PROPERTY_ALERT_NOTIFICATION = 8;
    public static final int PROPERTY_BATTERY = 6;
    public static final int PROPERTY_DEVICE_CONTROL = 2;
    public static final int PROPERTY_DEVICE_INFO = 101;
    public static final int PROPERTY_FIRMWARE = 3;
    public static final int PROPERTY_IMMEDIATE_ALERT = 5;
    public static final int PROPERTY_LINK_LOSS = 7;
    public static final int PROPERTY_MI_BAND_EVENT = 108;
    public static final int PROPERTY_MI_KEY = 107;
    @Deprecated
    public static final int PROPERTY_PAY = 4;
    public static final int PROPERTY_SPORT_ACTIVITIES = 104;
    public static final int PROPERTY_SPORT_STEPS = 103;
    public static final int PROPERTY_THEME_COLOR = 105;
    public static final int PROPERTY_UNDEFINED = 0;
    @Deprecated
    public static final int PROPERTY_UNLOCK = 1;
    public static final int PROPERTY_USER_INFO = 102;
    public static final int SERVICE_VERSION_UNKNOWN = -1;
    public static final int STATUS_CONNECTED = 2;
    public static final int STATUS_CONNECTING = 1;
    public static final int STATUS_DISCONNECTED = 0;
    public static final int STATUS_DISCONNECTING = 3;
    public static final int STATUS_ERROR = -1;
    public static final int STATUS_READY = 4;
    protected static final String TAG = "MiBleProfile";
    protected IProfileStateChangeCallback mCallback;
    protected final ParcelUuid mClientId;
    private boolean mConnectWhenBind;
    protected Context mContext;
    protected String mDevice;
    private Handler mHandler;
    private int mProfileState;
    private IBluetoothMiBlePropertyCallback mPropertyCallback;
    private SparseArray<IPropertyNotifyCallback> mPropertyCallbacks;
    protected IBluetoothMiBle mService;
    private IBluetoothMiBleCallback mServiceCallback;
    private ServiceConnection mServiceConnection;
    private final IBinder mToken;

    public interface IPropertyNotifyCallback {
        void notifyProperty(int i, byte[] bArr);
    }

    public interface IProfileStateChangeCallback {
        void onState(int i);
    }

    public MiBleProfile(Context context, String device) {
        this(context, device, null);
    }

    public MiBleProfile(Context context, String device, IProfileStateChangeCallback callback) {
        this.mClientId = new ParcelUuid(UUID.randomUUID());
        this.mToken = new Binder();
        this.mConnectWhenBind = false;
        this.mPropertyCallbacks = new SparseArray();
        this.mProfileState = 0;
        this.mServiceConnection = new ServiceConnection() {
            public void onServiceDisconnected(ComponentName name) {
                MiBleProfile.this.mService = null;
                MiBleProfile.this.mProfileState = 0;
                MiBleProfile.this.mHandler.sendMessage(MiBleProfile.this.mHandler.obtainMessage(1, 0, 0));
            }

            public void onServiceConnected(ComponentName name, IBinder service) {
                Log.d(MiBleProfile.TAG, "onServiceConnected()");
                MiBleProfile.this.mService = Stub.asInterface(service);
                MiBleProfile.this.mHandler.sendMessage(MiBleProfile.this.mHandler.obtainMessage(1, 2, 0));
                try {
                    MiBleProfile.this.mService.registerClient(MiBleProfile.this.mToken, MiBleProfile.this.mDevice, MiBleProfile.this.mClientId, MiBleProfile.this.mServiceCallback);
                } catch (RemoteException e) {
                    Log.e(MiBleProfile.TAG, "onServiceConnected", e);
                    MiBleProfile.this.mHandler.sendMessage(MiBleProfile.this.mHandler.obtainMessage(1, -1, 0));
                }
                if (MiBleProfile.this.mConnectWhenBind) {
                    MiBleProfile.this.mConnectWhenBind = false;
                    MiBleProfile.this.connect();
                }
            }
        };
        this.mServiceCallback = new IBluetoothMiBleCallback.Stub() {
            public void onConnectionState(ParcelUuid clientId, int status) throws RemoteException {
                String str = MiBleProfile.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onConnectionState() sate=");
                stringBuilder.append(status);
                Log.d(str, stringBuilder.toString());
                if (MiBleProfile.this.mClientId.equals(clientId)) {
                    MiBleProfile.this.mProfileState = status;
                    MiBleProfile.this.mHandler.sendMessage(MiBleProfile.this.mHandler.obtainMessage(1, status, 0));
                }
            }
        };
        this.mPropertyCallback = new IBluetoothMiBlePropertyCallback.Stub() {
            public void notifyProperty(ParcelUuid clientId, int property, byte[] data) throws RemoteException {
                String str = MiBleProfile.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("mPropertyCallback() property=");
                stringBuilder.append(property);
                Log.d(str, stringBuilder.toString());
                if (MiBleProfile.this.mClientId.equals(clientId)) {
                    Message msg = MiBleProfile.this.mHandler.obtainMessage(2);
                    msg.arg1 = property;
                    msg.obj = data;
                    MiBleProfile.this.mHandler.sendMessage(msg);
                }
            }
        };
        this.mDevice = device;
        this.mContext = context;
        this.mCallback = callback;
        try {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
        } catch (RuntimeException e) {
            Log.e(TAG, "prepare looper failed", e);
        }
        this.mHandler = new Handler(new Callback() {
            public boolean handleMessage(Message msg) {
                int what = msg.what;
                if (what == 1) {
                    if (MiBleProfile.this.mCallback != null) {
                        MiBleProfile.this.mCallback.onState(msg.arg1);
                    }
                    return true;
                } else if (what != 2) {
                    return false;
                } else {
                    int property = msg.arg1;
                    IPropertyNotifyCallback cb = (IPropertyNotifyCallback) MiBleProfile.this.mPropertyCallbacks.get(property);
                    if (cb != null) {
                        cb.notifyProperty(property, (byte[]) msg.obj);
                    }
                    return true;
                }
            }
        });
    }

    public int getServiceVersion() {
        if (this.mService != null) {
            try {
                return this.mService.getServiceVersion();
            } catch (RemoteException e) {
                Log.e(TAG, "getServiceVersion", e);
            }
        }
        return -1;
    }

    public void setProfileStateChangeCallback(IProfileStateChangeCallback callback) {
        this.mCallback = callback;
    }

    public String getDeviceAddress() {
        return this.mDevice;
    }

    public void connect() {
        if (this.mService == null) {
            this.mConnectWhenBind = true;
            Intent intent = new Intent(ACTION_MIBLE_SERVICE);
            String pkg = "com.xiaomi.bluetooth";
            intent.setClassName(pkg, "com.android.bluetooth.ble.BluetoothMiBleService");
            intent.setPackage(pkg);
            boolean ret = this.mContext.bindService(intent, this.mServiceConnection, 1);
            if (!ret) {
                pkg = "com.android.bluetooth";
                intent = new Intent(ACTION_MIBLE_SERVICE);
                intent.setClassName(pkg, "com.android.bluetooth.ble.BluetoothMiBleService");
                intent.setPackage(pkg);
                ret = this.mContext.bindService(intent, this.mServiceConnection, 1);
            }
            if (!ret) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("connect: bind service error");
                stringBuilder.append(intent.toString());
                Log.e(str, stringBuilder.toString());
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1, -1, 0));
                return;
            }
            return;
        }
        try {
            this.mService.connect(this.mDevice, this.mClientId);
        } catch (RemoteException e) {
            Log.w(TAG, "connect: ", e);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, -1, 0));
        }
    }

    public void disconnect() {
        if (this.mService != null) {
            try {
                this.mService.unregisterClient(this.mToken, this.mDevice, this.mClientId);
                this.mContext.unbindService(this.mServiceConnection);
            } catch (RemoteException e) {
                Log.w(TAG, "disconnect: ", e);
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1, -1, 0));
            } catch (IllegalArgumentException e2) {
                Log.w(TAG, "disconnect: ", e2);
                this.mHandler.sendMessage(this.mHandler.obtainMessage(1, -1, 0));
            }
        }
    }

    public boolean isReady() {
        return this.mProfileState == 4;
    }

    public boolean isSupportProperty(int property) {
        boolean z = false;
        try {
            if (this.mService != null && this.mService.supportProperty(this.mDevice, property)) {
                z = true;
            }
            return z;
        } catch (RemoteException e) {
            Log.e(TAG, "isSupportProperty: ", e);
            return false;
        }
    }

    public byte[] getProperty(int property) {
        if (this.mService != null) {
            try {
                return this.mService.getProperty(this.mDevice, this.mClientId, property);
            } catch (RemoteException e) {
                Log.e(TAG, "getProperty: ", e);
            }
        }
        return null;
    }

    public boolean setProperty(int property, byte[] data) {
        if (this.mService != null) {
            try {
                return this.mService.setProperty(this.mDevice, this.mClientId, property, data);
            } catch (RemoteException e) {
                Log.e(TAG, "setProperty: ", e);
            }
        }
        return false;
    }

    public boolean registerPropertyNotifyCallback(int property, IPropertyNotifyCallback callback) {
        boolean result = false;
        this.mPropertyCallbacks.put(property, callback);
        if (this.mService != null) {
            try {
                result = this.mService.registerPropertyCallback(this.mDevice, this.mClientId, property, this.mPropertyCallback);
            } catch (RemoteException e) {
                Log.e(TAG, "registerPropertyNotifyCallback: ", e);
            }
        }
        if (result) {
            return true;
        }
        this.mPropertyCallbacks.remove(property);
        return false;
    }

    public boolean unregisterPropertyNotifyCallback(int property) {
        this.mPropertyCallbacks.remove(property);
        if (this.mPropertyCallbacks.get(property) != null) {
            return true;
        }
        try {
            if (this.mService != null) {
                return this.mService.unregisterPropertyCallback(this.mDevice, this.mClientId, property, this.mPropertyCallback);
            }
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "unregisterPropertyNotifyCallback: ", e);
            return false;
        }
    }

    public int getRssi() {
        if (isReady()) {
            try {
                return this.mService.getRssi(this.mDevice, this.mClientId);
            } catch (RemoteException e) {
                Log.e(TAG, "getRssi: ", e);
            }
        }
        return Integer.MIN_VALUE;
    }
}
