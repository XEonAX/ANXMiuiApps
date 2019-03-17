package com.xiaomi.scanner.camera;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.util.Iterator;
import java.util.LinkedList;

public class MotionManager {
    private static final double ACCELEROMETER_GAP_TOLERANCE = 1.0d;
    private static final long EVENT_PROCESS_INTERVAL = 100000000;
    private static final long EVENT_TIME_OUT = 1000000000;
    private static final double GYROSCOPE_FOCUS_THRESHOLD = 0.5235987755982988d;
    private static final double GYROSCOPE_IGNORE_THRESHOLD = 0.05000000074505806d;
    private static final double GYROSCOPE_MOVING_THRESHOLD = 1.5d;
    private static final float NS2S = 1.0E-9f;
    private static final Tag TAG = new Tag("MotionManager");
    private long mAccelerometerTimeStamp = 0;
    private double mAngleTotal = 0.0d;
    private final Sensor mGyroscope;
    private SensorEventListener mGyroscopeListener = new SensorEventListener() {
        public void onSensorChanged(SensorEvent e) {
            long elapseTime = Math.abs(e.timestamp - MotionManager.this.mGyroscopeTimeStamp);
            if (elapseTime >= MotionManager.EVENT_PROCESS_INTERVAL && MotionManager.this.isEnabled()) {
                if (MotionManager.this.mGyroscopeTimeStamp == 0 || elapseTime > MotionManager.EVENT_TIME_OUT) {
                    MotionManager.this.mGyroscopeTimeStamp = e.timestamp;
                    return;
                }
                float dT = ((float) elapseTime) * MotionManager.NS2S;
                double w = Math.sqrt((double) (((e.values[0] * e.values[0]) + (e.values[1] * e.values[1])) + (e.values[2] * e.values[2])));
                MotionManager.this.mGyroscopeTimeStamp = e.timestamp;
                if (w > MotionManager.GYROSCOPE_MOVING_THRESHOLD) {
                    MotionManager.this.deviceMoving();
                } else if (w >= MotionManager.GYROSCOPE_IGNORE_THRESHOLD) {
                    MotionManager.this.mAngleTotal = MotionManager.this.mAngleTotal + (((double) dT) * w);
                    if (MotionManager.this.mAngleTotal > MotionManager.GYROSCOPE_FOCUS_THRESHOLD) {
                        MotionManager.this.mAngleTotal = 0.0d;
                        MotionManager.this.deviceMoving();
                    }
                }
            }
        }

        public void onAccuracyChanged(Sensor sensor, int accuracy) {
        }
    };
    private long mGyroscopeTimeStamp = 0;
    private boolean mIsEnabled = false;
    private SensorEventListener mLinearAccelerationListener = new SensorEventListener() {
        public void onSensorChanged(SensorEvent e) {
            long elapseTime = Math.abs(e.timestamp - MotionManager.this.mAccelerometerTimeStamp);
            if (elapseTime >= MotionManager.EVENT_PROCESS_INTERVAL && MotionManager.this.isEnabled()) {
                if (MotionManager.this.mAccelerometerTimeStamp == 0 || elapseTime > MotionManager.EVENT_TIME_OUT) {
                    MotionManager.this.mAccelerometerTimeStamp = e.timestamp;
                    return;
                }
                double a = Math.sqrt((double) (((e.values[0] * e.values[0]) + (e.values[1] * e.values[1])) + (e.values[2] * e.values[2])));
                MotionManager.this.mAccelerometerTimeStamp = e.timestamp;
                if (a > MotionManager.ACCELEROMETER_GAP_TOLERANCE) {
                    MotionManager.this.deviceMoving();
                }
            }
        }

        public void onAccuracyChanged(Sensor sensor, int accuracy) {
        }
    };
    private final Sensor mLinearAccelerometer;
    private final LinkedList<MotionListener> mListeners = new LinkedList();
    private final SensorManager mSensorManager;

    public interface MotionListener {
        void onMoving();
    }

    public MotionManager(Context context) {
        this.mSensorManager = (SensorManager) context.getSystemService("sensor");
        this.mGyroscope = this.mSensorManager.getDefaultSensor(4);
        this.mLinearAccelerometer = this.mSensorManager.getDefaultSensor(10);
    }

    public void addListener(MotionListener listener) {
        this.mListeners.add(listener);
    }

    public void removeListener(MotionListener listener) {
        this.mListeners.remove(listener);
    }

    public void reset() {
        Log.v(TAG, "reset");
        this.mListeners.clear();
        stop();
    }

    public void start() {
        Log.v(TAG, "start: enable=" + this.mIsEnabled);
        if (!this.mIsEnabled) {
            this.mIsEnabled = true;
            if (this.mGyroscope != null) {
                this.mSensorManager.registerListener(this.mGyroscopeListener, this.mGyroscope, 2);
            } else if (this.mLinearAccelerometer != null) {
                this.mSensorManager.registerListener(this.mLinearAccelerationListener, this.mLinearAccelerometer, 2);
            }
        }
    }

    public void stop() {
        Log.v(TAG, "stop: enable=" + this.mIsEnabled);
        if (this.mIsEnabled) {
            this.mIsEnabled = false;
            if (this.mGyroscope != null) {
                this.mSensorManager.unregisterListener(this.mGyroscopeListener);
            } else if (this.mLinearAccelerationListener != null) {
                this.mSensorManager.unregisterListener(this.mLinearAccelerationListener);
            }
        }
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    private void deviceMoving() {
        Iterator it = ((LinkedList) this.mListeners.clone()).iterator();
        while (it.hasNext()) {
            ((MotionListener) it.next()).onMoving();
        }
    }
}
