.class Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;
.super Lcom/miui/gallery/model/DisplayFolderItem;
.source "FaceAlbumHandlerBase.java"


# instance fields
.field isTip:Z

.field mFacePosRelative:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aThumbnailPath"    # Ljava/lang/String;
    .param p3, "localGroupId"    # Ljava/lang/String;
    .param p4, "aFacePosRelative"    # Landroid/graphics/RectF;

    .prologue
    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/model/DisplayFolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iput-object p4, p0, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;->mFacePosRelative:Landroid/graphics/RectF;

    .line 353
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "isTip"    # Z

    .prologue
    .line 356
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/model/DisplayFolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    iput-boolean p1, p0, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;->isTip:Z

    .line 358
    return-void
.end method
