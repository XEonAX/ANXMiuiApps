.class public Lcom/miui/gallery/loader/CloudSetLoader;
.super Lcom/miui/gallery/loader/CursorSetLoader;
.source "CloudSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;
    }
.end annotation


# instance fields
.field protected mAlbumId:J

.field protected mAlbumName:Ljava/lang/String;

.field protected mInitPos:I

.field protected mOrderBy:Ljava/lang/String;

.field protected mSelection:Ljava/lang/String;

.field protected mSelectionArgs:[Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/CursorSetLoader;-><init>(Landroid/content/Context;)V

    .line 26
    iput-wide v4, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumId:J

    .line 31
    iput-object p2, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mUri:Landroid/net/Uri;

    .line 32
    if-eqz p3, :cond_0

    .line 33
    const-string v0, "photo_init_position"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mInitPos:I

    .line 34
    const-string v0, "photo_selection"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mSelection:Ljava/lang/String;

    .line 35
    const-string v0, "photo_selection_args"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 36
    const-string v0, "photo_order_by"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mOrderBy:Ljava/lang/String;

    .line 37
    const-string v0, "album_name"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumName:Ljava/lang/String;

    .line 38
    const-string v0, "album_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumId:J

    .line 40
    :cond_0
    return-void
.end method

.method private static isStoryAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 76
    const-wide/32 v0, 0x7ffffff8

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVirtualAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 70
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7ffffffd

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7ffffffa

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getOperationDupType()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mUri:Landroid/net/Uri;

    const-string v3, "remove_duplicate_items"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 81
    .local v0, "duplicate":Z
    if-eqz v0, :cond_1

    .line 82
    iget-wide v2, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumId:J

    invoke-static {v2, v3}, Lcom/miui/gallery/loader/CloudSetLoader;->isVirtualAlbum(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumId:J

    invoke-static {v2, v3}, Lcom/miui/gallery/loader/CloudSetLoader;->isStoryAlbum(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :cond_0
    const/4 v1, 0x3

    .line 90
    :cond_1
    :goto_0
    return v1

    .line 84
    :cond_2
    iget-wide v2, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 85
    const/4 v1, 0x2

    goto :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mOrderBy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "alias_create_time DESC "

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mOrderBy:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/miui/gallery/util/MediaCursorHelper;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected wrapDataSet(Landroid/database/Cursor;)Lcom/miui/gallery/model/CursorDataSet;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 96
    new-instance v0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;

    iget v2, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mInitPos:I

    invoke-virtual {p0}, Lcom/miui/gallery/loader/CloudSetLoader;->getOperationDupType()I

    move-result v3

    iget-wide v4, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/loader/CloudSetLoader;->mAlbumName:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;-><init>(Landroid/database/Cursor;IIJLjava/lang/String;)V

    return-object v0
.end method
