.class Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;
.super Landroid/os/AsyncTask;
.source "PickFaceAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickFaceAlbumActivity;
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
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickFaceAlbumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->access$000(Lcom/miui/gallery/picker/PickFaceAlbumActivity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->finish()V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "local_id_of_album"

    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "local_id_of_album"

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
