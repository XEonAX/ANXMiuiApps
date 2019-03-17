.class public Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;
.super Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;
.source "RemoveFromFaceAlbumHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "faceSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 2
    .param p1, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;

    iget-object v1, p1, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "item":Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;
    invoke-virtual {p1}, Lcom/miui/gallery/model/PeopleContactInfo;->formatContactJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->setContactjson(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    invoke-interface {v1, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;->onGetFolderItem(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    .line 46
    .end local v0    # "item":Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 50
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c040a

    .line 51
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0411

    .line 52
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x1040000

    .line 53
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    new-instance v4, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$1;-><init>(Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;)V

    invoke-virtual {v2, v1, v3, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 81
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    return-void
.end method

.method public showRemoveDialog()V
    .locals 5

    .prologue
    .line 85
    new-instance v1, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;-><init>()V

    .line 86
    .local v1, "dialog":Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "people_face_Merge_title"

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0410

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "merge_action_from_album"

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PeopleFaceMergeDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    new-instance v2, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler$2;-><init>(Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->setPeopleSelectListener(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;)V

    .line 104
    return-void
.end method
