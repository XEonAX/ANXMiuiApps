.class Lcom/android/ex/camera2/portability/CameraStateHolder$2;
.super Ljava/lang/Object;
.source "CameraStateHolder.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraStateHolder;->waitToAvoidStates(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field final synthetic val$states:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraStateHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraStateHolder;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraStateHolder$2;->this$0:Lcom/android/ex/camera2/portability/CameraStateHolder;

    iput p2, p0, Lcom/android/ex/camera2/portability/CameraStateHolder$2;->val$states:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder$2;->val$states:I

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraStateHolder$2;->this$0:Lcom/android/ex/camera2/portability/CameraStateHolder;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
