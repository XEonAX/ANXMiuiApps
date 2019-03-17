.class Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "PosterDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/core/poster/PosterDataLoader;
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
.field private mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

.field private mPosterLayoutSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPosterSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;)V
    .locals 1
    .param p1, "dataLoadListener"    # Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mPosterSparseArray:Landroid/util/SparseArray;

    .line 57
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    .line 58
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Landroid/content/res/AssetManager;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;
    .locals 24
    .param p1, "assetManagers"    # [Landroid/content/res/AssetManager;

    .prologue
    .line 62
    invoke-static {}, Lcom/miui/gallery/collage/CollageUtils;->generateCustomGson()Lcom/google/gson/Gson;

    move-result-object v10

    .line 63
    .local v10, "gson":Lcom/google/gson/Gson;
    const/16 v17, 0x0

    aget-object v6, p1, v17

    .line 65
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v11, Lcom/google/gson/JsonParser;

    invoke-direct {v11}, Lcom/google/gson/JsonParser;-><init>()V

    .line 67
    .local v11, "jsonParser":Lcom/google/gson/JsonParser;
    sget-object v17, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER_LAYOUT:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 68
    .local v14, "posterLayoutList":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v13, v14, v17

    .line 69
    .local v13, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 70
    const/16 v17, 0x0

    .line 91
    .end local v11    # "jsonParser":Lcom/google/gson/JsonParser;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "posterLayoutList":[Ljava/lang/String;
    :goto_1
    return-object v17

    .line 72
    .restart local v11    # "jsonParser":Lcom/google/gson/JsonParser;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "posterLayoutList":[Ljava/lang/String;
    :cond_0
    invoke-static {v6, v10, v13}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->generatePosterLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/layout/LayoutModel;

    move-result-object v12

    .line 73
    .local v12, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->access$000(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    .line 68
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 77
    .end local v12    # "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .end local v13    # "name":Ljava/lang/String;
    :cond_1
    sget-object v17, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER_MODE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, "posterList":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v13, v15, v17

    .line 79
    .restart local v13    # "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 80
    const/16 v17, 0x0

    goto :goto_1

    .line 82
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 83
    .local v4, "a":J
    invoke-static {v6, v10, v11, v13}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->generatePosterModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/core/poster/PosterModel;

    move-result-object v16

    .line 84
    .local v16, "posterModel":Lcom/miui/gallery/collage/core/poster/PosterModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mPosterSparseArray:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->access$100(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 86
    .local v8, "b":J
    const-string v19, "PosterDataLoader"

    const-string v20, "gson parse posterModel %s coast %d"

    sub-long v22, v8, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 88
    .end local v4    # "a":J
    .end local v8    # "b":J
    .end local v11    # "jsonParser":Lcom/google/gson/JsonParser;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "posterLayoutList":[Ljava/lang/String;
    .end local v15    # "posterList":[Ljava/lang/String;
    .end local v16    # "posterModel":Lcom/miui/gallery/collage/core/poster/PosterModel;
    :catch_0
    move-exception v7

    .line 89
    .local v7, "e":Ljava/io/IOException;
    const-string v17, "PosterDataLoader"

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v17, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->mPosterSparseArray:Landroid/util/SparseArray;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;->onDataLoad(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 99
    :cond_0
    return-void
.end method
