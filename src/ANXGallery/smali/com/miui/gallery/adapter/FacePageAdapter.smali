.class public Lcom/miui/gallery/adapter/FacePageAdapter;
.super Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
.source "FacePageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private isPhotoModeNotFaceMode:Z

.field private mCheckable:Z

.field protected mFaceModeDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mFaceModeDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mixedDateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "faceXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "faceYScale"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "faceWScale"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "faceHScale"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "isFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/adapter/FacePageAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->isPhotoModeNotFaceMode:Z

    .line 73
    return-void
.end method

.method private getItemPathInternal(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "firstNeedThumbnail"    # Z

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "path":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 142
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 150
    .restart local v0    # "path":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public changeDisplayMode()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->isPhotoModeNotFaceMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->isPhotoModeNotFaceMode:Z

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/FacePageAdapter;->notifyDataSetChanged()V

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 189
    move-object/from16 v8, p1

    check-cast v8, Lcom/miui/gallery/ui/FacePageGridItem;

    .line 190
    .local v8, "item":Lcom/miui/gallery/ui/FacePageGridItem;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 191
    .local v9, "position":I
    iget-boolean v2, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->isPhotoModeNotFaceMode:Z

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v11

    invoke-virtual {v8, v2, v10, v11}, Lcom/miui/gallery/ui/FacePageGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 204
    :goto_0
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "type":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 206
    .local v4, "duration":J
    const/16 v2, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .local v6, "specialTypeFlags":J
    move-object v2, v8

    .line 207
    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/FacePageGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    .line 208
    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->isFavorite(I)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/miui/gallery/ui/FacePageGridItem;->bindFavoriteIndicator(Z)V

    .line 209
    iget-boolean v2, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mCheckable:Z

    invoke-virtual {v8, v2}, Lcom/miui/gallery/ui/FacePageGridItem;->setCheckable(Z)V

    .line 210
    const/4 v2, 0x3

    .line 211
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v2, 0x10

    .line 212
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v2, v3}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/miui/gallery/ui/FacePageGridItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 195
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "duration":J
    .end local v6    # "specialTypeFlags":J
    :cond_0
    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemBigPicPath(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v11

    .line 196
    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/FacePageAdapter;->getFaceModeDisplayOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v12

    new-instance v2, Lcom/miui/gallery/util/face/FaceRegionRectF;

    const/4 v13, 0x6

    .line 197
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v13, 0x7

    .line 198
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v13, 0x6

    .line 199
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    const/16 v14, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    add-float v5, v13, v14

    const/4 v13, 0x7

    .line 200
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    const/16 v14, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    add-float v6, v13, v14

    const/16 v13, 0xa

    .line 201
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    .line 194
    invoke-virtual {v8, v10, v11, v12, v2}, Lcom/miui/gallery/ui/FacePageGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V

    goto/16 :goto_0
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 233
    check-cast p1, Lcom/miui/gallery/ui/FacePageGridItem;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/gallery/ui/FacePageGridItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getDownloadUri(Landroid/database/Cursor;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFaceModeDisplayOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getFileLength(I)J

    move-result-wide v0

    .line 96
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mFaceModeDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 98
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mFaceModeDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 245
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getFirstFaceServerId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xe

    .line 130
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemBigPicPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemPathInternal(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemPhotoId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemPathInternal(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemPhotoId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemPathInternal(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->initDisplayImageOptions()V

    .line 88
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 89
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mFaceModeDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mFaceModeDisplayOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->mFaceModeDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 92
    return-void
.end method

.method public isFaceDisplayMode()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/FacePageAdapter;->isPhotoModeNotFaceMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 239
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
