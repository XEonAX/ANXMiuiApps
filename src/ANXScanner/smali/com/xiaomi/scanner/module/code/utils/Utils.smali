.class public Lcom/xiaomi/scanner/module/code/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Utils"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatToGB(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v2, ""

    .line 286
    .local v2, "format":Ljava/lang/String;
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 287
    .local v0, "ISO":Z
    if-eqz v0, :cond_0

    .line 288
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "GB2312"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "format":Ljava/lang/String;
    .local v3, "format":Ljava/lang/String;
    move-object v2, v3

    .line 295
    .end local v0    # "ISO":Z
    .end local v3    # "format":Ljava/lang/String;
    .restart local v2    # "format":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 290
    .restart local v0    # "ISO":Z
    :cond_0
    move-object v2, p0

    goto :goto_0

    .line 292
    .end local v0    # "ISO":Z
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static genMultLinesString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 398
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 400
    const-string v2, "\u0008\u0008\u0008"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v2

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 190
    const/4 v8, 0x0

    .line 191
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 192
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 197
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 199
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 201
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 204
    if-eqz v8, :cond_0

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 207
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    if-eqz v8, :cond_2

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 207
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 205
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "documentUri"    # Landroid/net/Uri;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a document: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    const-string v1, "document"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a document: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 15
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 238
    const/4 v11, 0x0

    .line 239
    .local v11, "path":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .end local v12    # "scheme":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v0, v11

    .line 280
    :goto_1
    return-object v0

    .line 243
    .restart local v12    # "scheme":Ljava/lang/String;
    :cond_1
    const-string v0, "content"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v7, 0x0

    .line 245
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 246
    .local v10, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    .line 248
    .local v6, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 251
    .local v8, "cursorIndex":I
    if-eq v8, v14, :cond_4

    .line 252
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 268
    .end local v8    # "cursorIndex":I
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 269
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 274
    :cond_3
    :goto_3
    if-eqz v7, :cond_0

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 253
    .restart local v8    # "cursorIndex":I
    :cond_4
    :try_start_2
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_7

    .line 254
    invoke-static {v6}, Lcom/xiaomi/scanner/util/FileUtil;->getTempFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v0}, Lcom/xiaomi/scanner/util/FileUtil;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "getFilePathFromUri fail to copy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    if-eqz v10, :cond_5

    .line 269
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 274
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v13

    goto :goto_1

    .line 271
    :catch_0
    move-exception v9

    .line 272
    .local v9, "e":Ljava/io/IOException;
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "inputStream close fail"

    invoke-static {v0, v1, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 261
    .end local v9    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_4
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not operation this uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 264
    .end local v8    # "cursorIndex":I
    :catch_1
    move-exception v9

    .line 265
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "getFilePathFromUri fail"

    invoke-static {v0, v1, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    if-eqz v10, :cond_8

    .line 269
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 274
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    if-eqz v7, :cond_0

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 271
    :catch_2
    move-exception v9

    .line 272
    .local v9, "e":Ljava/io/IOException;
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "inputStream close fail"

    invoke-static {v0, v1, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 271
    .local v9, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 272
    .local v9, "e":Ljava/io/IOException;
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "inputStream close fail"

    invoke-static {v0, v1, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 267
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 268
    if-eqz v10, :cond_9

    .line 269
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 274
    :cond_9
    :goto_6
    if-eqz v7, :cond_a

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 271
    :catch_4
    move-exception v9

    .line 272
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "inputStream close fail"

    invoke-static {v1, v2, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static getNavigationBarHeight()I
    .locals 6

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "height":I
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 504
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 505
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 507
    :cond_0
    return v0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 114
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 117
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 119
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 120
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 124
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 114
    goto :goto_0

    .line 132
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 134
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    .line 136
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 137
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 135
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 142
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 143
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 147
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 156
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 157
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 161
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 150
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 151
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 152
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 153
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 166
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 167
    invoke-static {p0, p1, v8, v8}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 170
    :cond_8
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public static getRealHeight()I
    .locals 2

    .prologue
    .line 481
    sget v0, Lcom/xiaomi/scanner/util/Util;->screenHeight:I

    .line 482
    .local v0, "realHeight":I
    sget-boolean v1, Lcom/xiaomi/scanner/util/Util;->isNotchPhone:Z

    if-eqz v1, :cond_0

    .line 483
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 485
    :cond_0
    return v0
.end method

.method public static getServerByteFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 440
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 442
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 443
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 444
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStatusBarHeight()I
    .locals 6

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "result":I
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 495
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 496
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 498
    :cond_0
    return v1
.end method

.method private static varargs handleStringInfo(Ljava/util/List;[I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "keys"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;[I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v2, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz p1, :cond_2

    .line 423
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget v1, p1, v3

    .line 424
    .local v1, "key":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/bean/BusinessCardItem;

    .line 425
    .local v0, "info":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    iget v6, v0, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemType:I

    if-ne v6, v1, :cond_0

    .line 426
    iget-object v5, v0, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v0    # "info":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "key":I
    :cond_2
    return-object v2
.end method

.method public static final isChineseCharacter(Ljava/lang/String;)Z
    .locals 5
    .param p0, "chineseStr"    # Ljava/lang/String;

    .prologue
    const v4, 0xfffd

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 54
    .local v0, "charArray":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 56
    aget-char v2, v0, v1

    if-ltz v2, :cond_0

    aget-char v2, v0, v1

    if-lt v2, v4, :cond_1

    :cond_0
    aget-char v2, v0, v1

    if-le v2, v4, :cond_2

    aget-char v2, v0, v1

    const v3, 0xffff

    if-ge v2, v3, :cond_2

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    const/4 v2, 0x0

    .line 63
    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    const-string v2, "document"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 224
    const-string v0, "com.android.providers.downloads.documents"

    .line 225
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 215
    const-string v0, "com.android.externalstorage.documents"

    .line 216
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFullScreenDevice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 511
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 233
    const-string v0, "com.android.providers.media.documents"

    .line 234
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotchPhone()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    const-string v2, "ro.miui.notch"

    invoke-static {v2, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static varargs multSelect(Ljava/util/List;[I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;[I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->handleStringInfo(Ljava/util/List;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static newContact(Ljava/util/List;Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v9, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v9, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v9, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v9, "name"

    const/4 v10, 0x0

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v9, "phonetic_name"

    const/4 v10, 0x1

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v9, "phone"

    const/4 v10, 0x2

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v9, "secondary_phone"

    const/4 v10, 0x3

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "secondary_phone_type"

    .line 335
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0700ae

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v9, "tertiary_phone"

    const/16 v10, 0x9

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "tertiary_phone_type"

    .line 337
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07005b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v9, "email"

    const/4 v10, 0x4

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v9, "im_handle"

    const/16 v10, 0xb

    invoke-static {v10, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v9, "notes"

    invoke-static {p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->other(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v9, "company"

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-static {p0, v10}, Lcom/xiaomi/scanner/module/code/utils/Utils;->multSelect(Ljava/util/List;[I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/scanner/module/code/utils/Utils;->genMultLinesString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v9, "job_title"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    invoke-static {p0, v11}, Lcom/xiaomi/scanner/module/code/utils/Utils;->multSelect(Ljava/util/List;[I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/scanner/module/code/utils/Utils;->genMultLinesString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u0008\u0008\u0008"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    invoke-static {p0, v11}, Lcom/xiaomi/scanner/module/code/utils/Utils;->multSelect(Ljava/util/List;[I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/scanner/module/code/utils/Utils;->genMultLinesString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    invoke-static {p0, v9}, Lcom/xiaomi/scanner/module/code/utils/Utils;->multSelect(Ljava/util/List;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    .local v1, "address":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 348
    .local v3, "as":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 349
    .local v2, "addressRow":Landroid/content/ContentValues;
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v10, "data2"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v10, "data1"

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    .end local v2    # "addressRow":Landroid/content/ContentValues;
    .end local v3    # "as":Ljava/lang/String;
    :cond_2
    const/16 v9, 0xa

    invoke-static {v9, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "weiboText":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 358
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v7, "weibo":Landroid/content/ContentValues;
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v9, "data2"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v9, "data5"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v9, "data6"

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v9, "data1"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v7    # "weibo":Landroid/content/ContentValues;
    :cond_3
    const/16 v9, 0x11

    invoke-static {v9, p0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->onlyOneSelect(ILjava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 369
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v6, "urlRaw":Landroid/content/ContentValues;
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/website"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v9, "data2"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v9, "data1"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v6    # "urlRaw":Landroid/content/ContentValues;
    :cond_4
    const-string v9, "data"

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 341
    nop

    :array_0
    .array-data 4
        0xc
        0xd
    .end array-data

    .line 342
    :array_1
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x8
    .end array-data

    .line 345
    :array_3
    .array-data 4
        0xe
        0xf
    .end array-data
.end method

.method private static onlyOneSelect(ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    const/4 v2, 0x0

    .line 413
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p0, v1, v2

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->handleStringInfo(Ljava/util/List;[I)Ljava/util/ArrayList;

    move-result-object v0

    .line 414
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static other(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/bean/BusinessCardItem;

    .line 384
    .local v1, "info":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    iget v3, v1, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemType:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 385
    iget-object v2, v1, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .end local v1    # "info":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    :goto_0
    return-object v0

    .line 303
    :cond_0
    move-object v3, p0

    .line 304
    .local v3, "parse":Ljava/lang/String;
    const/4 v1, 0x0

    .line 305
    .local v1, "format":Ljava/text/SimpleDateFormat;
    const-string v4, "^(18|19|20|21){1}[0-9]{2}([^0-9]?)"

    const-string v5, "yyyy$2"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    const-string v4, "^[0-9]{2}([^0-9]?)"

    const-string v5, "yy$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    const-string v4, "([^0-9]?)(1{1}[0-2]{1}|0?[1-9]{1})([^0-9]?)"

    const-string v5, "$1MM$3"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    const-string v4, "([^0-9]?)(3{1}[0-1]{1}|[0-2]?[0-9]{1})([^0-9]?)"

    const-string v5, "$1dd$3"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    const-string v4, "([^0-9]?)(2[0-3]{1}|[0-1]?[0-9]{1})([^0-9]?)"

    const-string v5, "$1HH$3"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    const-string v4, "([^0-9]?)[0-5]?[0-9]{1}([^0-9]?)"

    const-string v5, "$1mm$2"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    const-string v4, "([^0-9]?)[0-5]?[0-9]{1}([^0-9]?)"

    const-string v5, "$1ss$2"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 316
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 317
    .local v0, "date":Ljava/util/Date;
    goto :goto_0

    .line 318
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v1    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v1    # "format":Ljava/text/SimpleDateFormat;
    goto :goto_0
.end method

.method public static scaleAndToByteFromBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "minSize"    # I

    .prologue
    .line 453
    const/4 v10, 0x0

    .line 455
    .local v10, "scaleBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v8, v0

    .line 456
    .local v8, "realHeight":F
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/scanner/translation/TranslateModel;->setTranslateImageRealHeight(F)V

    .line 457
    sget v0, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    int-to-float v9, v0

    .line 458
    .local v9, "realWidth":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 459
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 460
    .local v11, "scaleX":F
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 461
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 463
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 464
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v8, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->setScaleY(F)V

    .line 465
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v9, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->setScaleX(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "realHeight":F
    .end local v9    # "realWidth":F
    .end local v11    # "scaleX":F
    :goto_0
    if-nez v10, :cond_0

    .line 475
    move-object v10, p0

    .line 477
    :cond_0
    invoke-static {v10}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getServerByteFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0

    .line 467
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "realHeight":F
    .restart local v9    # "realWidth":F
    .restart local v11    # "scaleX":F
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v9, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->setScaleX(F)V

    .line 468
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v8, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->setScaleY(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "realHeight":F
    .end local v9    # "realWidth":F
    .end local v11    # "scaleX":F
    :catch_0
    move-exception v7

    .line 471
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/Utils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleAndToByteFromBitmap error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
