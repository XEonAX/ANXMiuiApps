.class Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CropperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExportLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/editor/photo/app/CropperActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mOut:Landroid/net/Uri;

.field private mResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/CropperActivity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cropperActivity"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;
    .param p2, "out"    # Landroid/net/Uri;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 311
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mOut:Landroid/net/Uri;

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 313
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Boolean;

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 377
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mResult:Ljava/lang/Boolean;

    .line 379
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 382
    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->deliverResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public loadInBackground()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 317
    const-string v9, "CropperActivity"

    const-string/jumbo v10, "start export in background."

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .line 319
    .local v0, "cropperActivity":Lcom/miui/gallery/editor/photo/app/CropperActivity;
    if-nez v0, :cond_1

    .line 320
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 361
    :cond_0
    :goto_0
    return-object v9

    .line 322
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$400(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 323
    .local v6, "source":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 324
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 327
    :cond_2
    const-string v9, "file"

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mOut:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 328
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mOut:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "ext":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    .line 337
    .end local v2    # "ext":Ljava/lang/String;
    .local v3, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    const/4 v4, 0x0

    .line 339
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mOut:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 340
    .local v7, "stream":Ljava/io/OutputStream;
    if-eqz v7, :cond_6

    .line 341
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v9, 0x64

    :try_start_1
    invoke-virtual {v6, v3, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 351
    if-eqz v5, :cond_0

    .line 353
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "CropperActivity"

    invoke-static {v10, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "stream":Ljava/io/OutputStream;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mOut:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "type":Ljava/lang/String;
    const-string v9, "image/png"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 333
    .restart local v3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_2
    goto :goto_1

    .line 332
    .end local v3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_4
    const-string v9, "image/webp"

    .line 333
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2

    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2

    .line 356
    .end local v8    # "type":Ljava/lang/String;
    .restart local v3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CropperActivity"

    invoke-static {v10, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_6
    if-eqz v4, :cond_7

    .line 353
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 361
    .end local v7    # "stream":Ljava/io/OutputStream;
    :cond_7
    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_0

    .line 354
    .restart local v7    # "stream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "stream":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    if-eqz v4, :cond_7

    .line 353
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 354
    :catch_5
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 356
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_5
    :try_start_6
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 351
    if-eqz v4, :cond_7

    .line 353
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_3

    .line 354
    :catch_8
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 356
    .local v1, "e":Ljava/lang/SecurityException;
    :catch_9
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 348
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v1

    .line 349
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 351
    if-eqz v4, :cond_7

    .line 353
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_3

    .line 354
    :catch_b
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    :catch_c
    move-exception v1

    .line 357
    const-string v9, "CropperActivity"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v4, :cond_8

    .line 353
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 358
    :cond_8
    :goto_8
    throw v9

    .line 354
    :catch_d
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "CropperActivity"

    invoke-static {v10, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CropperActivity"

    invoke-static {v10, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_7

    .line 348
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_f
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_6

    .line 346
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_10
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 344
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_11
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->loadInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 388
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 367
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mResult:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->forceLoad()V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->mResult:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;->deliverResult(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
