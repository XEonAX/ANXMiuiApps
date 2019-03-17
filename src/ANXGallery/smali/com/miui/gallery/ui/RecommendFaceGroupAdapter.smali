.class public abstract Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
.super Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;
.source "RecommendFaceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCloudLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mConfirmToRight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmToWrong:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCursor:Landroid/database/Cursor;

.field private mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mFragment:Lcom/miui/gallery/ui/BaseMediaFragment;

.field private mLoadingCompleteListener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

.field private mLocalIdOfAlbum:Ljava/lang/Long;

.field private mServerIdOfAlbum:Ljava/lang/String;

.field public mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "faceXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "faceYScale"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "faceWScale"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "faceHScale"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "localId"    # Ljava/lang/Long;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToWrong:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mVisibleItemCount:I

    .line 94
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mFragment:Lcom/miui/gallery/ui/BaseMediaFragment;

    .line 95
    iput-object p2, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mServerIdOfAlbum:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mLocalIdOfAlbum:Ljava/lang/Long;

    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->initDisplayOptions()V

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mLoadingCompleteListener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->recommendCheckStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;Ljava/lang/String;Lcom/miui/gallery/util/photoview/ItemViewInfo;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # J

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->gotoRecommendCoverPage(Ljava/lang/String;Lcom/miui/gallery/util/photoview/ItemViewInfo;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCloudLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method private confirmFace(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2, "yes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "serverIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v1, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v2, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mLocalIdOfAlbum:Ljava/lang/Long;

    .line 246
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mServerIdOfAlbum:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, "sourcePeople":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    invoke-static {p1, v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendHistoryToTrue(Ljava/util/ArrayList;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    .line 248
    if-eqz p2, :cond_2

    .line 250
    invoke-static {p1, v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->addSelectItemsToRecommendedMediaSet(Ljava/util/ArrayList;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    .line 252
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 253
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "count"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v2, "face"

    const-string v3, "face_confirm_recommend_face"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 257
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {p1, v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->feedbackIgnoredPeople2Server(Ljava/util/ArrayList;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    goto :goto_0
.end method

.method private getDownloadUri(Landroid/database/Cursor;I)Landroid/net/Uri;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "idIndex"    # I

    .prologue
    .line 176
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private gotoRecommendCoverPage(Ljava/lang/String;Lcom/miui/gallery/util/photoview/ItemViewInfo;Ljava/lang/String;JJ)V
    .locals 18
    .param p1, "facePath"    # Ljava/lang/String;
    .param p2, "viewInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p3, "faceServerId"    # Ljava/lang/String;
    .param p4, "cloudId"    # J
    .param p6, "fileLength"    # J

    .prologue
    .line 200
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    .line 201
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget-object v7, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v6, p1

    move-wide/from16 v12, p6

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;ZJ)V

    .line 204
    .local v3, "item":Lcom/miui/gallery/model/ImageLoadParams;
    new-instance v16, Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mFragment:Lcom/miui/gallery/ui/BaseMediaFragment;

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->RECOMMEND_FACES_OF_ONE_PERSON_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "dateTaken DESC "

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v12, v3

    move-object/from16 v15, p3

    invoke-static/range {v4 .. v16}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 214
    const-string v2, "face"

    const-string v4, "face_click_recommend_face"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private initDisplayOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 102
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200df

    .line 106
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 108
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 109
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 112
    return-void
.end method

.method private recommendCheckStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 219
    if-eqz p2, :cond_1

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToWrong:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToWrong:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mVisibleItemCount:I

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mFragment:Lcom/miui/gallery/ui/BaseMediaFragment;

    instance-of v0, v0, Lcom/miui/gallery/ui/FacePageFragment;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mFragment:Lcom/miui/gallery/ui/BaseMediaFragment;

    check-cast v0, Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FacePageFragment;->changeToNextPage()V

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToWrong:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mFragment:Lcom/miui/gallery/ui/BaseMediaFragment;

    check-cast v0, Lcom/miui/gallery/ui/RecommendFacePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/RecommendFacePageFragment;->changeToNextPage()V

    goto :goto_1
.end method


# virtual methods
.method public bindData(ILandroid/view/View;)V
    .locals 19
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v9

    .line 132
    .local v9, "cursor":Landroid/database/Cursor;
    const/16 v2, 0xa

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, "serverId":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 134
    .local v10, "cloudId":J
    const/16 v2, 0xc

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 135
    .local v14, "fileLength":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;

    .line 137
    .local v13, "item":Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->setChecked(Z)V

    .line 138
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->setServerId(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v13, v10, v11}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->setCloudId(J)V

    .line 140
    invoke-virtual {v13, v14, v15}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->setFileLength(J)V

    .line 142
    sget-object v8, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 143
    .local v8, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    const/4 v2, 0x3

    .line 144
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 145
    .local v17, "thumbnail":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 148
    :cond_0
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    sget-object v8, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 150
    const/4 v2, 0x2

    .line 151
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 154
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->setFacePath(Ljava/lang/String;)V

    .line 155
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    sget-object v8, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 157
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 160
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 161
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v12

    .line 163
    .local v12, "displayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :goto_0
    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->getDownloadUri(Landroid/database/Cursor;I)Landroid/net/Uri;

    move-result-object v18

    new-instance v2, Lcom/miui/gallery/util/face/FaceRegionRectF;

    const/4 v3, 0x5

    .line 165
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v4, 0x6

    .line 166
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x5

    .line 167
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    const/4 v6, 0x7

    .line 168
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x6

    .line 169
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const/16 v7, 0x8

    .line 170
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    add-float/2addr v6, v7

    const/16 v7, 0x9

    .line 171
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    move-object v3, v13

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v12

    move-object v7, v2

    .line 163
    invoke-virtual/range {v3 .. v8}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mVisibleItemCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mVisibleItemCount:I

    .line 173
    return-void

    .line 161
    .end local v12    # "displayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x0

    .line 162
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v12

    goto :goto_0
.end method

.method public confirmRecommends()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->confirmFace(Ljava/util/ArrayList;Z)V

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToWrong:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->confirmFace(Ljava/util/ArrayList;Z)V

    .line 238
    return-void
.end method

.method public freshView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;

    .line 181
    .local v1, "item":Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;
    invoke-static {v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->access$000(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 182
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-static {v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->access$000(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 184
    .local v0, "displayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->needToFresh(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 185
    return-void

    .line 182
    .end local v0    # "displayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x0

    .line 183
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getCursorByPosition(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getMergeFaceCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;-><init>(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;Landroid/view/View;)V

    .line 124
    .local v0, "item":Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    return-object v1
.end method

.method public onPageChanged()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->confirmRecommends()V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToWrong:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mConfirmToRight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mVisibleItemCount:I

    .line 192
    return-void
.end method

.method public setOnLoadingCompleteListener(Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mLoadingCompleteListener:Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    .line 273
    if-eqz p1, :cond_0

    .line 274
    new-instance v0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;-><init>(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCloudLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCloudLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    .line 267
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method
