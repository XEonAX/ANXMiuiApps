package android.support.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

public interface Animatable2Compat extends Animatable {

    public static abstract class AnimationCallback {
        android.graphics.drawable.Animatable2.AnimationCallback mPlatformCallback;

        public void onAnimationStart(Drawable drawable) {
        }

        public void onAnimationEnd(Drawable drawable) {
        }

        @RequiresApi(23)
        android.graphics.drawable.Animatable2.AnimationCallback getPlatformCallback() {
            if (this.mPlatformCallback == null) {
                this.mPlatformCallback = new android.graphics.drawable.Animatable2.AnimationCallback() {
                    public void onAnimationStart(Drawable drawable) {
                        AnimationCallback.this.onAnimationStart(drawable);
                    }

                    public void onAnimationEnd(Drawable drawable) {
                        AnimationCallback.this.onAnimationEnd(drawable);
                    }
                };
            }
            return this.mPlatformCallback;
        }
    }

    void clearAnimationCallbacks();

    void registerAnimationCallback(@NonNull AnimationCallback animationCallback);

    boolean unregisterAnimationCallback(@NonNull AnimationCallback animationCallback);
}
