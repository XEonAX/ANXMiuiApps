.class public Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
.super Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;
.source "FaceAlbumRenameHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;,
        Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;
    }
.end annotation


# instance fields
.field private mConfirmListener:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

.field private mFacePathsToBeMoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFaceSetsMergeOperation:Z

.field private mIsFacesMoveOperation:Z

.field private mIsRelationSetted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "faceSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "faceSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;
    .param p4, "isRelationSetted"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsFaceSetsMergeOperation:Z

    .line 55
    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mConfirmListener:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    .line 56
    iput-boolean p4, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsRelationSetted:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ">;",
            "Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "faceSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;>;"
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    .line 30
    iput-boolean v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsFaceSetsMergeOperation:Z

    .line 62
    iput-boolean v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsFaceSetsMergeOperation:Z

    .line 63
    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    .line 64
    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mConfirmListener:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->showInputFolderNameDialog(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->onClick(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->moveFacesTo(Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->rename(Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mergeLotsPeopleTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mConfirmListener:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    return-object v0
.end method

.method private dialogToast(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "task"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    new-instance v2, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$6;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$6;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;)V

    .line 263
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 273
    return-void
.end method

.method public static getDisplayFolderItem(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/miui/gallery/model/DisplayFolderItem;
    .locals 4
    .param p1, "newFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/model/DisplayFolderItem;"
        }
    .end annotation

    .prologue
    .local p0, "loadedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    const/4 v1, 0x0

    .line 173
    if-nez p0, :cond_0

    move-object v0, v1

    .line 179
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/DisplayFolderItem;

    .line 175
    .local v0, "each":Lcom/miui/gallery/model/DisplayFolderItem;
    iget-object v3, v0, Lcom/miui/gallery/model/DisplayFolderItem;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "each":Lcom/miui/gallery/model/DisplayFolderItem;
    :cond_2
    move-object v0, v1

    .line 179
    goto :goto_0
.end method

.method private getMessage(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "sourceCount"    # I
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    if-le p1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c012f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c012e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method private mergeLotsPeopleTo(Ljava/lang/String;)V
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$8;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mConfirmListener:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;->onConfirm(Ljava/lang/String;Z)V

    .line 306
    return-void
.end method

.method private moveFacesTo(Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "toFolderItem"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;

    .prologue
    .line 320
    return-void
.end method

.method private onClick(Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 10
    .param p1, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 187
    iget-object v3, p1, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    .line 188
    .local v3, "newName":Ljava/lang/String;
    iget-boolean v4, p1, Lcom/miui/gallery/model/PeopleContactInfo;->isRepeatName:Z

    .line 189
    .local v4, "oldFolderExists":Z
    iget-object v1, p1, Lcom/miui/gallery/model/PeopleContactInfo;->localGroupId:Ljava/lang/String;

    .line 190
    .local v1, "localGroupId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "folderName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 192
    .local v6, "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    const/4 v2, 0x0

    .line 193
    .local v2, "message":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 194
    .local v5, "sourceCount":I
    iget-boolean v8, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsFacesMoveOperation:Z

    if-eqz v8, :cond_1

    .line 195
    iget-object v8, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFacePathsToBeMoved:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 196
    if-eqz v4, :cond_0

    new-instance v7, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;

    invoke-direct {v7, p0, v3, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v7, "toFolderItem":Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;
    :goto_0
    new-instance v6, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$2;

    .end local v6    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    invoke-direct {v6, p0, v0, v7}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$2;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    .line 221
    .end local v7    # "toFolderItem":Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;
    .restart local v6    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    :goto_1
    if-eqz v4, :cond_4

    .line 222
    invoke-direct {p0, v5, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->getMessage(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    invoke-direct {p0, v6, v2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->dialogToast(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;Ljava/lang/CharSequence;)V

    .line 228
    :goto_2
    return-void

    .line 196
    :cond_0
    new-instance v7, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;

    invoke-direct {v7, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-boolean v8, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsFaceSetsMergeOperation:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    if-nez v4, :cond_3

    .line 205
    :cond_2
    const/4 v5, 0x1

    .line 206
    new-instance v6, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;

    .end local v6    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    invoke-direct {v6, p0, v0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$3;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V

    .restart local v6    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    goto :goto_1

    .line 213
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 214
    new-instance v6, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$4;

    .end local v6    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    invoke-direct {v6, p0, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$4;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V

    .restart local v6    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    goto :goto_1

    .line 226
    :cond_4
    invoke-interface {v6}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;->run()V

    goto :goto_2
.end method

.method private onClick(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "exist"    # Z

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "folderName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 234
    .local v3, "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    const/4 v1, 0x0

    .line 235
    .local v1, "message":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 237
    .local v2, "sourceCount":I
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 238
    new-instance v3, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;

    .end local v3    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$5;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;)V

    .line 245
    .restart local v3    # "task":Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;
    if-eqz p2, :cond_0

    .line 246
    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->getMessage(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    invoke-direct {p0, v3, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->dialogToast(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-interface {v3}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$FaceOperationTask;->run()V

    goto :goto_0
.end method

.method private rename(Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 279
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$7;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 294
    return-void
.end method

.method private showInputFolderNameDialog(Z)V
    .locals 1
    .param p1, "isMergeFaces"    # Z

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->showInputFolderNameDialog(ZZ)V

    .line 144
    return-void
.end method

.method private showInputFolderNameDialog(ZZ)V
    .locals 2
    .param p1, "isMergeFaces"    # Z
    .param p2, "isRelationSetted"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const/16 v0, 0x13

    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 139
    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_1
    invoke-virtual {p0, v0, v1, p2}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->showInputFolderNameDialog(ILjava/lang/String;Z)V

    .line 140
    return-void

    .line 137
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 139
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V
    .locals 3
    .param p1, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/CreateGroupItem;->checkFileNameValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "errorTips":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 134
    .end local v0    # "errorTips":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v0    # "errorTips":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->onClick(Lcom/miui/gallery/model/PeopleContactInfo;)V

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    .line 148
    iget-boolean v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsFaceSetsMergeOperation:Z

    if-nez v2, :cond_0

    .line 149
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mIsRelationSetted:Z

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->showInputFolderNameDialog(ZZ)V

    .line 169
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;-><init>()V

    .line 152
    .local v1, "dialog":Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "merge_action_from_album"

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mFaceSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    const-string v2, "people_face_Merge_title"

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c02a8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PeopleFaceMergeDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    new-instance v2, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$1;-><init>(Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->setPeopleSelectListener(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;)V

    goto :goto_0
.end method
