.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyManager;
.super Ljava/lang/Object;
.source "MiuiBeautyManager.java"


# direct methods
.method public static getBeautyEffects()[Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 12
    sget-object v6, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v6}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v0

    .line 13
    .local v0, "beautyProcessor":Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getSupportedBeautyParamTypes()[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    move-result-object v5

    .line 14
    .local v5, "types":[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    array-length v2, v5

    .line 15
    .local v2, "length":I
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v5, v6

    .line 16
    .local v4, "type":Lcom/miui/filtersdk/beauty/BeautyParameterType;
    sget-object v9, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    if-eq v9, v4, :cond_0

    sget-object v9, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    if-ne v9, v4, :cond_1

    .line 17
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 15
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 20
    .end local v4    # "type":Lcom/miui/filtersdk/beauty/BeautyParameterType;
    :cond_2
    const/4 v3, 0x0

    .line 21
    .local v3, "miuiBeautyEffects":[Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    if-eqz v5, :cond_3

    if-lez v2, :cond_3

    .line 22
    new-array v3, v2, [Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 24
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyManager$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 23
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26
    :pswitch_0
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c035d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-direct {v6, v8, v12, v9}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v6, v3, v7

    goto :goto_2

    .line 29
    :pswitch_1
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0362

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-direct {v6, v8, v13, v9}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v6, v3, v12

    goto :goto_2

    .line 32
    :pswitch_2
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0364

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-direct {v6, v8, v14, v9}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v6, v3, v13

    goto :goto_2

    .line 35
    :pswitch_3
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c035c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-direct {v6, v8, v15, v9}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v6, v3, v14

    goto :goto_2

    .line 38
    :pswitch_4
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c035b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v10, v5, v1

    invoke-direct {v6, v8, v9, v10}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v6, v3, v15

    goto :goto_2

    .line 41
    :pswitch_5
    const/4 v6, 0x5

    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c035a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    aget-object v11, v5, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v8, v3, v6

    goto/16 :goto_2

    .line 44
    :pswitch_6
    const/4 v6, 0x6

    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0358

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    aget-object v11, v5, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v8, v3, v6

    goto/16 :goto_2

    .line 47
    :pswitch_7
    const/4 v6, 0x7

    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0360

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    aget-object v11, v5, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v8, v3, v6

    goto/16 :goto_2

    .line 50
    :pswitch_8
    const/16 v6, 0x8

    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c035f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    aget-object v11, v5, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v8, v3, v6

    goto/16 :goto_2

    .line 53
    :pswitch_9
    const/16 v6, 0x9

    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c035e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    aget-object v11, v5, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;-><init>(Ljava/lang/String;ILcom/miui/filtersdk/beauty/BeautyParameterType;)V

    aput-object v8, v3, v6

    goto/16 :goto_2

    .line 59
    .end local v1    # "i":I
    :cond_3
    return-object v3

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
