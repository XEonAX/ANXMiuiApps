.class public Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;
.super Ljava/lang/Object;
.source "BaseUriAdapter.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    .line 24
    sget-object v0, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "gallery_cloud/#"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    sget-object v0, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "share_image/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->getBaseUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getBaseUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 59
    sget-object v0, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_0

    .line 63
    :pswitch_2
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private translate2ImageUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    sget-object v0, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :pswitch_0
    const/4 p1, 0x0

    .end local p1    # "uri":Landroid/net/Uri;
    :pswitch_1
    return-object p1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->translate2ImageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 30
    .local v1, "imageUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "*"

    aput-object v5, v2, v4

    new-instance v6, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter$1;-><init>(Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;Landroid/net/Uri;)V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method
