.class Lcom/miui/gallery/util/uil/PhotoReusedBitCache$1;
.super Ljava/lang/Object;
.source "PhotoReusedBitCache.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->initFirstCacheBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/PhotoReusedBitCache;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/PhotoReusedBitCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/util/uil/PhotoReusedBitCache$1;->this$0:Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 6
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 51
    const-string v4, "PhotoReusedBitCache"

    const-string v5, "init first cache bitmap"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/miui/gallery/util/uil/PhotoReusedBitCache$1;->this$0:Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    invoke-virtual {v4}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->clear()V

    .line 54
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 55
    .local v3, "width":I
    mul-int/lit8 v4, v3, 0x4

    div-int/lit8 v2, v4, 0x3

    .line 56
    .local v2, "height":I
    iget-object v4, p0, Lcom/miui/gallery/util/uil/PhotoReusedBitCache$1;->this$0:Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    invoke-virtual {v4}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, "bit":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/gallery/util/uil/PhotoReusedBitCache$1;->this$0:Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->put(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "PhotoReusedBitCache"

    const-string v5, "create first cache bitmap oom"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
