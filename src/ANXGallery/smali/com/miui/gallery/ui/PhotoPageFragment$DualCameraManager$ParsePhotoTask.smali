.class Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;
.super Landroid/os/AsyncTask;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParsePhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .prologue
    .line 3426
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3430
    aget-object v1, p1, v3

    .line 3431
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3432
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->access$5100(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->isExtraPhoto(Ljava/lang/String;)Z

    move-result v0

    .line 3433
    .local v0, "dualCamera":Z
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3434
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3439
    .end local v0    # "dualCamera":Z
    :goto_0
    return-object v2

    .line 3436
    .restart local v0    # "dualCamera":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 3439
    .end local v0    # "dualCamera":Z
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3426
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "dualCamera"    # Ljava/lang/Boolean;

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3449
    :goto_0
    return-void

    .line 3447
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->access$5202(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;I)I

    .line 3448
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->access$5300(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;Z)V

    goto :goto_0

    .line 3447
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3426
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
