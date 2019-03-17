.class Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;
.super Ljava/lang/Object;
.source "MovieDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResourceWithCheck(Landroid/app/Activity;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

.field final synthetic val$data:Lcom/miui/gallery/movie/entity/MovieResource;

.field final synthetic val$onCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/utils/MovieDownloadManager;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;->this$0:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    iput-object p3, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;->val$onCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 44
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;->this$0:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    iget-object v1, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    iget-object v2, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;->val$onCompletedListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;Z)V

    .line 39
    return-void
.end method
