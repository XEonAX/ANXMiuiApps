.class Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;
.super Landroid/os/AsyncTask;
.source "TextProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadWatermarkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Application;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "resourceListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;

    .line 100
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->mAssetManager:Landroid/content/res/AssetManager;

    .line 101
    return-void
.end method

.method private static getAssetFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets://watermark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderName"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watermark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->doInBackground([Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/Application;)Ljava/util/List;
    .locals 10
    .param p1, "applications"    # [Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->mAssetManager:Landroid/content/res/AssetManager;

    .line 106
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v7, "watermarkInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;>;"
    :try_start_0
    const-string/jumbo v9, "watermark"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "watermarks":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 110
    aget-object v4, v8, v5

    .line 111
    .local v4, "folderName":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->getConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "configPath":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->loadAssetFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "config":Ljava/lang/String;
    const-class v9, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    invoke-static {v1, v9}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    .line 114
    .local v6, "watermarkInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;
    iget-object v9, v6, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->icon:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->getAssetFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->icon:Ljava/lang/String;

    .line 115
    iget-object v9, v6, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPost:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->getAssetFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;->bgPost:Ljava/lang/String;

    .line 116
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "configPath":Ljava/lang/String;
    .end local v4    # "folderName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "watermarkInfo":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;
    .end local v8    # "watermarks":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "mosaicEntities":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$LoadWatermarkTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextProvider$ResourceListener;->onLoadFinish(Ljava/util/List;)V

    .line 129
    :cond_0
    return-void
.end method
