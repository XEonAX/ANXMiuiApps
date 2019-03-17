.class Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;
.super Ljava/lang/Object;
.source "AlbumPageHeaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/AlbumPageHeaderController$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageHeaderController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;->this$1:Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;->this$1:Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$000(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;->this$1:Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$000(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;->this$1:Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$300(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;->this$1:Lcom/miui/gallery/ui/AlbumPageHeaderController$1;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 224
    :cond_0
    return-void
.end method
