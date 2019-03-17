.class public Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;
.super Ljava/lang/Object;
.source "OperationHybridClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperationStoryJSBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method


# virtual methods
.method public saveImage(Ljava/lang/String;)Z
    .locals 13
    .param p1, "imageInfoString"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 202
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    const-string v10, "save_click"

    invoke-virtual {v9, v10}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->recordSaveEvent(Ljava/lang/String;)V

    .line 203
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v9, v9, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v9}, Lcom/miui/gallery/request/HostManager;->isInternalUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 204
    const/4 v9, 0x0

    .line 250
    :goto_0
    return v9

    .line 207
    :cond_0
    const-class v9, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageInfo;

    invoke-static {p1, v9}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageInfo;

    .line 208
    .local v5, "imageInfo":Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageInfo;
    if-eqz v5, :cond_2

    iget-object v9, v5, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageInfo;->data:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 210
    :try_start_0
    iget-object v9, v5, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient$ImageInfo;->data:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 211
    .local v1, "bytes":[B
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 213
    const-string v9, "OperationHybridClient"

    const-string v10, "save image from html,image size: %d X %d"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    const-string/jumbo v9, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 215
    .local v8, "stamp":Ljava/lang/CharSequence;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "IMG_%s.jpg"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCreativeDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;

    invoke-direct {v10, p0, v0}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;-><init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;Landroid/graphics/Bitmap;)V

    invoke-static {v9, v10}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/lang/String;Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 224
    .local v7, "result":Ljava/lang/Boolean;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 225
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v10, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v10, v10, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mWebView:Landroid/webkit/WebView;

    const-string v11, "javascript:onImageSaveResult()"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->callJsMethod(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 226
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v9, v9, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v9, v9, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v4, v10}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/io/File;I)Landroid/net/Uri;

    .line 228
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    const-string v10, "save_success"

    invoke-virtual {v9, v10}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->recordSaveEvent(Ljava/lang/String;)V

    .line 229
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->access$200(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;Ljava/lang/String;)V

    .line 237
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Boolean;
    .end local v8    # "stamp":Ljava/lang/CharSequence;
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 231
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/Boolean;
    .restart local v8    # "stamp":Ljava/lang/CharSequence;
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->this$0:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    iget-object v9, v9, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0299

    invoke-static {v9, v10}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 232
    const-string v9, "OperationHybridClient"

    const-string v10, "save image fail,bitmap compress error"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 238
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bytes":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Boolean;
    .end local v8    # "stamp":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 239
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string v9, "OperationHybridClient"

    const-string v10, "saveImage() failed %s"

    invoke-static {v9, v10, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 235
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bytes":[B
    :cond_3
    :try_start_1
    const-string v9, "OperationHybridClient"

    const-string v10, "save image fail,no bitmap got from web"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 241
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bytes":[B
    :catch_1
    move-exception v3

    .line 242
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v9, "OperationHybridClient"

    const-string v10, "saveImage() failed %s"

    invoke-static {v9, v10, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 244
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v9, "OperationHybridClient"

    const-string v10, "saveImage %s"

    invoke-static {v9, v10, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 246
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "OperationHybridClient"

    const-string v10, "saveImage %s"

    invoke-static {v9, v10, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
