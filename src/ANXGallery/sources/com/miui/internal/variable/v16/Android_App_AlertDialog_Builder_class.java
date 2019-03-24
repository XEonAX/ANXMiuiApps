package com.miui.internal.variable.v16;

import android.app.AlertDialog.Builder;
import android.content.Context;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;

public class Android_App_AlertDialog_Builder_class extends com.miui.internal.variable.Android_App_AlertDialog_Builder_class {
    private static final Field lh = Field.of(Builder.class, "P", "Lcom/android/internal/app/AlertController$AlertParams;");

    public void buildProxy() {
        attachConstructor("(Landroid/content/Context;I)V");
    }

    protected void handle() {
        handle_init_(0, null, null, 0);
    }

    protected void handle_init_(long j, Builder builder, Context context, int i) {
        original_init_(j, builder, context, i);
        try {
            lh.set((Object) builder, new AlertParams(builder.getContext()));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("P", e);
        }
    }

    protected void original_init_(long j, Builder builder, Context context, int i) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_App_AlertDialog_Builder_class.original_init_(long, AlertDialog.Builder, Context, int)");
    }
}
