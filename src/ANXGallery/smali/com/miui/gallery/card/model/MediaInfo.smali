.class public Lcom/miui/gallery/card/model/MediaInfo;
.super Lcom/miui/gallery/card/model/BaseMedia;
.source "MediaInfo.java"


# instance fields
.field private mCreateTime:J

.field private mDuration:I

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private mId:J

.field private mLatitude:Ljava/lang/String;

.field private mLatitudeRef:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mLongitudeRef:Ljava/lang/String;

.field private mMicroPath:Ljava/lang/String;

.field private mMicroThumb:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mOrientation:I

.field private mScore:D

.field private mSha1:Ljava/lang/String;

.field private mSize:J

.field private mSyncState:I

.field private mThumbPath:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/card/model/BaseMedia;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mId:J

    .line 34
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mMicroPath:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mThumbPath:Ljava/lang/String;

    .line 36
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mFilePath:Ljava/lang/String;

    .line 37
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mMimeType:Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mCreateTime:J

    .line 39
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mLocation:Ljava/lang/String;

    .line 40
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mSize:J

    .line 41
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mWidth:I

    .line 42
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mHeight:I

    .line 43
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mDuration:I

    .line 44
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mLatitude:Ljava/lang/String;

    .line 45
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mLatitudeRef:Ljava/lang/String;

    .line 46
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mLongitude:Ljava/lang/String;

    .line 47
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mLongitudeRef:Ljava/lang/String;

    .line 48
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mSha1:Ljava/lang/String;

    .line 49
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mSyncState:I

    .line 50
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mMicroThumb:Ljava/lang/String;

    .line 51
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mOrientation:I

    .line 52
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mHeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mId:J

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mOrientation:I

    return v0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mScore:D

    return-wide v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mFilePath:Ljava/lang/String;

    .line 224
    :goto_0
    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mThumbPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mThumbPath:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mMicroPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mMicroPath:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/miui/gallery/card/model/MediaInfo;->mWidth:I

    return v0
.end method

.method public setScore(D)V
    .locals 1
    .param p1, "score"    # D

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/miui/gallery/card/model/MediaInfo;->mScore:D

    .line 212
    return-void
.end method
