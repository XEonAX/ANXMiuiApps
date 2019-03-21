package com.nostra13.universalimageloader.core.assist;

import com.nexstreaming.nexeditorsdk.nexClip;
import java.io.Serializable;

public class ImageSize implements Serializable {
    private final int height;
    private final int width;

    public ImageSize(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public ImageSize(int width, int height, int rotation) {
        if (rotation % nexClip.kClip_Rotate_180 == 0) {
            this.width = width;
            this.height = height;
            return;
        }
        this.width = height;
        this.height = width;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public ImageSize scaleDown(int sampleSize) {
        return new ImageSize(this.width / sampleSize, this.height / sampleSize);
    }

    public ImageSize scale(float scale) {
        return new ImageSize((int) (((float) this.width) * scale), (int) (((float) this.height) * scale));
    }

    public String toString() {
        return this.width + "x" + this.height;
    }
}
