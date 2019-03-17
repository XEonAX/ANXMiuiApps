.class Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "FrameProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/Application;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;)V
    .locals 0
    .param p1, "resourceListener"    # Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;

    .line 62
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;->doInBackground([Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/Application;)Ljava/util/List;
    .locals 13
    .param p1, "applications"    # [Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 67
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v11, "frameDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FrameData;>;"
    :try_start_0
    const-string v0, "frame"

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "configs":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v8

    if-ge v12, v0, :cond_0

    .line 71
    aget-object v2, v8, v12

    .line 72
    .local v2, "fileName":Ljava/lang/String;
    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "frame"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->access$200()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "configString":Ljava/lang/String;
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;

    invoke-static {v7, v0}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;

    .line 74
    .local v10, "frameConfig":Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;
    new-instance v0, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;

    int-to-short v1, v12

    iget v3, v10, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;->width:I

    iget v4, v10, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;->height:I

    iget v5, v10, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;->iconRatio:F

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;-><init>(SLjava/lang/String;IIF)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v7    # "configString":Ljava/lang/String;
    .end local v8    # "configs":[Ljava/lang/String;
    .end local v10    # "frameConfig":Lcom/miui/gallery/editor/photo/core/imports/frame/FrameConfig;
    .end local v12    # "i":I
    :catch_0
    move-exception v9

    .line 77
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "FrameProvider"

    const-string v1, "FrameProvider load resource error"

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v11
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "frameDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FrameData;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;->mResourceListener:Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;->onLoadFinish(Ljava/util/List;)V

    .line 87
    :cond_0
    return-void
.end method
