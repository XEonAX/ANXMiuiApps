.class Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;
.super Landroid/os/AsyncTask;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EchoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mEchoListener:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

.field private mPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 732
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mPath:Ljava/lang/String;

    .line 733
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->cancel(Z)Z

    .line 737
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mEchoListener:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->getInstance()Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mEchoListener:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->unregisterEchoListener(Lcom/miui/extraphoto/sdk/BaseEchoListener;)V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mEchoListener:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

    .line 741
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 745
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->getInstance()Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->needEcho(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 726
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "needEcho"    # Ljava/lang/Boolean;

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "PhotoPageImageItem"

    const-string v1, "need echo %s"

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->access$2100(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;)V

    .line 753
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mEchoListener:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

    .line 754
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->getInstance()Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->mEchoListener:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->echo(Ljava/lang/String;Lcom/miui/extraphoto/sdk/BaseEchoListener;Z)Z

    .line 756
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 726
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
