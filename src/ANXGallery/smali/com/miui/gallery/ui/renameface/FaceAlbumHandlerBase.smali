.class public abstract Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;
.super Ljava/lang/Object;
.source "FaceAlbumHandlerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;,
        Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;,
        Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;,
        Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

.field protected mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "faceSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mActivity:Landroid/app/Activity;

    .line 128
    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 129
    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    .line 130
    return-void
.end method


# virtual methods
.method protected showInputFolderNameDialog(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "originalName"    # Ljava/lang/String;
    .param p3, "isRelationSetted"    # Z

    .prologue
    .line 147
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "original_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "is_relation_setted"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const-string v2, "original_path_album_local_id"

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    const/16 v2, 0x13

    if-ne p1, v2, :cond_1

    .line 155
    const-string v2, "only_use_contact"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method
