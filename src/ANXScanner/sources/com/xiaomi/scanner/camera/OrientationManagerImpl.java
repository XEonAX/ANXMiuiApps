package com.xiaomi.scanner.camera;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.camera.OrientationManager.DeviceOrientation;
import com.xiaomi.scanner.camera.OrientationManager.OrientationChangeListener;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class OrientationManagerImpl implements OrientationManager, SensorEventListener {
    private static final Tag TAG = new Tag("OrientMgrImpl");
    private DeviceOrientation mLastDeviceOrientation = DeviceOrientation.CLOCKWISE_0;
    private OrientationChangeListener mOrientationChangeListener;
    private Sensor mOrientationSensor;
    private SensorManager mSensorManager = ((SensorManager) ScannerApp.getAndroidContext().getSystemService("sensor"));

    public OrientationManagerImpl(Activity activity, Handler handler, OrientationChangeListener listener) {
        if (this.mSensorManager != null) {
            this.mOrientationSensor = this.mSensorManager.getDefaultSensor(3);
        }
        this.mOrientationChangeListener = listener;
    }

    public void resume() {
        if (this.mSensorManager != null && this.mOrientationSensor != null) {
            this.mSensorManager.registerListener(this, this.mOrientationSensor, 2);
        }
    }

    public void pause() {
        if (this.mSensorManager != null) {
            this.mSensorManager.unregisterListener(this);
        }
    }

    public DeviceOrientation getDeviceOrientation() {
        return this.mLastDeviceOrientation;
    }

    public void onSensorChanged(SensorEvent event) {
        if (event.sensor.getType() == 3) {
            DeviceOrientation newDeviceOrientation = genNewDeviceOrientation((float[]) event.values.clone());
            if (this.mLastDeviceOrientation != newDeviceOrientation) {
                this.mLastDeviceOrientation = newDeviceOrientation;
                if (this.mOrientationChangeListener != null) {
                    this.mOrientationChangeListener.onOrientationChange(newDeviceOrientation.getDegrees());
                }
            }
        }
    }

    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    private DeviceOrientation genNewDeviceOrientation(float[] value) {
        try {
            float degreeZ = value[2];
            float degreeY = value[1];
            if (degreeZ >= 40.0f) {
                return DeviceOrientation.CLOCKWISE_270;
            }
            if (degreeZ <= -40.0f) {
                return DeviceOrientation.CLOCKWISE_90;
            }
            if (degreeY >= 40.0f) {
                return DeviceOrientation.CLOCKWISE_180;
            }
            if (degreeY <= -40.0f) {
                return DeviceOrientation.CLOCKWISE_0;
            }
            return this.mLastDeviceOrientation;
        } catch (Exception e) {
            Log.e(TAG, "genNewDeviceOrientation error " + e);
            return DeviceOrientation.CLOCKWISE_0;
        }
    }
}
