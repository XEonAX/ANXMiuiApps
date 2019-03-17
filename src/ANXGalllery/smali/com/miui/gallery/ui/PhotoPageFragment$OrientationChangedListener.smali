.class final Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrientationChangedListener"
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
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2411
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 2412
    return-void
.end method


# virtual methods
.method public onOrientationChanged(II)V
    .locals 2
    .param p1, "oldOrientation"    # I
    .param p2, "newOrientation"    # I

    .prologue
    .line 2416
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;->mManagerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-object v0, v1

    .line 2417
    .local v0, "manager":Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    :goto_0
    if-eqz v0, :cond_0

    .line 2418
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->onSensorOrientationChanged(II)V

    .line 2420
    :cond_0
    return-void

    .line 2416
    .end local v0    # "manager":Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
