.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;
.super Landroid/os/AsyncTask;
.source "BabyAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->setBabyAlbumBg(J)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

.field final synthetic val$photoId:J

.field final synthetic val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iput-wide p3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->val$photoId:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->val$thumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iget-wide v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->val$photoId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->setBgImage(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1600(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->rebindHeaderPic(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method
