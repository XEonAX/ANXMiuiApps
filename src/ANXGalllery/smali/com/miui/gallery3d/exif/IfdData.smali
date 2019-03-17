.class Lcom/miui/gallery3d/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery3d/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 47
    iput p1, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    .line 48
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/miui/gallery3d/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 131
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    instance-of v6, p1, Lcom/miui/gallery3d/exif/IfdData;

    if-eqz v6, :cond_5

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/miui/gallery3d/exif/IfdData;

    .line 136
    .local v0, "data":Lcom/miui/gallery3d/exif/IfdData;
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/IfdData;->getId()I

    move-result v6

    iget v7, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    if-ne v6, v7, :cond_5

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 137
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 138
    .local v3, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    array-length v7, v3

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v1, v3, v6

    .line 139
    .local v1, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Lcom/miui/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 142
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery3d/exif/ExifTag;

    .line 143
    .local v2, "tag2":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v1, v2}, Lcom/miui/gallery3d/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v5

    .line 144
    goto :goto_0

    .end local v0    # "data":Lcom/miui/gallery3d/exif/IfdData;
    .end local v1    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v2    # "tag2":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v3    # "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    :cond_5
    move v4, v5

    .line 150
    goto :goto_0
.end method

.method protected getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/gallery3d/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/miui/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 113
    return-void
.end method

.method protected setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .prologue
    .line 86
    iget v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setIfd(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method
