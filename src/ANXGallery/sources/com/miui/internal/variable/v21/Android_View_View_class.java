package com.miui.internal.variable.v21;

import android.content.Context;
import android.util.AttributeSet;
import android.view.RenderNode;
import android.view.View;
import com.miui.internal.R;
import com.miui.internal.util.TaggingDrawableHelper;
import miui.util.AttributeResolver;

public class Android_View_View_class extends com.miui.internal.variable.v19.Android_View_View_class {
    public void buildProxy() {
        super.buildProxy();
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;II)V");
    }

    protected void handle() {
        handle_init_(0, null, null, null, 0, 0);
        handleSetDisplayListProperties(0, null, (RenderNode) null);
        super.handle();
    }

    protected void attachSpecialMethods() {
        attachMethod("setDisplayListProperties", "(Landroid/view/RenderNode;)V");
    }

    protected void handle_init_(long j, View view, Context context, AttributeSet attributeSet, int i, int i2) {
        original_init_(j, view, context, attributeSet, i, i2);
        TaggingDrawableHelper.initViewSequenceStates(view, attributeSet);
    }

    protected void original_init_(long j, View view, Context context, AttributeSet attributeSet, int i, int i2) {
        throw new IllegalStateException("com.miui.internal.variable.v21.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int, int)");
    }

    protected void handleSetDisplayListProperties(long j, View view, RenderNode renderNode) {
        originalSetDisplayListProperties(j, view, renderNode);
        if (renderNode != null && !AttributeResolver.resolveBoolean(view.getContext(), R.attr.hasOverlappingRendering, true)) {
            renderNode.setHasOverlappingRendering(false);
        }
    }

    protected void originalSetDisplayListProperties(long j, View view, RenderNode renderNode) {
        throw new IllegalStateException("com.miui.internal.variable.v21.Android_View_View_class.originalSetDisplayListProperties(long, View, RenderNode)");
    }
}
