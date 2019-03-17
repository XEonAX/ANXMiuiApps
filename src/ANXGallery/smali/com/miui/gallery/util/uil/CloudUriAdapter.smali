.class public Lcom/miui/gallery/util/uil/CloudUriAdapter;
.super Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;
.source "CloudUriAdapter.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/util/uil/CloudUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    .line 21
    sget-object v0, Lcom/miui/gallery/util/uil/CloudUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "gallery_cloud/#"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    sget-object v0, Lcom/miui/gallery/util/uil/CloudUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_owner_sububi/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    sget-object v0, Lcom/miui/gallery/util/uil/CloudUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "share_image/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    sget-object v0, Lcom/miui/gallery/util/uil/CloudUriAdapter;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "share_image_sububi/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;-><init>()V

    .line 46
    return-void
.end method

.method public static getDownloadUri(J)Landroid/net/Uri;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getLocalId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "userUri"    # Landroid/net/Uri;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserUri(Lcom/miui/gallery/sdk/uploadstatus/ItemType;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "itemType"    # Lcom/miui/gallery/sdk/uploadstatus/ItemType;
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/miui/gallery/util/uil/CloudUriAdapter$1;->$SwitchMap$com$miui$gallery$sdk$uploadstatus$ItemType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    .line 38
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 37
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_SUBUBI:Landroid/net/Uri;

    .line 41
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 40
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_2
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    .line 44
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 43
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_3
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI_SUBUBI:Landroid/net/Uri;

    .line 47
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 46
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
