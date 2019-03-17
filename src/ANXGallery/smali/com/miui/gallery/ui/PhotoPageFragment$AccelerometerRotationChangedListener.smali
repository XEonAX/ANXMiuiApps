.class final Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;
.super Landroid/database/ContentObserver;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccelerometerRotationChangedListener"
.end annotation


# instance fields
.field private final mManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "manager"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2428
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2429
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 2430
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 2434
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;->mManagerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-object v0, v1

    .line 2435
    .local v0, "manager":Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    :goto_0
    if-eqz v0, :cond_0

    .line 2436
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->onAccelerometerRotationChanged()V

    .line 2438
    :cond_0
    return-void

    .line 2434
    .end local v0    # "manager":Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
