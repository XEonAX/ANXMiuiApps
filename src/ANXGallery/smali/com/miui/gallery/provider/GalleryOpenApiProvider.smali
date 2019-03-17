.class public Lcom/miui/gallery/provider/GalleryOpenApiProvider;
.super Landroid/content/ContentProvider;
.source "GalleryOpenApiProvider.java"


# static fields
.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 28
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.open_api"

    const-string v2, "check_thumbnail"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.open_api"

    const-string v2, "search_status"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.open_api"

    const-string v2, "secret_album"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getSecretAlbumUnsyncedCount()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 66
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s) AND (%s) AND (%s = %d OR %s = %d)"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    aput-object v5, v2, v8

    const-string v5, "(localGroupId=-1000)"

    aput-object v5, v2, v9

    const/4 v5, 0x2

    const-string v6, "localFlag"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const/4 v6, 0x7

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "localFlag"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 66
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "count(_id)"

    aput-object v5, v2, v8

    new-instance v6, Lcom/miui/gallery/provider/GalleryOpenApiProvider$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/provider/GalleryOpenApiProvider$1;-><init>(Lcom/miui/gallery/provider/GalleryOpenApiProvider;)V

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 82
    .local v7, "count":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    sget-object v5, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 44
    .local v2, "matchResult":I
    packed-switch v2, :pswitch_data_0

    .line 62
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 46
    :pswitch_0
    const-string/jumbo v5, "strict_mode"

    invoke-virtual {p1, v5, v8}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    .line 47
    .local v4, "strictMode":Z
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p4, v4}, Lcom/miui/gallery/provider/CheckThumbnailHelper;->checkThumbnail(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 50
    .end local v4    # "strictMode":Z
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->getOpenApiSearchStatus()I

    move-result v3

    .line 51
    .local v3, "status":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "status"

    aput-object v6, v5, v8

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 52
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "status":I
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryOpenApiProvider;->getSecretAlbumUnsyncedCount()I

    move-result v0

    .line 57
    .local v0, "count":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "unsynced_count"

    aput-object v6, v5, v8

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 58
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
