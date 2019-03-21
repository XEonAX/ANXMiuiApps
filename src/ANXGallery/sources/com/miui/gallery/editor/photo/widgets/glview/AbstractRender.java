package com.miui.gallery.editor.photo.widgets.glview;

import android.opengl.GLSurfaceView.Renderer;
import java.util.LinkedList;
import javax.microedition.khronos.opengles.GL10;

public abstract class AbstractRender implements Renderer {
    private final LinkedList<Runnable> mRunOnDraw = new LinkedList();

    protected void runPendingOnDrawTasks() {
        synchronized (this.mRunOnDraw) {
            while (!this.mRunOnDraw.isEmpty()) {
                ((Runnable) this.mRunOnDraw.removeFirst()).run();
            }
        }
    }

    public void runOnDraw(Runnable runnable) {
        synchronized (this.mRunOnDraw) {
            this.mRunOnDraw.addLast(runnable);
        }
    }

    public void onDrawFrame(GL10 gl) {
        runPendingOnDrawTasks();
    }
}
