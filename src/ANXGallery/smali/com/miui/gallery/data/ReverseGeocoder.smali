.class public Lcom/miui/gallery/data/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/miui/gallery/data/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/miui/gallery/data/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/data/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 80
    const-string v0, "connectivity"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/miui/gallery/data/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "retVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 437
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public lookupAddress(DDZLcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 31
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "useCache"    # Z
    .param p6, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 303
    const-wide v6, 0x4056800000000000L    # 90.0

    add-double v6, v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double v8, v8, p3

    add-double/2addr v6, v8

    const-wide v8, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v26, v0

    .line 305
    .local v26, "locationKey":J
    const/4 v15, 0x0

    .line 306
    .local v15, "cachedLocation":[B
    if-eqz p5, :cond_0

    .line 310
    :cond_0
    const/4 v4, 0x0

    .line 311
    .local v4, "address":Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/data/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v25

    .line 312
    .local v25, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v15, :cond_1

    array-length v5, v15

    if-nez v5, :cond_9

    .line 313
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v25, :cond_2

    .line 314
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    .line 315
    :cond_2
    const/4 v5, 0x0

    .line 418
    :goto_0
    return-object v5

    .line 317
    :cond_3
    const/16 v19, 0x0

    .line 319
    .local v19, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 320
    const/4 v5, 0x0

    .line 361
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 322
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/data/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v10, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v13

    .line 323
    .local v13, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface/range {p6 .. p6}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 324
    const/4 v5, 0x0

    .line 361
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 326
    :cond_5
    :try_start_2
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 327
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/location/Address;

    move-object v4, v0

    .line 328
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 329
    .local v14, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v20, Ljava/io/DataOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    .end local v19    # "dos":Ljava/io/DataOutputStream;
    .local v20, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v4}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v24

    .line 331
    .local v24, "locale":Ljava/util/Locale;
    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v28

    .line 337
    .local v28, "numAddressLines":I
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 338
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 339
    invoke-interface/range {p6 .. p6}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v5

    if-eqz v5, :cond_6

    .line 340
    const/4 v5, 0x0

    .line 361
    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 342
    :cond_6
    :try_start_4
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 338
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 344
    :cond_7
    invoke-virtual {v4}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v4}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/miui/gallery/data/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v20

    .line 361
    .end local v14    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "dos":Ljava/io/DataOutputStream;
    .end local v22    # "i":I
    .end local v24    # "locale":Ljava/util/Locale;
    .end local v28    # "numAddressLines":I
    .restart local v19    # "dos":Ljava/io/DataOutputStream;
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v13    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v19    # "dos":Ljava/io/DataOutputStream;
    :goto_2
    move-object v5, v4

    .line 418
    goto/16 :goto_0

    .line 358
    .restart local v19    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v21

    .line 359
    .local v21, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v5, "ReverseGeocoder"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 364
    .end local v19    # "dos":Ljava/io/DataOutputStream;
    :cond_9
    const/16 v17, 0x0

    .line 367
    .local v17, "dis":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v18, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 369
    .end local v17    # "dis":Ljava/io/DataInputStream;
    .local v18, "dis":Ljava/io/DataInputStream;
    :try_start_7
    invoke-interface/range {p6 .. p6}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v5

    if-eqz v5, :cond_a

    .line 370
    const/4 v5, 0x0

    .line 415
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 372
    :cond_a
    :try_start_8
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v23

    .line 373
    .local v23, "language":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, "country":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v29

    .line 375
    .local v29, "variant":Ljava/lang/String;
    const/16 v24, 0x0

    .line 376
    .restart local v24    # "locale":Ljava/util/Locale;
    if-eqz v23, :cond_b

    .line 377
    if-nez v16, :cond_c

    .line 378
    new-instance v24, Ljava/util/Locale;

    .end local v24    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v24    # "locale":Ljava/util/Locale;
    :cond_b
    :goto_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 386
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 387
    invoke-interface/range {p6 .. p6}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v5

    if-eqz v5, :cond_e

    .line 388
    const/4 v5, 0x0

    .line 415
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 379
    :cond_c
    if-nez v29, :cond_d

    .line 380
    :try_start_9
    new-instance v24, Ljava/util/Locale;

    .end local v24    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v24    # "locale":Ljava/util/Locale;
    goto :goto_5

    .line 382
    :cond_d
    new-instance v24, Ljava/util/Locale;

    .end local v24    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v24    # "locale":Ljava/util/Locale;
    goto :goto_5

    .line 390
    :cond_e
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/miui/gallery/data/ReverseGeocoder;->lookupAddress(DDZLcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/location/Address;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v5

    .line 415
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 392
    :cond_f
    :try_start_a
    new-instance v12, Landroid/location/Address;

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 394
    .end local v4    # "address":Landroid/location/Address;
    .local v12, "address":Landroid/location/Address;
    :try_start_b
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 396
    .restart local v28    # "numAddressLines":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 397
    invoke-interface/range {p6 .. p6}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result v5

    if-eqz v5, :cond_10

    .line 398
    const/4 v4, 0x0

    .line 415
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v5, v4

    move-object v4, v12

    .end local v12    # "address":Landroid/location/Address;
    .restart local v4    # "address":Landroid/location/Address;
    goto/16 :goto_0

    .line 400
    .end local v4    # "address":Landroid/location/Address;
    .restart local v12    # "address":Landroid/location/Address;
    :cond_10
    :try_start_c
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v12, v0, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 396
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 402
    :cond_11
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 403
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 404
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 405
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 407
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 408
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 409
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 410
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 411
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/data/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 415
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v12

    .line 416
    .end local v12    # "address":Landroid/location/Address;
    .restart local v4    # "address":Landroid/location/Address;
    goto/16 :goto_2

    .line 412
    .end local v16    # "country":Ljava/lang/String;
    .end local v18    # "dis":Ljava/io/DataInputStream;
    .end local v22    # "i":I
    .end local v23    # "language":Ljava/lang/String;
    .end local v24    # "locale":Ljava/util/Locale;
    .end local v28    # "numAddressLines":I
    .end local v29    # "variant":Ljava/lang/String;
    .restart local v17    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v21

    .line 413
    .restart local v21    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_d
    const-string v5, "ReverseGeocoder"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 415
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2

    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :goto_8
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v17    # "dis":Ljava/io/DataInputStream;
    .restart local v18    # "dis":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "dis":Ljava/io/DataInputStream;
    goto :goto_8

    .end local v4    # "address":Landroid/location/Address;
    .end local v17    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "address":Landroid/location/Address;
    .restart local v16    # "country":Ljava/lang/String;
    .restart local v18    # "dis":Ljava/io/DataInputStream;
    .restart local v23    # "language":Ljava/lang/String;
    .restart local v24    # "locale":Ljava/util/Locale;
    .restart local v29    # "variant":Ljava/lang/String;
    :catchall_3
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "dis":Ljava/io/DataInputStream;
    move-object v4, v12

    .end local v12    # "address":Landroid/location/Address;
    .restart local v4    # "address":Landroid/location/Address;
    goto :goto_8

    .line 412
    .end local v16    # "country":Ljava/lang/String;
    .end local v17    # "dis":Ljava/io/DataInputStream;
    .end local v23    # "language":Ljava/lang/String;
    .end local v24    # "locale":Ljava/util/Locale;
    .end local v29    # "variant":Ljava/lang/String;
    .restart local v18    # "dis":Ljava/io/DataInputStream;
    :catch_2
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .end local v4    # "address":Landroid/location/Address;
    .end local v17    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "address":Landroid/location/Address;
    .restart local v16    # "country":Ljava/lang/String;
    .restart local v18    # "dis":Ljava/io/DataInputStream;
    .restart local v23    # "language":Ljava/lang/String;
    .restart local v24    # "locale":Ljava/util/Locale;
    .restart local v29    # "variant":Ljava/lang/String;
    :catch_3
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "dis":Ljava/io/DataInputStream;
    .restart local v17    # "dis":Ljava/io/DataInputStream;
    move-object v4, v12

    .end local v12    # "address":Landroid/location/Address;
    .restart local v4    # "address":Landroid/location/Address;
    goto :goto_7

    .line 361
    .end local v16    # "country":Ljava/lang/String;
    .end local v17    # "dis":Ljava/io/DataInputStream;
    .end local v23    # "language":Ljava/lang/String;
    .end local v24    # "locale":Ljava/util/Locale;
    .end local v29    # "variant":Ljava/lang/String;
    .restart local v13    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v14    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "dos":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "dos":Ljava/io/DataOutputStream;
    .restart local v19    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_4

    .line 358
    .end local v19    # "dos":Ljava/io/DataOutputStream;
    .restart local v20    # "dos":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v21

    move-object/from16 v19, v20

    .end local v20    # "dos":Ljava/io/DataOutputStream;
    .restart local v19    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_3
.end method
