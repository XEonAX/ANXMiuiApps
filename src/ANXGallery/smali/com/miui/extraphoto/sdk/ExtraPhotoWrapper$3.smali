.class Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;
.super Ljava/lang/Object;
.source "ExtraPhotoWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->callbackStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    iput-boolean p2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-static {v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$200(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-static {v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$200(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->resumeEcho()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-static {v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$300(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-static {v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$300(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->val$success:Z

    invoke-interface {v1, v2}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;->onStarted(Z)V

    .line 112
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;->this$0:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->access$302(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    .line 114
    :cond_1
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
