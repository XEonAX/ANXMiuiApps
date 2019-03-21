package com.miui.gallery.editor.photo.app.crop;

public class AutoCropData {
    public double angle;
    public int rotationResult;

    public boolean canAutoRotation() {
        return this.rotationResult == 0 && Math.abs(this.angle) > 0.10000000149011612d && Math.abs(this.angle) <= 10.0d;
    }

    public float getDegree() {
        return -((float) this.angle);
    }
}
