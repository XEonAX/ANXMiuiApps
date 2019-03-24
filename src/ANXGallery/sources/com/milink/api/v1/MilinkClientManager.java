package com.milink.api.v1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.milink.api.v1.aidl.IMcs;
import com.milink.api.v1.aidl.IMcs.Stub;
import com.milink.api.v1.type.MediaType;
import com.milink.api.v1.type.MilinkConfig;
import com.milink.api.v1.type.ReturnCode;
import com.milink.api.v1.type.SlideMode;

public class MilinkClientManager implements IMilinkClientManager {
    private static final String TAG = MilinkClientManager.class.getSimpleName();
    private Context mContext = null;
    private MilinkClientManagerDelegate mDelegate = null;
    private String mDeviceName = null;
    private boolean mIsbound = false;
    private McsDataSource mMcsDataSource = null;
    private McsDelegate mMcsDelegate = null;
    private McsDeviceListener mMcsDeviceListener = null;
    private IMcs mService = null;
    private ServiceConnection mServiceConnection = new ServiceConnection() {
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.d(MilinkClientManager.TAG, "onServiceConnected");
            new Handler().post(new Runnable() {
                public void run() {
                    if (MilinkClientManager.this.mDelegate != null) {
                        MilinkClientManager.this.mDelegate.onOpen();
                    }
                }
            });
            MilinkClientManager.this.mService = Stub.asInterface(service);
            try {
                MilinkClientManager.this.mService.setDeviceName(MilinkClientManager.this.mDeviceName);
                MilinkClientManager.this.mService.setDelegate(MilinkClientManager.this.mMcsDelegate);
                MilinkClientManager.this.mService.setDataSource(MilinkClientManager.this.mMcsDataSource);
                MilinkClientManager.this.mService.setDeviceListener(MilinkClientManager.this.mMcsDeviceListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        public void onServiceDisconnected(ComponentName name) {
            Log.d(MilinkClientManager.TAG, "onServiceDisconnected");
            new Handler().post(new Runnable() {
                public void run() {
                    if (MilinkClientManager.this.mDelegate != null) {
                        MilinkClientManager.this.mDelegate.onClose();
                    }
                }
            });
            try {
                MilinkClientManager.this.mService.unsetDeviceListener(MilinkClientManager.this.mMcsDeviceListener);
                MilinkClientManager.this.mService.unsetDataSource(MilinkClientManager.this.mMcsDataSource);
                MilinkClientManager.this.mService.unsetDelegate(MilinkClientManager.this.mMcsDelegate);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            MilinkClientManager.this.mService = null;
        }
    };

    public MilinkClientManager(Context context) {
        this.mContext = context;
        this.mMcsDelegate = new McsDelegate();
        this.mMcsDataSource = new McsDataSource();
        this.mMcsDeviceListener = new McsDeviceListener();
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public void setDeviceName(String selfName) {
        this.mDeviceName = selfName;
    }

    public void setDataSource(MilinkClientManagerDataSource dataSource) {
        this.mMcsDataSource.setDataSource(dataSource);
    }

    public void setDelegate(MilinkClientManagerDelegate delegate) {
        this.mDelegate = delegate;
        this.mMcsDelegate.setDelegate(delegate);
        this.mMcsDeviceListener.setDelegate(delegate);
    }

    public void open() {
        bindMilinkClientService();
    }

    public void close() {
        unbindMilinkClientService();
    }

    private void bindMilinkClientService() {
        if (!this.mIsbound) {
            Intent intent = new Intent(IMcs.class.getName());
            intent.setPackage(MilinkConfig.PACKAGE_NAME);
            this.mIsbound = this.mContext.bindService(intent, this.mServiceConnection, 1);
        }
    }

    private void unbindMilinkClientService() {
        if (this.mIsbound) {
            this.mContext.unbindService(this.mServiceConnection);
            this.mIsbound = false;
        }
    }

    public ReturnCode connect(String deviceId, int timeout) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.connect(deviceId, timeout));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode disconnect() {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.disconnect());
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode startShow() {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.startShow());
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode show(String photoUri) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.show(photoUri));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            code = ReturnCode.InvalidParams;
        }
        return code;
    }

