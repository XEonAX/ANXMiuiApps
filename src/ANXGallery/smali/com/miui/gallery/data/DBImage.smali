.class public abstract Lcom/miui/gallery/data/DBImage;
.super Ljava/lang/Object;
.source "DBImage.java"

# interfaces
.implements Lcom/miui/gallery/data/DBItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/DBImage$ExifDataConst;,
        Lcom/miui/gallery/data/DBImage$SubUbiImage;
    }
.end annotation


# static fields
.field public static final sExifDataConst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBImage$ExifDataConst;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecretKeyLock:Ljava/lang/Object;


# instance fields
.field protected mAppKey:Ljava/lang/String;

.field protected mAttributes:J

.field protected mBabyInfoJson:Ljava/lang/String;

.field protected mCreatorId:Ljava/lang/String;

.field private mDateModified:J

.field private mDatetaken:J

.field private mDescription:Ljava/lang/String;

.field private mDownloadFile:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mDownloadFileAddTime:J

.field private mDuration:I

.field protected mEditedColumns:Ljava/lang/String;

.field private mExifInfo:Lorg/json/JSONObject;

.field private mFileName:Ljava/lang/String;

.field protected mFromLocalGroupId:Ljava/lang/String;

.field protected mGeoInfo:Lorg/json/JSONObject;

.field private mGroupId:J

.field private mId:Ljava/lang/String;

.field protected mIsFavorite:Z

.field protected mLables:I

.field protected mLatitudeStr:Ljava/lang/String;

.field protected mLatitudeStrRef:Ljava/lang/String;

.field private mLocalFile:Ljava/lang/String;

.field private mLocalFlag:I

.field private mLocalGroupId:Ljava/lang/String;

.field private mLocalImageId:Ljava/lang/String;

.field protected mLongitudeStr:Ljava/lang/String;

.field protected mLongitudeStrRef:Ljava/lang/String;

.field private mMicroThumbFile:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field protected mMixedDateTime:J

.field protected mPeopleFaceId:Ljava/lang/String;

