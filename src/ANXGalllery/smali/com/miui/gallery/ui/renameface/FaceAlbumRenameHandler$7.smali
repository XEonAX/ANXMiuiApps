.class Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;
.super Ljava/lang/Object;
.source "FaceAlbumRenameHandler.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->rename(Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V
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

.field final synthetic val$contact:Lcom/miui/gallery/model/PeopleContactInfo;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->val$newName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->val$contact:Lcom/miui/gallery/model/PeopleContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "merge":Z
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v2, v2, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v0, v2, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 285
    .local v0, "faceset":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :goto_0
    if-eqz v0, :cond_0

    .line 286
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v2, v2, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->val$newName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->val$contact:Lcom/miui/gallery/model/PeopleContactInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)Z

    move-result v1

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$600(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$600(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->val$newName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;->onConfirm(Ljava/lang/String;Z)V

    .line 291
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 284
    .end local v0    # "faceset":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->access$500(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    move-object v0, v2

    goto :goto_0
.end method
