.class final Lcom/miui/gallery/util/MediaStoreUtils$3;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MediaStoreUtils;->getLastMediaUri()Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 226
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 230
    .local v0, "id":J
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 238
    .end local v0    # "id":J
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 233
    .restart local v0    # "id":J
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 238
    .end local v0    # "id":J
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/MediaStoreUtils$3;->handle(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
