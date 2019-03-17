.class public Lcom/miui/gallery/loader/MediaSetLoader;
.super Lcom/miui/gallery/loader/CursorSetLoader;
.source "MediaSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;
    }
.end annotation


# static fields
.field private static final BUCKET_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBucketIds:[Ljava/lang/String;

.field private mFromCamera:Z

.field private mInitId:J

.field private mInitPos:I

.field private mIsFromScreenshot:Z

.field private mIsInternal:Z

.field private mLimitUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/loader/MediaSetLoader;->PROJECTION:[Ljava/lang/String;

    .line 57
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/loader/MediaSetLoader;->BUCKET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "isInternal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/CursorSetLoader;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    .line 90
    iput-boolean p4, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mIsInternal:Z

    .line 91
    iput-object p2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mUri:Landroid/net/Uri;

    .line 93
    const-string v2, "from_MiuiCamera"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mFromCamera:Z

    .line 94
    const-string v2, "from_MiuiScreenShot"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mIsFromScreenshot:Z

    .line 95
    const-string v2, "SecureUri"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mLimitUris:Ljava/util/ArrayList;

    .line 96
    const-string v2, "com.miui.gallery.extra.preview_single_item"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    .local v1, "previewSingleItem":Z
    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mLimitUris:Ljava/util/ArrayList;

    .line 99
    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    const-string v2, "photo_transition_data"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/ImageLoadParams;

    .line 102
    .local v0, "imageLoadParams":Lcom/miui/gallery/model/ImageLoadParams;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/miui/gallery/model/ImageLoadParams;->getKey()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitId:J

    .line 105
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/loader/MediaSetLoader;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/loader/MediaSetLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/loader/MediaSetLoader;->genAllBucketIds(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/loader/MediaSetLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/loader/MediaSetLoader;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mFromCamera:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/loader/MediaSetLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/loader/MediaSetLoader;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mIsFromScreenshot:Z

    return v0
.end method

.method private genAllBucketIds(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "uriPath"    # Ljava/lang/String;
    .param p2, "uriBucketId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "bucketPath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miui/gallery/loader/MediaSetLoader;->needLoadAllBucket(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 175
    invoke-virtual {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v4, v5}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "bucketPaths":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 189
    .end local v1    # "bucketPath":Ljava/lang/String;
    .end local v2    # "bucketPaths":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 179
    .restart local v1    # "bucketPath":Ljava/lang/String;
    .restart local v2    # "bucketPaths":[Ljava/lang/String;
    :cond_1
    array-length v4, v2

    new-array v0, v4, [Ljava/lang/String;

    .line 180
    .local v0, "bucketIds":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 181
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->getBucketID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "bucketIds":[Ljava/lang/String;
    .end local v1    # "bucketPath":Ljava/lang/String;
    .end local v2    # "bucketPaths":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    goto :goto_0
.end method

.method private isLimitedUris()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private needLoadAllBucket(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bucketPath"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "relativePath":Ljava/lang/String;
    const-string v1, "DCIM/Camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 166
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string v0, "datetaken DESC, _id DESC"

    return-object v0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/miui/gallery/loader/MediaSetLoader;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 6

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->isLimitedUris()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mLimitUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 208
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 209
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    return-object v2

    .line 214
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mBucketIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mProcessingIds:Ljava/util/List;

    .line 216
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR _id in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    iget-object v5, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mProcessingIds:Ljava/util/List;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_2
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mIsInternal:Z

    if-eqz v0, :cond_0

    const-string v0, "internal"

    :goto_0
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "external"

    goto :goto_0
.end method

.method public loadInBackground()Lcom/miui/gallery/model/CursorDataSet;
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, -0x1

    .line 114
    iget-wide v2, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitId:J

    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-lez v0, :cond_1

    iget-wide v8, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitId:J

    .line 115
    .local v8, "id":J
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->isLimitedUris()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-super {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->loadInBackground()Lcom/miui/gallery/model/CursorDataSet;

    move-result-object v7

    .line 117
    .local v7, "dataSet":Lcom/miui/gallery/model/CursorDataSet;
    if-eqz v7, :cond_6

    .line 118
    iget v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    if-ne v0, v14, :cond_0

    .line 119
    new-instance v10, Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {v10}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    .line 120
    .local v10, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v10, v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    .line 121
    invoke-virtual {v7, v10, v14}, Lcom/miui/gallery/model/CursorDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    .line 123
    .end local v10    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    iget v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    invoke-virtual {v7, v0}, Lcom/miui/gallery/model/CursorDataSet;->setInitPosition(I)V

    .line 158
    .end local v7    # "dataSet":Lcom/miui/gallery/model/CursorDataSet;
    :goto_1
    return-object v7

    .line 114
    .end local v8    # "id":J
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    goto :goto_0

    .line 127
    .restart local v8    # "id":J
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mBucketIds:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 128
    iget-boolean v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mIsInternal:Z

    if-eqz v0, :cond_5

    const-string v0, "internal"

    :goto_2
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/loader/MediaSetLoader;->BUCKET_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 133
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v6

    new-instance v6, Lcom/miui/gallery/loader/MediaSetLoader$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/loader/MediaSetLoader$1;-><init>(Lcom/miui/gallery/loader/MediaSetLoader;)V

    .line 131
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mBucketIds:[Ljava/lang/String;

    .line 144
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mBucketIds:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 145
    invoke-static {}, Lcom/miui/gallery/provider/ProcessingMediaManager;->queryProcessingMediaIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mProcessingIds:Ljava/util/List;

    .line 146
    invoke-super {p0}, Lcom/miui/gallery/loader/CursorSetLoader;->loadInBackground()Lcom/miui/gallery/model/CursorDataSet;

    move-result-object v7

    .line 147
    .restart local v7    # "dataSet":Lcom/miui/gallery/model/CursorDataSet;
    if-eqz v7, :cond_6

    .line 148
    iget v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    if-ne v0, v14, :cond_4

    .line 149
    new-instance v10, Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {v10}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    .line 150
    .restart local v10    # "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v10, v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    .line 151
    invoke-virtual {v7, v10, v14}, Lcom/miui/gallery/model/CursorDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    .line 153
    .end local v10    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_4
    iget v0, p0, Lcom/miui/gallery/loader/MediaSetLoader;->mInitPos:I

    invoke-virtual {v7, v0}, Lcom/miui/gallery/model/CursorDataSet;->setInitPosition(I)V

    goto :goto_1

    .line 128
    .end local v7    # "dataSet":Lcom/miui/gallery/model/CursorDataSet;
    :cond_5
    const-string v0, "external"

    goto :goto_2

    :cond_6
    move-object v7, v5

    .line 158
    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/loader/MediaSetLoader;->loadInBackground()Lcom/miui/gallery/model/CursorDataSet;

    move-result-object v0

    return-object v0
.end method

.method protected wrapDataSet(Landroid/database/Cursor;)Lcom/miui/gallery/model/CursorDataSet;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 232
    new-instance v0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;-><init>(Lcom/miui/gallery/loader/MediaSetLoader;Landroid/database/Cursor;)V

    return-object v0
.end method
