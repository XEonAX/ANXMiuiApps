.class final Lcom/miui/gallery/util/MediaStoreUtils$4;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MediaStoreUtils;->getFileMediaUri(Ljava/lang/String;)Landroid/net/Uri;
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
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 256
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 258
    .local v0, "id":J
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 265
    .end local v0    # "id":J
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 261
    .restart local v0    # "id":J
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 265
    .end local v0    # "id":J
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/MediaStoreUtils$4;->handle(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
