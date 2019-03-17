package com.xiaomi.scanner.camera;

import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Build.VERSION;
import android.util.SparseIntArray;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class SoundPlayer {
    private static final Tag TAG = new Tag("sound");
    private final AudioManager mAudioManager = ((AudioManager) ScannerApp.getAndroidContext().getSystemService("audio"));
    private boolean mIsReleased = false;
    private final SparseIntArray mResourceToSoundId = new SparseIntArray();
    private final SoundPool mSoundPool = new SoundPool(1, 3, 0);

    public void loadSound(int resourceId) {
        try {
            this.mResourceToSoundId.put(resourceId, this.mSoundPool.load(ScannerApp.getAndroidContext(), resourceId, 1));
        } catch (Exception e) {
            Log.e(TAG, "loadSound error " + e);
        }
    }

    public void play(int resourceId, float volume) {
        if (isCanPlaySound()) {
            Integer soundId = Integer.valueOf(this.mResourceToSoundId.get(resourceId));
            if (soundId == null) {
                throw new IllegalStateException("Sound not loaded. Must call #loadSound first.");
            }
            this.mSoundPool.play(soundId.intValue(), volume, volume, 0, 0, 1.0f);
        }
    }

    public boolean isCanPlaySound() {
        return this.mAudioManager != null && this.mAudioManager.getRingerMode() == 2;
    }

    public boolean isUseHeadset() {
        if (this.mAudioManager == null || VERSION.SDK_INT < 23) {
            return false;
        }
        AudioDeviceInfo[] deviceInfos = this.mAudioManager.getDevices(1);
        if (deviceInfos == null) {
            return false;
        }
        for (AudioDeviceInfo info : deviceInfos) {
            if (info.getType() == 3 || info.getType() == 4 || info.getType() == 7) {
                return true;
            }
        }
        return false;
    }

    public void unloadSound(int resourceId) {
        Integer soundId = Integer.valueOf(this.mResourceToSoundId.get(resourceId));
        if (soundId == null) {
            throw new IllegalStateException("Sound not loaded. Must call #loadSound first.");
        }
        this.mSoundPool.unload(soundId.intValue());
    }

    public void release() {
        this.mIsReleased = true;
        this.mSoundPool.release();
    }

    public boolean isReleased() {
        return this.mIsReleased;
    }
}
