.class final Lcom/miui/gallery/scanner/MediaScannerUtil$6;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScannerUtil;->scanMediaProvider(Landroid/content/Context;)V
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
        "Landroid/util/ArrayMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Landroid/util/ArrayMap;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "videos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 354
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "videos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 355
    .restart local v0    # "videos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    :cond_0
    return-object v0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerUtil$6;->handle(Landroid/database/Cursor;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method
