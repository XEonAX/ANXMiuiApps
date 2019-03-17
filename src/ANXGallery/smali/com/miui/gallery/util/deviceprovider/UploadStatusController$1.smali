.class Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;
.super Landroid/os/AsyncTask;
.source "UploadStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->checkPendingStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->this$0:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->this$0:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-static {v1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->access$000(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)Z

    move-result v0

    .line 175
    .local v0, "oldPendingStatus":Z
    iget-object v2, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->this$0:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/miui/gallery/cloud/UpDownloadManager;->instance(I)Lcom/miui/gallery/cloud/UpDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/UpDownloadManager;->hasDelayedItem()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 176
    invoke-static {v1}, Lcom/miui/gallery/cloud/UpDownloadManager;->instance(I)Lcom/miui/gallery/cloud/UpDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/UpDownloadManager;->hasDelayedItem()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 175
    :goto_0
    invoke-static {v2, v1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->access$002(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;Z)Z

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->this$0:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-static {v1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->access$000(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->this$0:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-static {v1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->access$100(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)V

    .line 180
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 176
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
