.class public Lmiui/yellowpage/YellowPageImgLoader;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageImgLoader$Image;
    }
.end annotation


# static fields
.field private static final YELLOWPAGE_PHOTO_DOWNLOAD_WIFI_ONLY:Ljava/lang/String; = "yellowpage_photo_download_wifi_only"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static cancelLoading(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 231
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 232
    return-void
.end method

.method public static getDataSha1Digest([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .line 243
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 249
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lmiui/yellowpage/YellowPageImgLoader;->getHexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 251
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0

    .line 244
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 260
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    .line 261
    .local v2, "c":I
    const/16 v3, 0x61

    const/16 v4, 0x30

    const/16 v5, 0x9

    if-ltz v2, :cond_0

    if-gt v2, v5, :cond_0

    add-int v6, v4, v2

    goto :goto_1

    :cond_0
    add-int v6, v3, v2

    add-int/lit8 v6, v6, -0xa

    :goto_1
    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    aget-byte v6, p0, v1

    and-int/lit8 v2, v6, 0xf

    .line 263
    if-ltz v2, :cond_1

    if-gt v2, v5, :cond_1

    add-int/2addr v4, v2

    goto :goto_2

    :cond_1
    add-int/2addr v3, v2

    add-int/lit8 v4, v3, -0xa

    :goto_2
    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 270
    sget-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_URL:Landroid/net/Uri;

    .line 271
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 272
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "width"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 273
    const-string v1, "height"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    const-string v1, "format"

    sget-object v2, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    if-ne p4, v2, :cond_0

    const-string v2, "jpg"

    goto :goto_0

    :cond_0
    const-string v2, "png"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 277
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_1

    .line 278
    return-object v9

    .line 281
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 282
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 284
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 285
    return-object v3

    .line 288
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 289
    goto :goto_1

    .line 288
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    .line 291
    :cond_3
    :goto_1
    return-object v9
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    const-string v0, "connectivity"

    .line 362
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 363
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 364
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 364
    :goto_0
    return v2
.end method

.method private static isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yellowpage_photo_download_wifi_only"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;Ljava/lang/String;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "defaultImageRes"    # I

    .line 307
    new-instance v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-static {p0, p4, p5, p6, p3}, Lmiui/yellowpage/HostManager;->getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V

    .line 308
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 309
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p7}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 310
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultImageRes"    # I

    .line 214
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 215
    return-void
.end method

.method public static loadPhoneDisplayAd(Landroid/content/Context;JLjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # J
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "isIncoming"    # Z

    .line 326
    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 327
    .local v1, "callType":I
    :goto_0
    sget-object v2, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_PHONE_AD:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 328
    .local v9, "builder":Landroid/net/Uri$Builder;
    const-string v2, "number"

    move-object/from16 v10, p3

    invoke-virtual {v9, v2, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 329
    const-string v2, "yid"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 330
    const-string v2, "callType"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 333
    .local v8, "uri":Landroid/net/Uri;
    move-object/from16 v7, p0

    invoke-static {v7, v8}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v8

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 338
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 339
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v11, :cond_3

    .line 341
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 345
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 346
    goto :goto_1

    .line 345
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 349
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 350
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 351
    invoke-static/range {p0 .. p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v5

    new-instance v6, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {v6, v2}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 352
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 354
    .end local v2    # "url":Ljava/lang/String;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v12, "url":Ljava/lang/String;
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    move-object v12, v2

    move-object v13, v4

    const/4 v5, 0x1

    .line 355
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    move-object v2, v7

    move-object v3, v10

    move v4, v1

    move-object v7, v12

    move-object v14, v8

    move v8, v0

    .end local v8    # "uri":Landroid/net/Uri;
    .local v14, "uri":Landroid/net/Uri;
    invoke-static/range {v2 .. v8}, Lmiui/yellowpage/YellowPageStatistic;->viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V

    .line 357
    return-object v13
.end method

.method public static loadPhoto(Landroid/content/Context;JZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # J
    .param p3, "fetchRemote"    # Z

    .line 117
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 120
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    if-eqz p3, :cond_1

    .line 121
    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move p3, v1

    .line 123
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadPhotoByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .line 134
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 136
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    if-eqz p2, :cond_1

    .line 137
    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move p2, v1

    .line 139
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnail(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .line 320
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 321
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;JI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "yid"    # J
    .param p5, "defaultThumbnailRes"    # I

    .line 171
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 173
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 174
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p5}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 175
    return-void
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "defaultThumbnailRes"    # I

    .line 187
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 188
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 189
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 190
    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultThumbnailRes"    # I

    .line 201
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 202
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 203
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 204
    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .line 156
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 157
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;ZII)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z
    .param p3, "defaultRes"    # I
    .param p4, "timeout"    # I

    .line 151
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 152
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v1

    return-object v1
.end method

.method public static pauseLoading(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->pauseLoading()V

    .line 223
    return-void
.end method

.method public static resumeLoading(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 239
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->resumeLoading()V

    .line 240
    return-void
.end method
