.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;
.super Landroid/os/AsyncTask;
.source "MosaicProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadMosaicTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Application;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "resourceListener"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;

    .line 87
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->mAssetManager:Landroid/content/res/AssetManager;

    .line 88
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->doInBackground([Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/Application;)Ljava/util/List;
    .locals 15
    .param p1, "applications"    # [Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->mAssetManager:Landroid/content/res/AssetManager;

    .line 93
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v12, "mosaicEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;>;"
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "mosaics":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v13

    if-ge v10, v1, :cond_0

    .line 97
    aget-object v2, v13, v10

    .line 98
    .local v2, "folderName":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "configPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "iconPath":Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "config":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;

    invoke-static {v7, v1}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;

    .line 103
    .local v11, "mosaicConfig":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;
    iget-object v14, v11, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;->type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .line 104
    .local v14, "type":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;
    const/4 v0, 0x0

    .line 105
    .local v0, "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$2;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$mosaic$MosaicGLEntity$TYPE:[I

    invoke-virtual {v14}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_1
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity;

    .end local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    int-to-short v1, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLOriginEntity;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    .line 108
    .restart local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    goto :goto_1

    .line 110
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;

    .end local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    int-to-short v1, v10

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;->tileMode:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .restart local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    goto :goto_1

    .line 113
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;

    .end local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    int-to-short v1, v10

    iget-object v4, v11, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;->effectType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    goto :goto_1

    .line 118
    .end local v0    # "mosaicEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v3    # "iconPath":Ljava/lang/String;
    .end local v7    # "config":Ljava/lang/String;
    .end local v8    # "configPath":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "mosaicConfig":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicConfig;
    .end local v13    # "mosaics":[Ljava/lang/String;
    .end local v14    # "type":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;
    :catch_0
    move-exception v9

    .line 119
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    return-object v12

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "mosaicEntities":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$LoadMosaicTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider$ResourceListener;->onLoadFinish(Ljava/util/List;)V

    .line 129
    :cond_0
    return-void
.end method
