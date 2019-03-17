.class public Lcom/miui/gallery/model/ImageLoadParams;
.super Ljava/lang/Object;
.source "ImageLoadParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/model/ImageLoadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mFileLength:J

.field private mFilePath:Ljava/lang/String;

.field private mFromCamera:Z

.field private mFromFace:Z

.field private mInitPosition:I

.field private mKey:J

.field private mMimeType:Ljava/lang/String;

.field private mRegionRect:Landroid/graphics/RectF;

.field private mSecretKey:[B

.field private mTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/miui/gallery/model/ImageLoadParams$1;

    invoke-direct {v0}, Lcom/miui/gallery/model/ImageLoadParams$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/model/ImageLoadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V
    .locals 0
    .param p1, "key"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "regionRect"    # Landroid/graphics/RectF;
    .param p6, "position"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "fileLength"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mKey:J

    .line 29
    iput-object p3, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFilePath:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/miui/gallery/model/ImageLoadParams;->mTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 31
    iput-object p5, p0, Lcom/miui/gallery/model/ImageLoadParams;->mRegionRect:Landroid/graphics/RectF;

    .line 32
    iput p6, p0, Lcom/miui/gallery/model/ImageLoadParams;->mInitPosition:I

    .line 33
    iput-object p7, p0, Lcom/miui/gallery/model/ImageLoadParams;->mMimeType:Ljava/lang/String;

    .line 34
    iput-wide p8, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFileLength:J

    .line 35
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;ZJ)V
    .locals 11
    .param p1, "key"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "regionRect"    # Landroid/graphics/RectF;
    .param p6, "position"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "fromFace"    # Z
    .param p9, "fileLength"    # J

    .prologue
    .line 40
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v1 .. v10}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 41
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromFace:Z

    .line 42
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V
    .locals 11
    .param p1, "key"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "regionRect"    # Landroid/graphics/RectF;
    .param p6, "position"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "secretKey"    # [B
    .param p9, "fileLength"    # J

    .prologue
    .line 47
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v1 .. v10}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 48
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/model/ImageLoadParams;->mKey:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFilePath:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 55
    const-class v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mRegionRect:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mInitPosition:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mMimeType:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "byteLength":I
    if-lez v0, :cond_0

    .line 60
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromFace:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromCamera:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFileLength:J

    .line 66
    return-void

    :cond_1
    move v1, v3

    .line 63
    goto :goto_0

    :cond_2
    move v2, v3

    .line 64
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/model/ImageLoadParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/model/ImageLoadParams;->getKey()J

    move-result-wide v0

    check-cast p1, Lcom/miui/gallery/model/ImageLoadParams;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getKey()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method public getFileLength()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFileLength:J

    return-wide v0
.end method

.method public getKey()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mKey:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mInitPosition:I

    return v0
.end method

.method public getRegionRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mRegionRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    return-object v0
.end method

.method public getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/miui/gallery/model/ImageLoadParams;->getKey()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFromFace()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromFace:Z

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isGifFromMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/model/ImageLoadParams;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public match(Lcom/miui/gallery/model/BaseDataItem;I)Z
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-nez p1, :cond_2

    .line 152
    iget v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mInitPosition:I

    if-ne p2, v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    iget-wide v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mKey:J

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 168
    return-void
.end method

.method public setFromCamera(Z)V
    .locals 0
    .param p1, "fromCamera"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromCamera:Z

    .line 176
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFilePath:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public updatePosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/miui/gallery/model/ImageLoadParams;->mInitPosition:I

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 75
    iget-wide v4, p0, Lcom/miui/gallery/model/ImageLoadParams;->mKey:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 78
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mRegionRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mInitPosition:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    array-length v0, v2

    .line 82
    .local v0, "length":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mSecretKey:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 86
    :cond_0
    iget-boolean v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromFace:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFromCamera:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-wide v2, p0, Lcom/miui/gallery/model/ImageLoadParams;->mFileLength:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    return-void

    .end local v0    # "length":I
    :cond_1
    move v0, v1

    .line 81
    goto :goto_0

    .restart local v0    # "length":I
    :cond_2
    move v2, v1

    .line 86
    goto :goto_1

    :cond_3
    move v3, v1

    .line 87
    goto :goto_2
.end method
