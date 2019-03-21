package com.miui.gallery.editor.photo.widgets.overscroll;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.MotionEvent;
import android.view.View;
import com.miui.gallery.editor.photo.widgets.overscroll.IOverScrollInterface.IOverScrollDecoratorAdapter;

public class HorizontalOverScrollBounceEffectDecorator extends OverScrollBounceEffectDecoratorBase {

    protected static class AnimationAttributesHorizontal extends AnimationAttributes {
        public AnimationAttributesHorizontal() {
            this.mProperty = View.TRANSLATION_X;
        }

        protected void init(View view) {
            this.mAbsOffset = view.getTranslationX();
            this.mMaxOffset = (float) view.getWidth();
        }
    }

    protected static class MotionAttributesHorizontal extends MotionAttributes {
        protected MotionAttributesHorizontal() {
        }

        public boolean init(View view, MotionEvent event) {
            boolean z = false;
            if (event.getHistorySize() == 0) {
                return false;
            }
            float dx = event.getX(0) - event.getHistoricalX(0, 0);
            if (Math.abs(dx) < Math.abs(event.getY(0) - event.getHistoricalY(0, 0))) {
                return false;
            }
            this.mAbsOffset = view.getTranslationX();
            this.mDeltaOffset = dx;
            if (this.mDeltaOffset > 0.0f) {
                z = true;
            }
            this.mDir = z;
            return true;
        }
    }

    public static void setOverScrollEffect(RecyclerView recyclerView) {
        HorizontalOverScrollBounceEffectDecorator horizontalOverScrollBounceEffectDecorator = new HorizontalOverScrollBounceEffectDecorator(new RecyclerViewOverScrollDecorAdapter(recyclerView));
    }

    public static void setOverScrollEffect(RecyclerView recyclerView, Callback itemTouchHelperCallback) {
        HorizontalOverScrollBounceEffectDecorator horizontalOverScrollBounceEffectDecorator = new HorizontalOverScrollBounceEffectDecorator(new RecyclerViewOverScrollDecorAdapter(recyclerView, itemTouchHelperCallback));
    }

    public HorizontalOverScrollBounceEffectDecorator(IOverScrollDecoratorAdapter viewAdapter) {
        this(viewAdapter, 3.0f, 1.0f, -2.0f);
    }

    public HorizontalOverScrollBounceEffectDecorator(IOverScrollDecoratorAdapter viewAdapter, float touchDragRatioFwd, float touchDragRatioBck, float decelerateFactor) {
        super(viewAdapter, decelerateFactor, touchDragRatioFwd, touchDragRatioBck);
    }

    protected MotionAttributes createMotionAttributes() {
        return new MotionAttributesHorizontal();
    }

    protected AnimationAttributes createAnimationAttributes() {
        return new AnimationAttributesHorizontal();
    }

    protected void translateView(View view, float offset) {
        view.setTranslationX(offset);
    }

    protected void translateViewAndEvent(View view, float offset, MotionEvent event) {
        view.setTranslationX(offset);
        event.offsetLocation(offset - event.getX(0), 0.0f);
    }
}
