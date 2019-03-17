.class Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;
.super Ljava/lang/Object;
.source "FaceAlbumRenameHandler.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mergeLotsPeopleTo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field final synthetic val$folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;->val$folderName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 301
    invoke-static {v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$500(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;->val$folderName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->merge(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    return-object v0
.end method
