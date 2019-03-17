.class Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;
.super Landroid/os/AsyncTask;
.source "CollagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/core/CollagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOutPath:Ljava/lang/String;

.field private final mRenderData:Lcom/miui/gallery/collage/core/RenderData;

.field private final mRenderEngine:Lcom/miui/gallery/collage/core/RenderEngine;

.field private mSaveListener:Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

.field private mSuccess:Z


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/core/RenderEngine;Lcom/miui/gallery/collage/core/RenderData;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "renderEngine"    # Lcom/miui/gallery/collage/core/RenderEngine;
    .param p2, "renderData"    # Lcom/miui/gallery/collage/core/RenderData;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSuccess:Z

    .line 200
    iput-object p1, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mRenderEngine:Lcom/miui/gallery/collage/core/RenderEngine;

    .line 201
    iput-object p2, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mRenderData:Lcom/miui/gallery/collage/core/RenderData;

    .line 202
    iput-object p3, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mOutPath:Ljava/lang/String;

    .line 203
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mContext:Landroid/content/Context;

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/core/RenderEngine;Lcom/miui/gallery/collage/core/RenderData;Ljava/lang/String;Landroid/content/Context;Lcom/miui/gallery/collage/core/CollagePresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/core/RenderEngine;
    .param p2, "x1"    # Lcom/miui/gallery/collage/core/RenderData;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/content/Context;
    .param p5, "x4"    # Lcom/miui/gallery/collage/core/CollagePresenter$1;

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;-><init>(Lcom/miui/gallery/collage/core/RenderEngine;Lcom/miui/gallery/collage/core/RenderData;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;)Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;
    .param p1, "x1"    # Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSaveListener:Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 208
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSuccess:Z

    .line 209
    iget-object v6, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mRenderEngine:Lcom/miui/gallery/collage/core/RenderEngine;

    iget-object v7, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mRenderData:Lcom/miui/gallery/collage/core/RenderData;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/collage/core/RenderEngine;->render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    :goto_0
    return-object v8

    .line 213
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mOutPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 216
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 217
    .local v5, "parent":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 218
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 220
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 223
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 225
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 226
    iget-object v6, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v2, v7}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/io/File;I)Landroid/net/Uri;

    .line 228
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSuccess:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    invoke-static {v4}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 233
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 229
    .end local v5    # "parent":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v6, "CollagePresenter"

    invoke-static {v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "parent":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 229
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSaveListener:Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSaveListener:Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mOutPath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->mSuccess:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;->onSaveFinish(Ljava/lang/String;Z)V

    .line 242
    :cond_0
    return-void
.end method
