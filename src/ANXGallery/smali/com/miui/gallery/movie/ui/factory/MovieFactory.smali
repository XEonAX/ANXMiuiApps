.class public Lcom/miui/gallery/movie/ui/factory/MovieFactory;
.super Ljava/lang/Object;
.source "MovieFactory.java"


# direct methods
.method public static createMovieManager(Landroid/content/Context;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-direct {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;-><init>()V

    .line 29
    .local v0, "movieManager":Lcom/miui/gallery/movie/nvsdk/NvMovieManager;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->init(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lcom/miui/gallery/movie/MovieConfig;->init(Landroid/content/Context;)V

    .line 31
    return-object v0
.end method

.method public static getParentTemplateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "templateName"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "movieTemplatePetDog"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string p0, "movieTemplatePet"

    .line 65
    .end local p0    # "templateName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getTemplateNameById(I)Ljava/lang/String;
    .locals 1
    .param p0, "templateId"    # I

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 57
    const-string v0, "movieAssetsNormal"

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    const-string v0, "movieAssetsNormal"

    goto :goto_0

    .line 39
    :pswitch_1
    const-string v0, "movieTemplateTravel"

    goto :goto_0

    .line 41
    :pswitch_2
    const-string v0, "movieTemplateBaby"

    goto :goto_0

    .line 43
    :pswitch_3
    const-string v0, "movieTemplateParty"

    goto :goto_0

    .line 45
    :pswitch_4
    const-string v0, "movieTemplateFood"

    goto :goto_0

    .line 47
    :pswitch_5
    const-string v0, "movieTemplateXmas"

    goto :goto_0

    .line 49
    :pswitch_6
    const-string v0, "movieTemplateNewYear"

    goto :goto_0

    .line 51
    :pswitch_7
    const-string v0, "movieTemplateSelfie"

    goto :goto_0

    .line 53
    :pswitch_8
    const-string v0, "movieTemplatePet"

    goto :goto_0

    .line 55
    :pswitch_9
    const-string v0, "movieTemplatePetDog"

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
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
