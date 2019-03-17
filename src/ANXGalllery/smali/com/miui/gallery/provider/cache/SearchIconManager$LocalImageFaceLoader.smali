.class Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader;
.super Ljava/lang/Object;
.source "SearchIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalImageFaceLoader"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "faceXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "faceYScale"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "faceWScale"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "faceHScale"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static queryIcon(Landroid/net/Uri;Landroid/content/Context;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 9
    .param p0, "iconUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 188
    const-string v0, "serverId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "serverId":Ljava/lang/String;
    const-string v0, "faceId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "faceId":Ljava/lang/String;
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->IMAGE_FACE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "image_server_id"

    .line 191
    invoke-virtual {v0, v2, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "serverId"

    .line 192
    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, "queryUri":Landroid/net/Uri;
    sget-object v2, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageFaceLoader$1;-><init>(Landroid/net/Uri;)V

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/SearchIconItem;

    return-object v0
.end method
