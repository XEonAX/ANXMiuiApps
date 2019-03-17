.class final Lcom/miui/gallery/scanner/MediaScanner$3;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/MediaScanner;->fillSpecialTypeFlags(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScanner$3;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScanner$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 427
    const v0, 0x7fffffff

    .line 429
    .local v0, "id":I
    if-eqz p1, :cond_2

    .line 430
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScanner$3;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScanner$3;->val$jc:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v5}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    const/4 v5, 0x0

    .line 450
    :goto_1
    return-object v5

    .line 434
    :cond_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 435
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    invoke-static {v1}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->parseFlagsForImage(Ljava/lang/String;)J

    move-result-wide v2

    .line 438
    .local v2, "specialTypeFlags":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 439
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "specialTypeFlags"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    iget-object v5, p0, Lcom/miui/gallery/scanner/MediaScanner$3;->val$context:Landroid/content/Context;

    sget-object v6, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v8, v11, [Ljava/lang/String;

    .line 444
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 441
    invoke-static {v5, v6, v4, v7, v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "specialTypeFlags":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner$3;->handle(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
