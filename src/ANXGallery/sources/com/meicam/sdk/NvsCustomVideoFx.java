package com.meicam.sdk;

import java.nio.ByteBuffer;

public class NvsCustomVideoFx {

    public static class RenderContext {
        public long effectEndTime;
        public long effectStartTime;
        public long effectTime;
        public boolean hasBuddyVideoFrame;
        public RenderHelper helper;
        public NvsVideoFrameInfo inputBuddyVideoFrameInfo;
        public ByteBuffer inputBuddyVideoFramebuffer;
        public VideoFrame inputVideoFrame;
        public VideoFrame outputVideoFrame;
    }

    public interface RenderHelper {
        int allocateRGBATexture(int i, int i2);

        void reclaimTexture(int i);
    }

    public interface Renderer {
        void onCleanup();

        void onInit();

        void onPreloadResources();

        void onRender(RenderContext renderContext);
    }

    public static class VideoFrame {
        public int height;
        public boolean isUpsideDownTexture;
        public int texId;
        public int width;
    }
}