    public ReturnCode zoomPhoto(String photoUri, int x, int y, int screenWidth, int screenHeight, int orgPhotoWidth, int orgPhotoHeight, float scale) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code;
        ReturnCode code2 = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.zoomPhoto(photoUri, x, y, screenWidth, screenHeight, orgPhotoWidth, orgPhotoHeight, scale));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode stopShow() {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.stopShow());
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode startSlideshow(int duration, SlideMode type) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.startSlideshow(duration, type == SlideMode.Recyle));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode stopSlideshow() {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.stopSlideshow());
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode startPlay(String url, String title, int iPosition, double dPosition, MediaType type) {
        return startPlay(url, title, null, iPosition, dPosition, type);
    }

    public ReturnCode startPlay(String url, String title, String extra, int iPosition, double dPosition, MediaType type) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code;
        ReturnCode code2 = ReturnCode.OK;
        try {
            switch (type) {
                case Audio:
                    if (extra != null) {
                        code = getReturnCode(this.mService.startPlayAudioEx(url, title, extra, iPosition, dPosition));
                        break;
                    }
                    code = getReturnCode(this.mService.startPlayAudio(url, title, iPosition, dPosition));
                    break;
                case Video:
                    if (extra != null) {
                        code = getReturnCode(this.mService.startPlayVideoEx(url, title, extra, iPosition, dPosition));
                        break;
                    }
                    code = getReturnCode(this.mService.startPlayVideo(url, title, iPosition, dPosition));
                    break;
                case Photo:
                    code2 = ReturnCode.InvalidParams;
                    break;
            }
            code = ReturnCode.InvalidParams;
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode stopPlay() {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.stopPlay());
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public ReturnCode setPlaybackRate(int rate) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.setPlaybackRate(rate));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public int getPlaybackRate() {
        if (this.mService == null) {
            return 0;
        }
        int rate = 0;
        try {
            rate = this.mService.getPlaybackRate();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return rate;
    }

    public ReturnCode setPlaybackProgress(int position) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.setPlaybackProgress(position));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public int getPlaybackProgress() {
        if (this.mService == null) {
            return 0;
        }
        int position = 0;
        try {
            position = this.mService.getPlaybackProgress();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return position;
    }

    public int getPlaybackDuration() {
        if (this.mService == null) {
            return 0;
        }
        int duration = 0;
        try {
            duration = this.mService.getPlaybackDuration();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return duration;
    }

    public ReturnCode setVolume(int volume) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.setVolume(volume));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    public int getVolume() {
        if (this.mService == null) {
            return 0;
        }
        int volume = 0;
        try {
            volume = this.mService.getVolume();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return volume;
    }

    public ReturnCode rotatePhoto(String photoUri, boolean flag, float degree) {
        if (this.mService == null) {
            return ReturnCode.NotConnected;
        }
        ReturnCode code = ReturnCode.OK;
        try {
            code = getReturnCode(this.mService.rotatePhoto(photoUri, flag, degree));
        } catch (RemoteException e) {
            e.printStackTrace();
            code = ReturnCode.ServiceException;
        }
        return code;
    }

    private ReturnCode getReturnCode(int returnValue) {
        ReturnCode code = ReturnCode.OK;
        switch (returnValue) {
            case -5:
                return ReturnCode.NotSupport;
            case -4:
                return ReturnCode.NotConnected;
            case -3:
                return ReturnCode.InvalidUrl;
            case -2:
                return ReturnCode.InvalidParams;
            case -1:
                return ReturnCode.Error;
            case 0:
                return ReturnCode.OK;
            default:
                return ReturnCode.Error;
        }
    }
}
