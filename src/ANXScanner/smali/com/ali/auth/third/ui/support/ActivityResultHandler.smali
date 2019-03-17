.class public interface abstract Lcom/ali/auth/third/ui/support/ActivityResultHandler;
.super Ljava/lang/Object;


# static fields
.field public static final CALLBACK_CONTEXT:I = 0x1

.field public static final REQUEST_CODE_KEY:Ljava/lang/String; = "requestCodeKey"

.field public static final TAE_SDK_ACTIVITY:I = 0x2


# virtual methods
.method public abstract onActivityResult(IIILandroid/content/Intent;Landroid/app/Activity;Ljava/util/Map;Landroid/webkit/WebView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/content/Intent;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation
.end method
