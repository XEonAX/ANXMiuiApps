.class Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;
.super Ljava/lang/Object;
.source "PhotoPageFaceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFaceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceHandler"
.end annotation


# instance fields
.field mCurrentFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

.field mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

.field private mRemoveFromFaceAlbumListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V
    .locals 1

    .prologue
    .line 233
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mRemoveFromFaceAlbumListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 261
    return-void
.end method

.method public getRecommendFaceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    const-string v1, "recommend_face_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return-void
.end method

.method public removeFace(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V
    .locals 7
    .param p1, "face"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 280
    new-instance v1, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    .line 281
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v3, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 282
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    iget-object v6, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mRemoveFromFaceAlbumListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    .line 284
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mCurrentFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 285
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->show()V

    .line 286
    return-void
.end method

.method public renameFace(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V
    .locals 7
    .param p1, "face"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 264
    new-instance v2, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 266
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    iget-object v6, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;)V

    iget v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->relationType:I

    .line 275
    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->isUnKnownRelation(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;Z)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->show()V

    .line 277
    return-void

    .line 275
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldShow()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method
