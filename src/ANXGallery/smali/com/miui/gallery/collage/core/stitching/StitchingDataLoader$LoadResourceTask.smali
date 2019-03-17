.class Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "StitchingDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/res/AssetManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

.field private mStitchingModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/stitching/StitchingModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;)V
    .locals 0
    .param p1, "dataLoadListener"    # Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;
    .param p2, "x1"    # Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;-><init>(Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Landroid/content/res/AssetManager;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;
    .locals 10
    .param p1, "assetManagers"    # [Landroid/content/res/AssetManager;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->mStitchingModelList:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/miui/gallery/collage/CollageUtils;->generateCustomGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 56
    .local v2, "gson":Lcom/google/gson/Gson;
    aget-object v0, p1, v6

    .line 58
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    sget-object v7, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->PATH_STITCHING:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "stitchingList":[Ljava/lang/String;
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v3, v6

    .line 60
    .local v5, "stitchingName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    .end local v3    # "stitchingList":[Ljava/lang/String;
    .end local v5    # "stitchingName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 63
    .restart local v3    # "stitchingList":[Ljava/lang/String;
    .restart local v5    # "stitchingName":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v2, v5}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->access$100(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    move-result-object v4

    .line 64
    .local v4, "stitchingModel":Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    iget-object v8, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "stitchingList":[Ljava/lang/String;
    .end local v4    # "stitchingModel":Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    .end local v5    # "stitchingName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "StitchingDataLoader"

    invoke-static {v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;->onDataLoad(Ljava/util/List;)V

    .line 77
    :cond_0
    return-void
.end method
