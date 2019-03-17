.class public Lcom/miui/gallery/util/XmpHelper;
.super Ljava/lang/Object;
.source "XmpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/XmpHelper$Section;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-class v1, Lcom/miui/gallery/util/XmpHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/util/XmpHelper;->TAG:Ljava/lang/String;

    .line 104
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/camera/"

    const-string v3, "GCamera"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 105
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 106
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    sget-object v1, Lcom/miui/gallery/util/XmpHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register ns http://ns.google.com/photos/1.0/camera/: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 170
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/miui/gallery/util/XmpHelper;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 171
    .local v5, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    if-nez v5, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v3

    .line 175
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/util/XmpHelper$Section;

    .line 176
    .local v4, "section":Lcom/miui/gallery/util/XmpHelper$Section;
    iget-object v7, v4, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    invoke-static {v7}, Lcom/miui/gallery/util/XmpHelper;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    iget-object v6, v4, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    invoke-static {v6}, Lcom/miui/gallery/util/XmpHelper;->getXMPContentEnd([B)I

    move-result v2

    .line 178
    .local v2, "end":I
    add-int/lit8 v6, v2, -0x1d

    new-array v0, v6, [B

    .line 179
    .local v0, "buffer":[B
    iget-object v6, v4, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    const/16 v7, 0x1d

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 183
    .local v3, "result":Lcom/adobe/xmp/XMPMeta;
    goto :goto_0

    .line 184
    .end local v3    # "result":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    sget-object v6, Lcom/miui/gallery/util/XmpHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMP parse error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getXMPContentEnd([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 373
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 374
    aget-byte v1, p0, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 375
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    .line 376
    add-int/lit8 v1, v0, 0x1

    .line 381
    :goto_1
    return v1

    .line 373
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 381
    :cond_1
    array-length v1, p0

    goto :goto_1
.end method

.method private static hasXMPHeader([B)Z
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/16 v4, 0x1d

    const/4 v2, 0x0

    .line 347
    array-length v3, p0

    if-ge v3, v4, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    const/16 v3, 0x1d

    :try_start_0
    new-array v1, v3, [B

    .line 352
    .local v1, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {p0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const/4 v2, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "readMetaOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/XmpHelper$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xff

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 395
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v13, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/16 v10, 0xd8

    if-eq v9, v10, :cond_3

    .line 448
    :cond_0
    if-eqz p0, :cond_1

    .line 450
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v7, v8

    .line 453
    :cond_2
    :goto_1
    return-object v7

    .line 398
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v7, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_11

    .line 401
    if-eq v0, v13, :cond_5

    .line 448
    if-eqz p0, :cond_4

    .line 450
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    move-object v7, v8

    .line 453
    goto :goto_1

    .line 405
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eq v0, v13, :cond_5

    .line 407
    if-ne v0, v12, :cond_7

    .line 448
    if-eqz p0, :cond_6

    .line 450
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    move-object v7, v8

    .line 453
    goto :goto_1

    .line 410
    :cond_7
    move v5, v0

    .line 411
    .local v5, "marker":I
    const/16 v9, 0xda

    if-ne v5, v9, :cond_9

    .line 414
    if-nez p1, :cond_8

    .line 415
    :try_start_6
    new-instance v6, Lcom/miui/gallery/util/XmpHelper$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/miui/gallery/util/XmpHelper$Section;-><init>(Lcom/miui/gallery/util/XmpHelper$1;)V

    .line 416
    .local v6, "section":Lcom/miui/gallery/util/XmpHelper$Section;
    iput v5, v6, Lcom/miui/gallery/util/XmpHelper$Section;->marker:I

    .line 417
    const/4 v9, -0x1

    iput v9, v6, Lcom/miui/gallery/util/XmpHelper$Section;->length:I

    .line 418
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    .line 419
    iget-object v9, v6, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    array-length v11, v11

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 420
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 448
    .end local v6    # "section":Lcom/miui/gallery/util/XmpHelper$Section;
    :cond_8
    if-eqz p0, :cond_2

    .line 450
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 451
    :catch_0
    move-exception v8

    goto :goto_1

    .line 424
    :cond_9
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 425
    .local v3, "lh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    .line 426
    .local v4, "ll":I
    if-eq v3, v12, :cond_a

    if-ne v4, v12, :cond_c

    .line 448
    :cond_a
    if-eqz p0, :cond_b

    .line 450
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_b
    :goto_5
    move-object v7, v8

    .line 453
    goto :goto_1

    .line 429
    :cond_c
    shl-int/lit8 v9, v3, 0x8

    or-int v2, v9, v4

    .line 430
    .local v2, "length":I
    if-eqz p1, :cond_d

    const/16 v9, 0xe1

    if-ne v0, v9, :cond_f

    .line 431
    :cond_d
    :try_start_a
    new-instance v6, Lcom/miui/gallery/util/XmpHelper$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/miui/gallery/util/XmpHelper$Section;-><init>(Lcom/miui/gallery/util/XmpHelper$1;)V

    .line 432
    .restart local v6    # "section":Lcom/miui/gallery/util/XmpHelper$Section;
    iput v5, v6, Lcom/miui/gallery/util/XmpHelper$Section;->marker:I

    .line 433
    iput v2, v6, Lcom/miui/gallery/util/XmpHelper$Section;->length:I

    .line 434
    add-int/lit8 v9, v2, -0x2

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    .line 435
    iget-object v9, v6, Lcom/miui/gallery/util/XmpHelper$Section;->data:[B

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 436
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 444
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v6    # "section":Lcom/miui/gallery/util/XmpHelper$Section;
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    sget-object v9, Lcom/miui/gallery/util/XmpHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 448
    if-eqz p0, :cond_e

    .line 450
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_e
    :goto_6
    move-object v7, v8

    .line 453
    goto/16 :goto_1

    .line 440
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "length":I
    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :cond_f
    add-int/lit8 v9, v2, -0x2

    int-to-long v10, v9

    :try_start_d
    invoke-virtual {p0, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 448
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_10

    .line 450
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 453
    :cond_10
    :goto_7
    throw v8

    .line 448
    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :cond_11
    if-eqz p0, :cond_2

    .line 450
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    .line 451
    :catch_2
    move-exception v8

    goto/16 :goto_1

    .end local v0    # "c":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    :catch_4
    move-exception v9

    goto/16 :goto_3

    :catch_5
    move-exception v9

    goto/16 :goto_4

    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    :catch_6
    move-exception v9

    goto :goto_5

    .end local v0    # "c":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/XmpHelper$Section;>;"
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto :goto_7
.end method

.method public static readMicroVideoOffset(Ljava/lang/String;)J
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    const-wide/16 v10, 0x0

    .line 141
    :goto_0
    return-wide v10

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 119
    .local v6, "start":J
    const/4 v2, 0x0

    .line 121
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/miui/gallery/util/XmpHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 124
    .local v8, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    if-nez v8, :cond_1

    .line 125
    const-wide/16 v10, 0x0

    .line 139
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_2
    const-string v9, "http://ns.google.com/photos/1.0/camera/"

    const-string v10, "MicroVideo"

    invoke-interface {v8, v9, v10}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 128
    .local v5, "type":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 129
    :cond_2
    const-wide/16 v10, 0x0

    .line 139
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 131
    :cond_3
    :try_start_3
    const-string v9, "http://ns.google.com/photos/1.0/camera/"

    const-string v10, "MicroVideoOffset"

    invoke-interface {v8, v9, v10}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 132
    .local v4, "offset":Ljava/lang/Integer;
    if-eqz v4, :cond_4

    .line 133
    sget-object v9, Lcom/miui/gallery/util/XmpHelper;->TAG:Ljava/lang/String;

    const-string v10, "readMicroVideoOffset cost %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    int-to-long v12, v9

    sub-long/2addr v10, v12

    .line 139
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 141
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "offset":Ljava/lang/Integer;
    .end local v5    # "type":Ljava/lang/Integer;
    .end local v8    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :goto_1
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 136
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method
