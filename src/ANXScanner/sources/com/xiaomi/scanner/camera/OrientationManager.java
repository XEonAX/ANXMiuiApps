package com.xiaomi.scanner.camera;

import com.alibaba.fastjson.asm.Opcodes;

public interface OrientationManager {

    public interface OrientationChangeListener {
        void onOrientationChange(int i);
    }

    public enum DeviceOrientation {
        CLOCKWISE_0(0),
        CLOCKWISE_90(90),
        CLOCKWISE_180(Opcodes.GETFIELD),
        CLOCKWISE_270(270);
        
        private final int mDegrees;

        private DeviceOrientation(int degrees) {
            this.mDegrees = degrees;
        }

        public int getDegrees() {
            return this.mDegrees;
        }

        public static DeviceOrientation from(int degrees) {
            switch (degrees) {
                case -1:
                    return CLOCKWISE_0;
                case 0:
                    return CLOCKWISE_0;
                case 90:
                    return CLOCKWISE_90;
                case Opcodes.GETFIELD /*180*/:
                    return CLOCKWISE_180;
                case 270:
                    return CLOCKWISE_270;
                default:
                    int normalizedDegrees = (((Math.abs(degrees / 360) * 360) + 360) + degrees) % 360;
                    if (normalizedDegrees > 315 || normalizedDegrees <= 45) {
                        return CLOCKWISE_0;
                    }
                    if (normalizedDegrees > 45 && normalizedDegrees <= 135) {
                        return CLOCKWISE_90;
                    }
                    if (normalizedDegrees <= 135 || normalizedDegrees > 225) {
                        return CLOCKWISE_270;
                    }
                    return CLOCKWISE_180;
            }
        }
    }

    DeviceOrientation getDeviceOrientation();

    void pause();

    void resume();
}
