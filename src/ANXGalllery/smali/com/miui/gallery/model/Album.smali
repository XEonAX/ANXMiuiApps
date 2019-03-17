.class public Lcom/miui/gallery/model/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/miui/gallery/model/AlbumConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/model/Album$AlbumType;,
        Lcom/miui/gallery/model/Album$VirtualAlbum;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/model/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumClassification:I

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumType:Lcom/miui/gallery/model/Album$AlbumType;

.field private mAttributes:J

.field private mBabyInfo:Ljava/lang/String;

.field private mBabyShareInfo:Ljava/lang/String;

.field private mCount:I

.field private mCoverId:J

.field private mCoverPath:Ljava/lang/String;

.field private mCoverSha1:Ljava/lang/String;

.field private mCoverSize:J

.field private mCoverSyncState:I

.field private final mId:J

.field private mIsImmutable:Z

.field private mIsPlaceholder:Z

.field private mLocalPath:Ljava/lang/String;

.field private mPeopleId:Ljava/lang/String;

.field private mServerId:Ljava/lang/String;

.field private mSortBy:J

.field private mThumbnailInfoOfBaby:Ljava/lang/String;

.field private mTopTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/miui/gallery/model/Album$1;

    invoke-direct {v0}, Lcom/miui/gallery/model/Album$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/model/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/miui/gallery/model/Album;->mId:J

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/Album;->mId:J

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mAlbumName:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/Album;->mCoverId:J

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mCoverPath:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mCoverSha1:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/Album;->mCoverSyncState:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/Album;->mCoverSize:J

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/Album;->mCount:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mPeopleId:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mBabyInfo:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mThumbnailInfoOfBaby:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mServerId:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/Album;->mAttributes:J

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/model/Album;->mIsImmutable:Z

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/Album;->mTopTime:J

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/Album;->mSortBy:J

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mBabyShareInfo:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mLocalPath:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/Album;->mAlbumClassification:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/model/Album;->mIsPlaceholder:Z

    .line 336
    invoke-static {}, Lcom/miui/gallery/model/Album$AlbumType;->values()[Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/model/Album;->mAlbumType:Lcom/miui/gallery/model/Album$AlbumType;

    .line 337
    return-void

    :cond_0
    move v0, v2

    .line 329
    goto :goto_0

    :cond_1
    move v1, v2

    .line 335
    goto :goto_1
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/miui/gallery/model/Album;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/miui/gallery/model/Album;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/miui/gallery/model/Album;-><init>(J)V

    .line 50
    .local v0, "entity":Lcom/miui/gallery/model/Album;
    invoke-static {p0}, Lcom/miui/gallery/model/Album;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mAlbumName:Ljava/lang/String;

    .line 51
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/model/Album;->mCoverId:J

    .line 52
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mCoverPath:Ljava/lang/String;

    .line 53
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mCoverSha1:Ljava/lang/String;

    .line 54
    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/model/Album;->mCoverSyncState:I

    .line 55
    const/16 v3, 0x12

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/model/Album;->mCoverSize:J

    .line 56
    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/model/Album;->mCount:I

    .line 57
    iget v3, v0, Lcom/miui/gallery/model/Album;->mCount:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 58
    iput v2, v0, Lcom/miui/gallery/model/Album;->mCount:I

    .line 59
    iput-boolean v1, v0, Lcom/miui/gallery/model/Album;->mIsPlaceholder:Z

    .line 61
    :cond_2
    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mPeopleId:Ljava/lang/String;

    .line 62
    const/16 v3, 0x8

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mBabyInfo:Ljava/lang/String;

    .line 63
    const/16 v3, 0x9

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mThumbnailInfoOfBaby:Ljava/lang/String;

    .line 64
    const/16 v3, 0xa

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/model/Album;->mServerId:Ljava/lang/String;

    .line 65
    const/16 v3, 0xb

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/gallery/model/Album;->mAttributes:J

    .line 66
    const/16 v3, 0xc

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    iput-boolean v1, v0, Lcom/miui/gallery/model/Album;->mIsImmutable:Z

    .line 67
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/model/Album;->mTopTime:J

    .line 68
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gallery/model/Album;->mSortBy:J

    .line 69
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/Album;->mBabyShareInfo:Ljava/lang/String;

    .line 70
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/Album;->mLocalPath:Ljava/lang/String;

    .line 71
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/model/Album;->mAlbumClassification:I

    .line 72
    invoke-static {v0}, Lcom/miui/gallery/model/Album;->parseAlbumType(Lcom/miui/gallery/model/Album;)Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/Album;->mAlbumType:Lcom/miui/gallery/model/Album$AlbumType;

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 66
    goto :goto_1
.end method

.method private static getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 78
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 79
    .local v3, "context":Landroid/content/Context;
    const/16 v5, 0xa

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "serverId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 81
    .local v0, "albumId":J
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const v5, 0x7f0c0032

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "albumName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 83
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_0
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    const v5, 0x7f0c004b

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_1
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 86
    const v5, 0x7f0c005c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_2
    const-wide/32 v6, 0x7ffffffe

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    .line 88
    const v5, 0x7f0c0036

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_3
    const-wide/32 v6, 0x7ffffffd

    cmp-long v5, v0, v6

    if-nez v5, :cond_4

    .line 90
    const v5, 0x7f0c0047

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_4
    const-wide/32 v6, 0x7ffffffc

    cmp-long v5, v0, v6

    if-nez v5, :cond_5

    .line 92
    const v5, 0x7f0c003f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_5
    const-wide/32 v6, 0x7ffffffa

    cmp-long v5, v0, v6

    if-nez v5, :cond_6

    .line 94
    const v5, 0x7f0c0037

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "albumName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static isSystemAlbum(Ljava/lang/String;)Z
    .locals 6
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 118
    .local v0, "albumId":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    const/4 v1, 0x1

    .line 122
    .end local v0    # "albumId":Ljava/lang/Long;
    :cond_0
    return v1

    .line 117
    .restart local v0    # "albumId":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static makePlaceholderFor(Lcom/miui/gallery/model/Album$VirtualAlbum;)Lcom/miui/gallery/model/Album;
    .locals 14
    .param p0, "album"    # Lcom/miui/gallery/model/Album$VirtualAlbum;

    .prologue
    const-wide/16 v12, -0x3e2

    const-wide/16 v10, -0x3e6

    const-wide/16 v8, -0x3e8

    const-wide/16 v6, -0x3e9

    const/4 v4, 0x0

    .line 353
    sget-object v1, Lcom/miui/gallery/model/Album$2;->$SwitchMap$com$miui$gallery$model$Album$VirtualAlbum:[I

    invoke-virtual {p0}, Lcom/miui/gallery/model/Album$VirtualAlbum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported album: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/model/Album$VirtualAlbum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/model/Album;

    const-wide/32 v2, 0x7ffffffc

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/model/Album;-><init>(J)V

    .line 356
    .local v0, "ret":Lcom/miui/gallery/model/Album;
    const-string v1, "RECENT"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setAlbumName(Ljava/lang/String;)V

    .line 357
    const-wide/32 v2, 0x7ffffffc

    invoke-static {v2, v3, v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/Album;->setSortBy(J)V

    .line 361
    const-wide/32 v2, -0x7ffffffc

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setServerId(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery/model/Album;->setTopTime(J)V

    .line 397
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setPlaceholder(Z)V

    .line 398
    invoke-virtual {v0, v4}, Lcom/miui/gallery/model/Album;->setAlbumClassification(I)V

    .line 399
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/Album;->setAttributes(J)V

    .line 400
    invoke-virtual {v0, v4}, Lcom/miui/gallery/model/Album;->setImmutable(Z)V

    .line 401
    invoke-virtual {v0, v4}, Lcom/miui/gallery/model/Album;->setCoverSyncState(I)V

    .line 402
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/Album;->setCoverId(J)V

    .line 403
    invoke-virtual {v0, v4}, Lcom/miui/gallery/model/Album;->setCount(I)V

    .line 404
    invoke-static {v0}, Lcom/miui/gallery/model/Album;->parseAlbumType(Lcom/miui/gallery/model/Album;)Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setAlbumType(Lcom/miui/gallery/model/Album$AlbumType;)V

    .line 405
    return-object v0

    .line 365
    .end local v0    # "ret":Lcom/miui/gallery/model/Album;
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/model/Album;

    const-wide/32 v2, 0x7fffffff

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/model/Album;-><init>(J)V

    .line 366
    .restart local v0    # "ret":Lcom/miui/gallery/model/Album;
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setAlbumName(Ljava/lang/String;)V

    .line 367
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v10, v11}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/Album;->setSortBy(J)V

    .line 371
    const-wide/32 v2, -0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setServerId(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v10, v11}, Lcom/miui/gallery/model/Album;->setTopTime(J)V

    goto :goto_0

    .line 375
    .end local v0    # "ret":Lcom/miui/gallery/model/Album;
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/model/Album;

    const-wide/32 v2, 0x7ffffffd

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/model/Album;-><init>(J)V

    .line 376
    .restart local v0    # "ret":Lcom/miui/gallery/model/Album;
    const-string v1, "PANO"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setAlbumName(Ljava/lang/String;)V

    .line 377
    const-wide/32 v2, 0x7ffffffd

    invoke-static {v2, v3, v12, v13}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/Album;->setSortBy(J)V

    .line 381
    const-wide/32 v2, -0x7ffffffd

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setServerId(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v12, v13}, Lcom/miui/gallery/model/Album;->setTopTime(J)V

    goto :goto_0

    .line 385
    .end local v0    # "ret":Lcom/miui/gallery/model/Album;
    :pswitch_3
    new-instance v0, Lcom/miui/gallery/model/Album;

    const-wide/32 v2, 0x7ffffffa

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/model/Album;-><init>(J)V

    .line 386
    .restart local v0    # "ret":Lcom/miui/gallery/model/Album;
    const-string v1, "FAVORITES"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setAlbumName(Ljava/lang/String;)V

    .line 387
    const-wide/32 v2, 0x7ffffffa

    invoke-static {v2, v3, v8, v9}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/Album;->setSortBy(J)V

    .line 391
    const-wide/32 v2, -0x7ffffffa

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/Album;->setServerId(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/model/Album;->setTopTime(J)V

    goto/16 :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseAlbumType(Lcom/miui/gallery/model/Album;)Lcom/miui/gallery/model/Album$AlbumType;
    .locals 2
    .param p0, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getSortBy()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->isForceTopAlbumByTopTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/miui/gallery/model/Album$AlbumType;->PINNED:Lcom/miui/gallery/model/Album$AlbumType;

    .line 111
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/model/Album;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/miui/gallery/model/Album$AlbumType;->SYSTEM:Lcom/miui/gallery/model/Album$AlbumType;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getBabyInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    sget-object v0, Lcom/miui/gallery/model/Album$AlbumType;->BABY:Lcom/miui/gallery/model/Album$AlbumType;

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lcom/miui/gallery/model/Album$AlbumType;->OTHERS_SHARE:Lcom/miui/gallery/model/Album$AlbumType;

    goto :goto_0

    .line 111
    :cond_3
    sget-object v0, Lcom/miui/gallery/model/Album$AlbumType;->NORMAL:Lcom/miui/gallery/model/Album$AlbumType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumClassification()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/miui/gallery/model/Album;->mAlbumClassification:I

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mAlbumType:Lcom/miui/gallery/model/Album$AlbumType;

    return-object v0
.end method

.method public getAttributes()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/miui/gallery/model/Album;->mAttributes:J

    return-wide v0
.end method

.method public getBabyInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mBabyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBabyShareInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mBabyShareInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/miui/gallery/model/Album;->mCount:I

    return v0
.end method

.method public getCoverId()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/miui/gallery/model/Album;->mCoverId:J

    return-wide v0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverSize()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/miui/gallery/model/Album;->mCoverSize:J

    return-wide v0
.end method

.method public getCoverSyncState()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/miui/gallery/model/Album;->mCoverSyncState:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/miui/gallery/model/Album;->mId:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mPeopleId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortBy()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/miui/gallery/model/Album;->mSortBy:J

    return-wide v0
.end method

.method public getThumbnailInfoOfBaby()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mThumbnailInfoOfBaby:Ljava/lang/String;

    return-object v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/miui/gallery/model/Album;->mIsImmutable:Z

    return v0
.end method

.method public isPlaceholder()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/miui/gallery/model/Album;->mIsPlaceholder:Z

    return v0
.end method

.method public setAlbumClassification(I)V
    .locals 0
    .param p1, "albumClassification"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/miui/gallery/model/Album;->mAlbumClassification:I

    .line 263
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/model/Album;->mAlbumName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setAlbumType(Lcom/miui/gallery/model/Album$AlbumType;)V
    .locals 0
    .param p1, "albumType"    # Lcom/miui/gallery/model/Album$AlbumType;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/gallery/model/Album;->mAlbumType:Lcom/miui/gallery/model/Album$AlbumType;

    .line 275
    return-void
.end method

.method public setAttributes(J)V
    .locals 1
    .param p1, "attributes"    # J

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/miui/gallery/model/Album;->mAttributes:J

    .line 215
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/miui/gallery/model/Album;->mCount:I

    .line 175
    return-void
.end method

.method public setCoverId(J)V
    .locals 1
    .param p1, "coverId"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/miui/gallery/model/Album;->mCoverId:J

    .line 143
    return-void
.end method

.method public setCoverSyncState(I)V
    .locals 0
    .param p1, "coverSyncState"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/miui/gallery/model/Album;->mCoverSyncState:I

    .line 167
    return-void
.end method

.method public setImmutable(Z)V
    .locals 0
    .param p1, "immutable"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/miui/gallery/model/Album;->mIsImmutable:Z

    .line 223
    return-void
.end method

.method public setPlaceholder(Z)V
    .locals 0
    .param p1, "placeholder"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/miui/gallery/model/Album;->mIsPlaceholder:Z

    .line 283
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/gallery/model/Album;->mServerId:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSortBy(J)V
    .locals 1
    .param p1, "sortBy"    # J

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/miui/gallery/model/Album;->mSortBy:J

    .line 239
    return-void
.end method

.method public setTopTime(J)V
    .locals 1
    .param p1, "topTime"    # J

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/miui/gallery/model/Album;->mTopTime:J

    .line 231
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    iget-wide v4, p0, Lcom/miui/gallery/model/Album;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-wide v4, p0, Lcom/miui/gallery/model/Album;->mCoverId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mCoverSha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/miui/gallery/model/Album;->mCoverSyncState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-wide v4, p0, Lcom/miui/gallery/model/Album;->mCoverSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget v0, p0, Lcom/miui/gallery/model/Album;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mPeopleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mBabyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mThumbnailInfoOfBaby:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-wide v4, p0, Lcom/miui/gallery/model/Album;->mAttributes:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget-boolean v0, p0, Lcom/miui/gallery/model/Album;->mIsImmutable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 306
    iget-wide v4, p0, Lcom/miui/gallery/model/Album;->mTopTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-wide v4, p0, Lcom/miui/gallery/model/Album;->mSortBy:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mBabyShareInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mLocalPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lcom/miui/gallery/model/Album;->mAlbumClassification:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean v0, p0, Lcom/miui/gallery/model/Album;->mIsPlaceholder:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/model/Album;->mAlbumType:Lcom/miui/gallery/model/Album$AlbumType;

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album$AlbumType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    return-void

    :cond_0
    move v0, v2

    .line 305
    goto :goto_0

    :cond_1
    move v1, v2

    .line 311
    goto :goto_1
.end method