.field protected mSecretKey:[B

.field private mServerId:Ljava/lang/String;

.field private mServerStatus:Ljava/lang/String;

.field private mServerTag:J

.field private mServerType:I

.field private mSha1:Ljava/lang/String;

.field private mShareAlbumId:Ljava/lang/String;

.field private mSize:J

.field protected mSpecialTypeFlags:J

.field private mThumbnailFile:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field protected mUbiFocusIndex:I

.field protected mUbiSubImageCount:I

.field protected mUbiSubIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    .line 128
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0xe

    const-string v3, "imageWidth"

    const-string v4, "ImageWidth"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0xf

    const-string v3, "imageLength"

    const-string v4, "ImageLength"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x10

    const-string v3, "orientation"

    const-string v4, "Orientation"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x11

    const-string v3, "GPSLatitude"

    const-string v4, "GPSLatitude"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x12

    const-string v3, "GPSLongitude"

    const-string v4, "GPSLongitude"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x13

    const-string v3, "make"

    const-string v4, "Make"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x14

    const-string v3, "model"

    const-string v4, "Model"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x15

    const-string v3, "flash"

    const-string v4, "Flash"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x16

    const-string v3, "GPSLatitudeRef"

    const-string v4, "GPSLatitudeRef"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x17

    const-string v3, "GPSLongitudeRef"

    const-string v4, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x18

    const-string v3, "exposureTime"

    const-string v4, "ExposureTime"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x19

    const-string v3, "FNumber"

    const-string v4, "FNumber"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x1a

    const-string v3, "ISOSpeedRatings"

    const-string v4, "ISOSpeedRatings"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x1b

    const-string v3, "GPSAltitude"

    const-string v4, "GPSAltitude"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x1c

    const-string v3, "GPSAltitudeRef"

    const-string v4, "GPSAltitudeRef"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x1d

    const-string v3, "GPSTimeStamp"

    const-string v4, "GPSTimeStamp"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x1e

    const-string v3, "GPSDateStamp"

    const-string v4, "GPSDateStamp"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x1f

    const-string/jumbo v3, "whiteBalance"

    const-string v4, "WhiteBalance"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x20

    const-string v3, "focalLength"

    const-string v4, "FocalLength"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x21

    const-string v3, "GPSProcessingMethod"

    const-string v4, "GPSProcessingMethod"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    const/16 v2, 0x22

    const-string v3, "dateTime"

    const-string v4, "DateTime"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/data/DBImage$ExifDataConst;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/DBImage;->sSecretKeyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DBImage;->mGeoInfo:Lorg/json/JSONObject;

    .line 156
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DBImage;->reloadData(Landroid/database/Cursor;)Z

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DBImage;->mGeoInfo:Lorg/json/JSONObject;

    .line 152
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mServerId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private generateSecretKey()V
    .locals 9

    .prologue
    .line 768
    sget-object v8, Lcom/miui/gallery/data/DBImage;->sSecretKeyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 769
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    .line 770
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "secretKey"

    aput-object v4, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/data/DBImage$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/data/DBImage$1;-><init>(Lcom/miui/gallery/data/DBImage;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 782
    .local v6, "secretKey":[B
    if-nez v6, :cond_0

    .line 783
    invoke-static {}, Lcom/miui/gallery/util/GalleryAes;->generateRandomKey()[B

    move-result-object v6

    .line 784
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v7, "values":Landroid/content/ContentValues;
    const-string v1, "secretKey"

    invoke-virtual {v7, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 786
    const/4 v1, 0x0

    invoke-static {v0, v7, v2, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 791
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_0
    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mSecretKey:[B

    .line 792
    monitor-exit v8

    .line 793
    return-void

    .line 788
    :cond_0
    const-string v1, "DBImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSecretKey  secret key exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "secretKey":[B
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract getAlbumId()Ljava/lang/String;
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()J
    .locals 2

    .prologue
    .line 796
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mAttributes:J

    return-wide v0
.end method

.method public getBabyInfoJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mBabyInfoJson:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getBaseUri()Landroid/net/Uri;
.end method

.method protected getBasicValues(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "cloudJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    const-string v4, "fileName"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v4, "dateTaken"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getDatetaken()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 276
    const-string v4, "dateModified"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    .line 280
    .local v3, "serverType":I
    if-nez v3, :cond_3

    .line 281
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->collectAlbumDescription(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v1

    .line 288
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    const-string v4, "description"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 331
    const-string v4, "DBImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type is invalid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 335
    const-string v4, "exifInfo"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_2
    return-void

    .line 282
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 284
    :cond_4
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->collectMediaDescription(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 286
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :pswitch_0
    const-string/jumbo v4, "type"

    const-string v5, "image"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string/jumbo v4, "size"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 296
    const-string v4, "mimeType"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string/jumbo v4, "title"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string/jumbo v4, "sha1"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 302
    :pswitch_1
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "video"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v4, "size"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 304
    const-string v4, "mimeType"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string/jumbo v4, "title"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string/jumbo v4, "sha1"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v4, "duration"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getDuration()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 311
    :pswitch_2
    const-string/jumbo v4, "type"

    const-string v5, "group"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isAutoUploadFeatureOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 313
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 314
    const-string v4, "appKey"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_6
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isBabyAlbumFeatureOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/miui/gallery/data/DBImage;->mBabyInfoJson:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/miui/gallery/data/DBImage;->mBabyInfoJson:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "localFlag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 320
    const-string v4, "localFlag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    :cond_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 323
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 324
    const-string v4, "renderInfos"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mCreatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mDateModified:J

    return-wide v0
.end method

.method public getDatetaken()J
    .locals 2

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mDatetaken:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/miui/gallery/data/DBImage;->mDuration:I

    return v0
.end method

.method public getEditedColumns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mEditedColumns:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mFileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMD5Key()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->getEncodedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExifInfo()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromLocalGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mFromLocalGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoInfo()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mGeoInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mGroupId:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonExifString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 635
    :goto_0
    return-object v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 635
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mLocalFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/miui/gallery/data/DBImage;->mLocalFlag:I

    return v0
.end method

.method public getLocalGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mLocalGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mLocalImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->getMD5Key([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMicroThumbnailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mMicroThumbFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMixedDateTime()J
    .locals 2

    .prologue
    .line 691
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mMixedDateTime:J

    return-wide v0
.end method

.method public getOriginSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    const-string v0, ""

    return-object v0
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mSecretKey:[B

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/miui/gallery/data/DBImage;->generateSecretKey()V

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mSecretKey:[B

    return-object v0
.end method

.method public getSecretKeyNoGenerate()[B
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mSecretKey:[B

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mServerStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTag()J
    .locals 2

    .prologue
    .line 577
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mServerTag:J

    return-wide v0
.end method

.method public getServerType()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/miui/gallery/data/DBImage;->mServerType:I

    return v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1FileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/data/DBImage;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSha1Thumbnail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSha1ThumbnailSA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMD5Key()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->getSha1ThumbnailSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mShareAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mSize:J

    return-wide v0
.end method

.method public getSpecialTypeFlags()J
    .locals 2

    .prologue
    .line 816
    iget-wide v0, p0, Lcom/miui/gallery/data/DBImage;->mSpecialTypeFlags:J

    return-wide v0
.end method

.method public getSubUbiImageCount()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/miui/gallery/data/DBImage;->mUbiSubImageCount:I

    return v0
.end method

.method public getSubUbiIndex()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/miui/gallery/data/DBImage;->mUbiSubIndex:I

    return v0
.end method

.method public abstract getTagId()Ljava/lang/String;
.end method

.method public getThumbnailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mThumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/miui/gallery/data/DBImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUbiServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    const-string v0, ""

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/miui/gallery/data/DBImage;->mIsFavorite:Z

    return v0
.end method

.method public isImageType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 683
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 671
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretItem()Z
    .locals 2

    .prologue
    .line 742
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    .line 745
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isShareItem()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public isSubUbiFocus()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public isUbiFocus()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoType()Z
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadData(Landroid/database/Cursor;)Z
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "isUpdated":Z
    new-instance v5, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v5}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 163
    .local v5, "uh":Lcom/miui/gallery/util/UpdateHelper;
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mId:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mId:Ljava/lang/String;

    .line 164
    iget-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mGroupId:J

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mGroupId:J

    .line 165
    iget-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mSize:J

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mSize:J

    .line 166
    iget-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mDateModified:J

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mDateModified:J

    .line 167
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mMimeType:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mMimeType:Ljava/lang/String;

    .line 168
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mTitle:Ljava/lang/String;

    const/4 v9, 0x5

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mTitle:Ljava/lang/String;

    .line 169
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mDescription:Ljava/lang/String;

    const/4 v9, 0x6

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mDescription:Ljava/lang/String;

    .line 170
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mFileName:Ljava/lang/String;

    const/4 v9, 0x7

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mFileName:Ljava/lang/String;

    .line 171
    iget-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mDatetaken:J

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mDatetaken:J

    .line 172
    iget v6, p0, Lcom/miui/gallery/data/DBImage;->mDuration:I

    const/16 v9, 0x9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/data/DBImage;->mDuration:I

    .line 173
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mServerId:Ljava/lang/String;

    const/16 v9, 0xa

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mServerId:Ljava/lang/String;

    .line 174
    iget v6, p0, Lcom/miui/gallery/data/DBImage;->mServerType:I

    const/16 v9, 0xb

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/data/DBImage;->mServerType:I

    .line 175
    iget-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mServerTag:J

    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBImage;->mServerTag:J

    .line 176
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mServerStatus:Ljava/lang/String;

    const/16 v9, 0xc

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mServerStatus:Ljava/lang/String;

    .line 177
    iget v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalFlag:I

    const/16 v9, 0x23

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalFlag:I

    .line 178
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mThumbnailFile:Ljava/lang/String;

    const/16 v9, 0x24

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mThumbnailFile:Ljava/lang/String;

    .line 180
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mDownloadFile:Ljava/lang/String;

    const/16 v9, 0x25

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mDownloadFile:Ljava/lang/String;

    .line 181
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mMicroThumbFile:Ljava/lang/String;

    const/16 v9, 0x29

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mMicroThumbFile:Ljava/lang/String;

    .line 182
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalFile:Ljava/lang/String;

    const/16 v9, 0x26

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalFile:Ljava/lang/String;

    .line 183
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    const/16 v9, 0x27

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    .line 184
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalGroupId:Ljava/lang/String;

    const/16 v9, 0x2a

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalGroupId:Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalImageId:Ljava/lang/String;

    const/16 v9, 0x2b

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLocalImageId:Ljava/lang/String;

    .line 186
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mShareAlbumId:Ljava/lang/String;

    const/16 v9, 0x2c

    invoke-static {p1, v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mShareAlbumId:Ljava/lang/String;

    .line 188
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLongitudeStr:Ljava/lang/String;

    const/16 v9, 0x12

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLongitudeStr:Ljava/lang/String;

    .line 189
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLatitudeStr:Ljava/lang/String;

    const/16 v9, 0x11

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLatitudeStr:Ljava/lang/String;

    .line 190
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLongitudeStrRef:Ljava/lang/String;

    const/16 v9, 0x17

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLongitudeStrRef:Ljava/lang/String;

    .line 191
    iget-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLatitudeStrRef:Ljava/lang/String;

    const/16 v9, 0x16

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/data/DBImage;->mLatitudeStrRef:Ljava/lang/String;

    .line 194
    :try_start_0
    sget-object v6, Lcom/miui/gallery/data/DBImage;->sExifDataConst:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;

    .line 195
    .local v1, "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    iget v9, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->exifValueType:I

    packed-switch v9, :pswitch_data_0

    .line 231
    const-string v9, "DBImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exifDataConst.exifValueType is wrong: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->exifValueType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v1    # "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "DBCloud"

    const-string v9, "DBCloud(Cursor c): put JSON error"

    invoke-static {v6, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v5}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    move v6, v8

    :goto_1
    return v6

    .line 197
    .restart local v1    # "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    :pswitch_0
    :try_start_1
    iget v9, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->columnIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 198
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 199
    const/4 v3, 0x1

    .line 201
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 204
    :cond_3
    iget v9, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->columnIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 205
    .local v2, "intValue":I
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 206
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    .line 210
    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 208
    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    .line 214
    .end local v2    # "intValue":I
    :pswitch_1
    iget v9, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->columnIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "stringValue":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 216
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 217
    const/4 v3, 0x1

    .line 219
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 222
    :cond_5
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 223
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "stringValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 227
    .restart local v4    # "stringValue":Ljava/lang/String;
    :goto_3
    iget-object v9, p0, Lcom/miui/gallery/data/DBImage;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBImage$ExifDataConst;->cloudTagName:Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 225
    :cond_6
    const/4 v3, 0x1

    goto :goto_3

    .end local v1    # "exifDataConst":Lcom/miui/gallery/data/DBImage$ExifDataConst;
    .end local v4    # "stringValue":Ljava/lang/String;
    :cond_7
    move v6, v7

    .line 239
    goto/16 :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFileName"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mFileName:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setGroupId(J)V
    .locals 1
    .param p1, "mGroupId"    # J

    .prologue
    .line 389
    iput-wide p1, p0, Lcom/miui/gallery/data/DBImage;->mGroupId:J

    .line 390
    return-void
.end method

.method public setLocalFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocalFile"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mLocalFile:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setMicroThumbFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "microThumbFile"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mMicroThumbFile:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setOriginInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "originSha1"    # Ljava/lang/String;
    .param p2, "originFileName"    # Ljava/lang/String;

    .prologue
    .line 801
    return-void
.end method

.method public abstract setRequestAlbumId(Ljava/lang/String;)V
.end method

.method public setSecretKey([B)V
    .locals 0
    .param p1, "secretKey"    # [B

    .prologue
    .line 381
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mSecretKey:[B

    .line 382
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerId"    # Ljava/lang/String;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mServerId:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSha1"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mSha1:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setShareAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mShareAlbumId"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mShareAlbumId:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareId"    # Ljava/lang/String;

    .prologue
    .line 731
    return-void
.end method

.method public setSubUbiImageCount(I)V
    .locals 0
    .param p1, "subUbiImageCount"    # I

    .prologue
    .line 703
    iput p1, p0, Lcom/miui/gallery/data/DBImage;->mUbiSubImageCount:I

    .line 704
    return-void
.end method

.method public setThumbnailFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mThumbnailFile"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/miui/gallery/data/DBImage;->mThumbnailFile:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .local v0, "cloudJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DBImage;->getBasicValues(Lorg/json/JSONObject;)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "groupId"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    const-string/jumbo v2, "status"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 256
    const-string/jumbo v2, "tag"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    :cond_3
    iget v2, p0, Lcom/miui/gallery/data/DBImage;->mUbiSubImageCount:I

    if-lez v2, :cond_4

    .line 259
    const-string/jumbo v2, "ubiSubImageCount"

    iget v3, p0, Lcom/miui/gallery/data/DBImage;->mUbiSubImageCount:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    const-string v2, "currentFocusIndex"

    iget v3, p0, Lcom/miui/gallery/data/DBImage;->mUbiFocusIndex:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v2, "ubiDefaultIndex"

    iget v3, p0, Lcom/miui/gallery/data/DBImage;->mUbiSubIndex:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getOriginSha1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 264
    const-string v2, "originSha1"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getOriginSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_5
    :goto_0
    return-object v0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "DBCloud"

    const-string/jumbo v3, "toJSONObject: get JSON error"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toJsonObjectForSubUbi()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 340
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 342
    .local v0, "cloudJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DBImage;->getBasicValues(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e2":Lorg/json/JSONException;
    const-string v3, "DBCloud"

    const-string v4, "put null JSON_TAG_TYPE failed"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    .end local v2    # "e2":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 344
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v3, "DBCloud"

    const-string/jumbo v4, "toJsonObjectForSubUbi: get JSON error"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 348
    :catch_2
    move-exception v2

    .line 349
    .restart local v2    # "e2":Lorg/json/JSONException;
    const-string v3, "DBCloud"

    const-string v4, "put null JSON_TAG_TYPE failed"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "e2":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    .line 347
    :try_start_4
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 350
    :goto_1
    throw v3

    .line 348
    :catch_3
    move-exception v2

    .line 349
    .restart local v2    # "e2":Lorg/json/JSONException;
    const-string v4, "DBCloud"

    const-string v5, "put null JSON_TAG_TYPE failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ _id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 822
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 823
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
