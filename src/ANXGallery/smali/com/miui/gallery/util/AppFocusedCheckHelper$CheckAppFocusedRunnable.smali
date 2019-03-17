.class Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedRunnable;
.super Ljava/lang/Object;
.source "AppFocusedCheckHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/AppFocusedCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckAppFocusedRunnable"
.end annotation


# instance fields
.field private final mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedRunnable;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedRunnable;->mCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;

    .line 75
    .local v0, "callback":Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;->onCheck(Z)V

    .line 78
    :cond_0
    return-void
.end method
