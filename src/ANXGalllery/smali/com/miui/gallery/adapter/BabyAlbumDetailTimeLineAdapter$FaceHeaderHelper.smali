.class Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
.super Ljava/lang/Object;
.source "BabyAlbumDetailTimeLineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaceHeaderHelper"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBabyAlbumLocalId:J

.field private mBabyAlbumPeopleServerId:Ljava/lang/String;

.field private mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

.field private mBirthdayDay:I

.field private mBirthdayMonth:I

.field private mBirthdayYear:I

.field mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

.field private mSharerInfoStr:Ljava/lang/String;

.field private mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

.field final synthetic this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-string v0, "FaceHeaderHelper"

    iput-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # J

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->getAge(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setBirthday()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mSharerInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mSharerInfoStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setBirthdayYearMonthDay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImageFromFaceAlbumCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->bindFaceImageFromPath(Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImageFromSharerInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImageFromByFirstGetSharerInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->gotoBabyInfoSettingPage(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumLocalId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumLocalId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->bindBackgroundByThumbnail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->bindBackgroundByCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->bindBackgroundPicByPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/cloud/baby/BabyInfo;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/baby/BabyInfo;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .param p1, "x1"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    return-object p1
.end method

.method private bindBackgroundByCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 439
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "microThumb":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "filePath":Ljava/lang/String;
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "thumbnail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .end local v1    # "microThumb":Ljava/lang/String;
    :goto_1
    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 449
    invoke-static {p1, v3, v4}, Lcom/miui/gallery/adapter/BaseAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v3

    .line 445
    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setBackgroundByPathOrUri(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .restart local v1    # "microThumb":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 446
    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private bindBackgroundByThumbnail()Z
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getBgPath()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "bg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setBackgroundByPathOrUri(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    const/4 v1, 0x1

    .line 435
    .end local v0    # "bg":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private bindBackgroundPicByPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setBackgroundByPathOrUri(Ljava/lang/String;Landroid/net/Uri;)V

    .line 455
    return-void
.end method

.method private bindFaceImageFromPath(Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .prologue
    .line 343
    invoke-virtual {p2}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getFaceRegion()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    invoke-virtual {p2}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getFaceRegion()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->bindHeadFacePic(Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    .line 350
    invoke-virtual {p2}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getFaceRegionFromFaceInfo()Landroid/graphics/RectF;

    move-result-object v1

    .line 349
    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->bindHeadFacePicFromNet(Ljava/lang/String;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private getAge(J)Ljava/lang/String;
    .locals 17
    .param p1, "toThisDay"    # J

    .prologue
    .line 193
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 194
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "lang":Ljava/lang/String;
    const-string v13, "cn"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "en"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "us"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayDay:I

    if-nez v13, :cond_3

    .line 198
    :cond_1
    const-string v2, ""

    .line 259
    :cond_2
    :goto_0
    return-object v2

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayYear:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayMonth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayDay:I

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13, v14, v15}, Lcom/miui/gallery/cloud/baby/BabyInfo;->getAge(JIII)[I

    move-result-object v3

    .line 203
    .local v3, "ageArr":[I
    const/4 v13, 0x0

    aget v7, v3, v13

    .line 204
    .local v7, "diffYear":I
    if-gez v7, :cond_4

    .line 205
    const-string v2, ""

    goto :goto_0

    .line 207
    :cond_4
    const/4 v13, 0x1

    aget v6, v3, v13

    .line 208
    .local v6, "diffMonth":I
    const/4 v13, 0x2

    aget v5, v3, v13

    .line 210
    .local v5, "diffDay":I
    const/4 v2, 0x0

    .line 212
    .local v2, "age":Ljava/lang/String;
    const-string v13, "cn"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 213
    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 214
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5c81"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u4e2a\u6708"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5929"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 215
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 216
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5c81"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u4e2a\u6708"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 217
    :cond_6
    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    .line 218
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5c81\u751f\u65e5"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 219
    :cond_7
    if-nez v7, :cond_8

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    .line 220
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u7b2c"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5929"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 221
    :cond_8
    if-nez v7, :cond_9

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    .line 222
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u4e2a\u6708"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 223
    :cond_9
    if-eqz v7, :cond_a

    if-nez v6, :cond_a

    if-eqz v5, :cond_a

    .line 224
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5c81\u96f6"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5929"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 225
    :cond_a
    if-nez v7, :cond_b

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    .line 226
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u4e2a\u6708"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5929"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 227
    :cond_b
    if-nez v7, :cond_2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 228
    const-string/jumbo v2, "\u51fa\u751f\u7b2c\u4e00\u5929"

    goto/16 :goto_0

    .line 231
    :cond_c
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 232
    .local v10, "res":Landroid/content/res/Resources;
    const v13, 0x7f0e0006

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 233
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 232
    invoke-virtual {v10, v13, v7, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, "year":Ljava/lang/String;
    const v13, 0x7f0e0004

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 235
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 234
    invoke-virtual {v10, v13, v5, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "day":Ljava/lang/String;
    const v13, 0x7f0e0005

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 236
    invoke-virtual {v10, v13, v6, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, "month":Ljava/lang/String;
    const-string v11, " "

    .line 239
    .local v11, "space":Ljava/lang/String;
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 241
    :cond_d
    if-eqz v7, :cond_e

    if-eqz v6, :cond_e

    if-nez v5, :cond_e

    .line 242
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 243
    :cond_e
    if-eqz v7, :cond_f

    if-nez v6, :cond_f

    if-nez v5, :cond_f

    .line 244
    move-object v2, v12

    goto/16 :goto_0

    .line 245
    :cond_f
    if-nez v7, :cond_11

    if-nez v6, :cond_11

    if-eqz v5, :cond_11

    .line 246
    if-nez v5, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " day"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    goto/16 :goto_0

    :cond_10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " days"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 248
    :cond_11
    if-nez v7, :cond_12

    if-eqz v6, :cond_12

    if-nez v5, :cond_12

    .line 249
    move-object v2, v9

    goto/16 :goto_0

    .line 250
    :cond_12
    if-eqz v7, :cond_13

    if-nez v6, :cond_13

    if-eqz v5, :cond_13

    .line 251
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 252
    :cond_13
    if-nez v7, :cond_14

    if-eqz v6, :cond_14

    if-eqz v5, :cond_14

    .line 253
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 255
    :cond_14
    if-nez v7, :cond_2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 256
    const-string v2, " first day"

    goto/16 :goto_0
.end method

.method private gotoBabyInfoSettingPage(Z)V
    .locals 8
    .param p1, "isOtherShared"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v1, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iget-object v3, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-wide v4, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumLocalId:J

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->getFaceImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/CropUtil;->circleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    move v7, p1

    .line 155
    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/util/baby/FindFace2CreateBabyAlbum;->gotoBabyAlbumInfoPage(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Lcom/miui/gallery/cloud/baby/BabyInfo;JLandroid/graphics/Bitmap;Z)V

    .line 158
    return-void
.end method

.method private setBackgroundByPathOrUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->access$1700(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;)Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v1, v1, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->bindHeaderBackgroundPic(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 425
    return-void
.end method

.method private setBirthday()V
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->getAge(J)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "age":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->setAge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBirthdayYearMonthDay()V
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    invoke-static {v1}, Lcom/miui/gallery/cloud/baby/BabyInfo;->splitBirthDay(Lcom/miui/gallery/cloud/baby/BabyInfo;)[I

    move-result-object v0

    .line 162
    .local v0, "days":[I
    if-eqz v0, :cond_0

    .line 163
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayYear:I

    .line 164
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayMonth:I

    .line 165
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBirthdayDay:I

    .line 167
    :cond_0
    return-void
.end method

.method private setFaceImageFromByFirstGetSharerInfo()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 356
    new-instance v0, Lcom/miui/gallery/share/Path;

    iget-wide v2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumLocalId:J

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/miui/gallery/share/Path;-><init>(JZZ)V

    new-instance v1, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$5;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/share/AlbumShareUIManager;->updateInvitationAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    .line 394
    return-void
.end method

.method private setFaceImageFromFaceAlbumCover(Ljava/lang/String;)V
    .locals 4
    .param p1, "peopleServerId"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/graphics/RectF;

    .line 416
    .local v1, "faceRegion":[Landroid/graphics/RectF;
    invoke-static {p1, v1}, Lcom/miui/gallery/provider/FaceManager;->queryCoverImageOfOnePerson(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "facePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->bindHeadFacePic(Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 419
    return-void
.end method

.method private setFaceImageFromSharerInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "sharerInfoStr"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareOperations;->parseSharerInfo(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;

    move-result-object v0

    .line 402
    .local v0, "sharerInfo":Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal SharerInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_3
    iget-object v1, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mThumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    iget-object v2, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mThumbnailUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/gallery/share/AlbumShareOperations$SharerInfo;->mFaceRelativePos:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->bindHeadFacePicFromNet(Ljava/lang/String;Landroid/graphics/RectF;)V

    goto :goto_0
.end method


# virtual methods
.method protected getFaceImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->getHeadFacePic()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected setFaceImage()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 268
    .local v0, "thumbnailInfo":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->this$0:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->isOtherShareAlbum()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$1;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    new-instance v3, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$2;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    .line 339
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImageFromFaceAlbumCover(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImageFromFaceAlbumCover(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$3;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    new-instance v3, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper$4;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method
