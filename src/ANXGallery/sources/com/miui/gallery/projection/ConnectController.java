package com.miui.gallery.projection;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.milink.api.v1.MilinkClientManager;
import com.milink.api.v1.MilinkClientManagerDataSource;
import com.milink.api.v1.MilinkClientManagerDelegate;
import com.milink.api.v1.type.DeviceType;
import com.milink.api.v1.type.ErrorCode;
import com.milink.api.v1.type.MediaType;
import com.milink.api.v1.type.ReturnCode;
import com.milink.api.v1.type.SlideMode;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.preference.GalleryPreferences.SlideShow;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexProject;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.keyczar.Keyczar;

public class ConnectController {
    private static ConnectController mInstance;
    private Set<ConnectListener> mConnectListeners = new HashSet();
    private String mCurConnectedDevice = null;
    private int mCurrentIndex = 0;
    private String mCurrentPhoto = "";
    private MilinkClientManagerDataSource mDataSource = new MilinkClientManagerDataSource() {
        public String getPrevPhoto(String uri, boolean isRecyle) {
            return ConnectController.this.mSlidingWindow.getPrevious(uri, isRecyle);
        }

        public String getNextPhoto(String uri, boolean isRecyle) {
            return ConnectController.this.mSlidingWindow.getNext(uri, isRecyle);
        }
    };
    private Runnable mDelayConnect = new Runnable() {
        public void run() {
            Log.v("ConnectController", "delayed disconnected");
            ConnectController.this.disconnectBigShow(false);
        }
    };
    private MilinkClientManagerDelegate mDelegate = new MilinkClientManagerDelegate() {
        public void onOpen() {
            Log.v("ConnectController", "service openned");
            ConnectController.this.queryDevices(false);
        }

        public void onClose() {
            Log.v("ConnectController", "service closed");
        }

        public void onDeviceFound(String deviceId, String name, DeviceType type) {
            if (type == DeviceType.TV) {
                Log.v("ConnectController", "service onDeviceFound");
                ConnectController.this.mDevices.put(name, deviceId);
                Message.obtain(ConnectController.this.mHandler, 100, name).sendToTarget();
            }
        }

        public void onDeviceLost(String deviceId) {
            String name = null;
            for (String dn : ConnectController.this.mDevices.keySet()) {
                if (((String) ConnectController.this.mDevices.get(dn)).equals(deviceId)) {
                    name = dn;
                    break;
                }
            }
            if (name != null) {
                ConnectController.this.mDevices.remove(name);
                Message.obtain(ConnectController.this.mHandler, BaiduSceneResult.SHOOTING, name).sendToTarget();
            }
        }

        public void onConnected() {
            Log.d("ConnectController", "connect is responded ok");
            ConnectController.this.mPhotoServerConnected = true;
            ConnectController.this.mCurConnectedDevice = ConnectController.this.mWaitConnectDevice;
            ConnectController.this.mWaitConnectDevice = null;
            ConnectController.this.mIsFirstConnected = true;
            ConnectController.this.mPhotoManager.startShow();
            if (!TextUtils.isEmpty(ConnectController.this.mCurrentPhoto)) {
                Log.v("ConnectController", "==the to show photo is: " + ConnectController.this.mCurrentPhoto);
                ConnectController.this.showPhoto(ConnectController.this.mCurrentPhoto, ConnectController.this.mCurrentIndex);
            }
            ConnectController.this.doPhotoConnectResponse(0);
        }

        public void onConnectedFailed(ErrorCode errorCode) {
            Log.d("ConnectController", "connect is responded failed -1");
            ConnectController.this.setPhotoServerDisconnect();
            ConnectController.this.doPhotoConnectResponse(-1);
        }

        public void onDisconnected() {
            Log.d("ConnectController", "remote show is dispeared, but connected.");
            remoteDisconnected();
        }

        private void remoteDisconnected() {
            Log.v("ConnectController", "do remoteDisconnected");
            if (ConnectController.this.mPhotoServerConnected) {
                ConnectController.this.setPhotoServerDisconnect();
                ConnectController.this.doPhotoConnectRelease();
            }
        }

        public void onLoading() {
            Log.v("ConnectController", "loading...");
            for (MediaPlayListener m : ConnectController.this.mMediaPlayListeners) {
                m.onLoading();
            }
        }

        public void onPlaying() {
            Log.v("ConnectController", "playing...");
            for (MediaPlayListener m : ConnectController.this.mMediaPlayListeners) {
                m.onPlaying();
            }
        }

        public void onStopped() {
            Log.v("ConnectController", "stopped");
            for (MediaPlayListener m : ConnectController.this.mMediaPlayListeners) {
                m.onStopped();
            }
        }

        public void onPaused() {
            Log.v("ConnectController", "paused");
            for (MediaPlayListener m : ConnectController.this.mMediaPlayListeners) {
                m.onPaused();
            }
        }

        public void onVolume(int volume) {
        }

        public void onNextAudio(boolean isAuto) {
            Log.v("ConnectController", "onRequestNextItem: " + isAuto);
        }

        public void onPrevAudio(boolean isAuto) {
            Log.v("ConnectController", "onRequestPrevItem: " + isAuto);
        }
    };
    private boolean mDeviceOpen = false;
    private HashMap<String, String> mDevices = new HashMap();
    private Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 100:
                    ConnectController.this.doDeviceAdded((String) msg.obj);
                    break;
                case BaiduSceneResult.SHOOTING /*101*/:
                    ConnectController.this.doDeviceRemoved((String) msg.obj);
                    break;
            }
            super.handleMessage(msg);
        }
    };
    private boolean mIsFirstConnected = false;
    private List<MediaPlayListener> mMediaPlayListeners = new ArrayList();
    private MilinkClientManager mPhotoManager;
    private boolean mPhotoServerConnected = false;
    private Runnable mRefreshDevices = new Runnable() {
        public void run() {
            ConnectController.this.refreshDevices();
        }
    };
    private ArrayList<String> mSlideShowTypes = new ArrayList();
    private SlidingWindow mSlidingWindow = new SlidingWindow();
    private String mWaitConnectDevice = null;

    public interface ConnectListener {
        void onDeviceRefresh(ArrayList<String> arrayList, String str);

        void onDeviceRemoved(String str);

        void onDevicesAdded(String str);

        void onDevicesAvailable(ArrayList<String> arrayList);

        void onPhotoConnectReleased();

        void onPhotoConnectResponse(int i);
    }

    public interface MediaPlayListener {
        void onLoading();

        void onPaused();

        void onPlaying();

        void onStopped();
    }

    public static synchronized ConnectController getInstance() {
        ConnectController connectController;
        synchronized (ConnectController.class) {
            if (mInstance == null) {
                mInstance = new ConnectController();
            }
            connectController = mInstance;
        }
        return connectController;
    }

    private ConnectController() {
    }

    public void open() {
        if (!this.mDeviceOpen) {
            if (this.mPhotoManager == null) {
                this.mPhotoManager = new MilinkClientManager(GalleryApp.sGetAndroidContext());
                this.mPhotoManager.setDeviceName(BuildUtil.getDeviceName(GalleryApp.sGetAndroidContext()));
                this.mPhotoManager.setDataSource(this.mDataSource);
                this.mPhotoManager.setDelegate(this.mDelegate);
            }
            this.mPhotoManager.open();
            this.mDeviceOpen = true;
        }
    }

    public void registConnectListener(ConnectListener listener) {
        removePostDisonnectListener();
        this.mConnectListeners.add(listener);
        this.mHandler.post(this.mRefreshDevices);
    }

    public void registMediaPlayListener(MediaPlayListener listener) {
        if (listener != null) {
            this.mMediaPlayListeners.add(listener);
        }
    }

    public boolean isOpen() {
        return this.mDeviceOpen;
    }

    private boolean deviceOpened() {
        if (this.mDeviceOpen) {
            return true;
        }
        return false;
    }

    public boolean refreshDevices() {
        if (!deviceOpened()) {
            return false;
        }
        queryDevices(true);
        return true;
    }

    private boolean photoServerOpen() {
        return this.mPhotoServerConnected;
    }

    private void setPhotoServerDisconnect() {
        this.mPhotoServerConnected = false;
        this.mWaitConnectDevice = null;
        this.mCurConnectedDevice = null;
    }

    public int connectPhotoServer(String serName) {
        if (!deviceOpened()) {
            return -1;
        }
        String device = (String) this.mDevices.get(serName);
        if (device == null) {
            return -1;
        }
        if (this.mPhotoServerConnected) {
            Log.v("ConnectController", "connect to another device");
            if (this.mPhotoManager.disconnect() != ReturnCode.OK) {
                Log.v("ConnectController", "disconnect error");
            }
            setPhotoServerDisconnect();
        }
        Log.v("ConnectController", "connect to server: " + serName + " photo: " + this.mCurrentPhoto);
        if (this.mPhotoManager.connect(device, nexProject.kAutoThemeClipDuration) != ReturnCode.OK) {
            Log.v("ConnectController", "connect error " + serName);
            return -1;
        }
        this.mWaitConnectDevice = serName;
        return 0;
    }

    public int showType(boolean isSlideShow, int curIndex) {
        if (!photoServerOpen()) {
            return -1;
        }
        if (!isSlideShow) {
            return 0;
        }
        this.mCurrentIndex = curIndex;
        this.mSlidingWindow.onCurrentIndexChanged(this.mCurrentIndex);
        if (this.mPhotoManager.startSlideshow(Math.max(3000, SlideShow.getSlideShowInterval() * 1000), SlideMode.Recyle) != ReturnCode.OK) {
            return -1;
        }
        return 0;
    }

    private int showPhoto(String fileName, int index) {
        if (photoServerOpen()) {
            Log.v("ConnectController", "the photo is: " + fileName + " " + index);
            if (fileName == null) {
                return -1;
            }
            try {
                if (this.mPhotoManager.show(fileName) == ReturnCode.OK) {
                    return 0;
                }
                return -1;
            } catch (IllegalArgumentException e) {
                Log.v("ConnectController", "MilinkClientManager show exception", e);
                return -1;
            }
        }
        Log.v("ConnectController", "photo not connected");
        return -1;
    }

    private void releasePhotoManager() {
        if (this.mPhotoManager != null) {
            this.mPhotoManager.stopShow();
            this.mPhotoManager.disconnect();
        }
    }

    public int release() {
        Log.v("ConnectController", "do release");
        if (this.mPhotoServerConnected) {
            setPhotoServerDisconnect();
            releasePhotoManager();
            doPhotoConnectRelease();
        }
        return 0;
    }

    public void disconnect(ConnectListener listener, boolean force) {
        Log.v("ConnectController", "disconnect");
        unregistConnectListener(listener);
        if (this.mDeviceOpen) {
            doPhotoConnectRelease();
            disconnectBigShow(force);
        }
    }

    public void updateCurrentPhoto(String curPhoto, int index) {
        this.mCurrentPhoto = curPhoto;
        this.mCurrentIndex = index;
        if (!TextUtils.isEmpty(getCurConnectedDevice())) {
            this.mSlidingWindow.onCurrentIndexChanged(this.mCurrentIndex);
            showPhoto(curPhoto, index);
        }
    }

    public void updateCurrentFolder(BaseDataSet mediaSet) {
        this.mSlidingWindow.setMediaSet(mediaSet);
    }

    public String getCurConnectedDevice() {
        return this.mCurConnectedDevice;
    }

    public void unregistConnectListener(ConnectListener listener) {
        this.mConnectListeners.remove(listener);
    }

    private void removePostDisonnectListener() {
        this.mHandler.removeCallbacks(this.mDelayConnect);
    }

    private void disconnectBigShow(boolean force) {
        Log.v("ConnectController", "~~~disconnectBigShow");
        removePostDisonnectListener();
        if (this.mConnectListeners.size() == 0 || force) {
            setPhotoServerDisconnect();
            releasePhotoManager();
            synchronized (this) {
                if (this.mPhotoManager != null) {
                    Log.v("ConnectController", "set device close");
                    this.mDevices.clear();
                    this.mDeviceOpen = false;
                    this.mPhotoManager.close();
                }
            }
        }
    }

    public ArrayList<String> getDeviceList() {
        ArrayList<String> devices = new ArrayList();
        for (Object add : this.mDevices.keySet()) {
            devices.add(add);
        }
        return devices;
    }

    public void queryDevices(boolean refresh) {
        ArrayList<String> devices = getDeviceList();
        if (!devices.isEmpty()) {
            if (refresh) {
                doDeviceRefresh(devices, this.mCurConnectedDevice);
            } else {
                doDeviceAvailable(devices);
            }
        }
    }

    public void syncRemoteView(float cx, float cy, float sw, float sh, float iw, float ih, float s) {
        this.mPhotoManager.zoomPhoto(this.mCurrentPhoto, (int) cx, (int) cy, (int) sw, (int) sh, (int) iw, (int) ih, s);
    }

    private void doDeviceAvailable(ArrayList<String> deviceList) {
        for (ConnectListener listener : this.mConnectListeners) {
            if (listener != null) {
                listener.onDevicesAvailable(deviceList);
            }
        }
    }

    private void doDeviceAdded(String newDevice) {
        for (ConnectListener listener : this.mConnectListeners) {
            if (listener != null) {
                listener.onDevicesAdded(newDevice);
            }
        }
    }

    private void doDeviceRemoved(String removedDevice) {
        for (ConnectListener listener : this.mConnectListeners) {
            if (listener != null) {
                listener.onDeviceRemoved(removedDevice);
            }
        }
    }

    private void doDeviceRefresh(ArrayList<String> deviceList, String curDevice) {
        for (ConnectListener listener : this.mConnectListeners) {
            if (listener != null) {
                listener.onDeviceRefresh(deviceList, curDevice);
            }
        }
    }

    private void doPhotoConnectResponse(int result) {
        for (ConnectListener listener : this.mConnectListeners) {
            if (listener != null) {
                listener.onPhotoConnectResponse(result);
            }
        }
    }

    private void doPhotoConnectRelease() {
        for (ConnectListener listener : this.mConnectListeners) {
            if (listener != null) {
                listener.onPhotoConnectReleased();
            }
        }
    }

    public void playVideo(String filePath, String title, String deviceName) {
        if (this.mPhotoManager != null && !TextUtils.isEmpty(filePath)) {
            try {
                this.mPhotoManager.startPlay(URLEncoder.encode(filePath, Keyczar.DEFAULT_ENCODING), title, 0, 0.0d, MediaType.Video);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isPlaying() {
        if (this.mPhotoManager == null) {
            return false;
        }
        if (this.mPhotoManager.getPlaybackRate() == 1) {
            return true;
        }
        return false;
    }

    public void resume() {
        if (this.mPhotoManager != null) {
            this.mPhotoManager.setPlaybackRate(1);
        }
    }

    public void pause() {
        if (this.mPhotoManager != null) {
            this.mPhotoManager.setPlaybackRate(0);
        }
    }

    public int getDuration() {
        if (this.mPhotoManager != null) {
            return this.mPhotoManager.getPlaybackDuration();
        }
        return 0;
    }

    public int getCurrentPosition() {
        if (this.mPhotoManager != null) {
            return this.mPhotoManager.getPlaybackProgress();
        }
        return 0;
    }

    public void seekTo(int pos) {
        if (this.mPhotoManager != null) {
            this.mPhotoManager.setPlaybackProgress(pos);
        }
    }

    public void stop() {
        if (this.mPhotoManager != null) {
            this.mPhotoManager.stopPlay();
        }
    }
}
