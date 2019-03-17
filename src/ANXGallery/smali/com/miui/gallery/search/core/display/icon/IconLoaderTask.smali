.class public Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;
.super Ljava/lang/Object;
.source "IconLoaderTask.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECT:Landroid/graphics/RectF;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mConsumer:Lcom/miui/gallery/search/core/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/Consumer",
            "<",
            "Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "file_path"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "decode_region_orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "decode_region_x"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "decode_region_y"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "decode_region_w"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "decode_region_h"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->PROJECTION:[Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->DEFAULT_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/miui/gallery/search/core/Consumer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconUri"    # Landroid/net/Uri;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/miui/gallery/search/core/Consumer",
            "<",
            "Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "consumer":Lcom/miui/gallery/search/core/Consumer;, "Lcom/miui/gallery/search/core/Consumer<Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mIconUri:Landroid/net/Uri;

    .line 68
    iput-object p3, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mConsumer:Lcom/miui/gallery/search/core/Consumer;

    .line 69
    iput-object p4, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->DEFAULT_RECT:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;)Lcom/miui/gallery/search/core/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mConsumer:Lcom/miui/gallery/search/core/Consumer;

    return-object v0
.end method

.method private consumeResult(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)V
    .locals 2
    .param p1, "result"    # Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mConsumer:Lcom/miui/gallery/search/core/Consumer;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/Consumer;->consume(Ljava/lang/Object;)Z

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$1;-><init>(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 13
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v12, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    .local v11, "result":Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;
    const/4 v8, 0x0

    .line 77
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/miui/gallery/search/SearchContract$Icon;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "icon_uri"

    iget-object v4, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mIconUri:Landroid/net/Uri;

    .line 78
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, "queryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "filePath":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "downloadUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "regionDecode":Landroid/graphics/RectF;
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v2, Lcom/miui/gallery/util/face/FaceRegionRectF;

    .end local v2    # "regionDecode":Landroid/graphics/RectF;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v0, 0x4

    .line 86
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v0, 0x3

    .line 87
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    const/4 v5, 0x5

    .line 88
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float/2addr v5, v0

    const/4 v0, 0x4

    .line 89
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    const/4 v6, 0x6

    .line 90
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    add-float/2addr v6, v0

    const/4 v0, 0x2

    .line 91
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    .line 93
    .restart local v2    # "regionDecode":Landroid/graphics/RectF;
    :cond_0
    new-instance v11, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    .end local v11    # "result":Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;
    iget-object v3, p0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->mIconUri:Landroid/net/Uri;

    if-nez v9, :cond_3

    move-object v0, v12

    :goto_0
    invoke-direct {v11, v3, v10, v0, v2}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v2    # "regionDecode":Landroid/graphics/RectF;
    .end local v9    # "downloadUri":Ljava/lang/String;
    .end local v10    # "filePath":Ljava/lang/String;
    .restart local v11    # "result":Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;
    :cond_1
    if-eqz v8, :cond_2

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_2
    invoke-direct {p0, v11}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;->consumeResult(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)V

    .line 101
    return-object v12

    .line 93
    .end local v11    # "result":Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;
    .restart local v2    # "regionDecode":Landroid/graphics/RectF;
    .restart local v9    # "downloadUri":Ljava/lang/String;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 96
    .end local v1    # "queryUri":Landroid/net/Uri;
    .end local v2    # "regionDecode":Landroid/graphics/RectF;
    .end local v9    # "downloadUri":Ljava/lang/String;
    .end local v10    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
