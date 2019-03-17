.class Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;
.super Landroid/os/AsyncTask;
.source "LayoutDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;
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
.field private mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

.field private mLayoutSparseArray:Landroid/util/SparseArray;
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


# direct methods
.method public constructor <init>(Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;)V
    .locals 1
    .param p1, "dataLoadListener"    # Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->mLayoutSparseArray:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    .line 52
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Landroid/content/res/AssetManager;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;
    .locals 10
    .param p1, "assetManagers"    # [Landroid/content/res/AssetManager;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 56
    invoke-static {}, Lcom/miui/gallery/collage/CollageUtils;->generateCustomGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 57
    .local v2, "gson":Lcom/google/gson/Gson;
    aget-object v0, p1, v6

    .line 60
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    sget-object v7, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->PATH_LAYOUT:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "layoutList":[Ljava/lang/String;
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v3, v6

    .line 62
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    .end local v3    # "layoutList":[Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 65
    .restart local v3    # "layoutList":[Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v2, v5}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->generateLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/layout/LayoutModel;

    move-result-object v4

    .line 66
    .local v4, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    iget-object v8, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->mLayoutSparseArray:Landroid/util/SparseArray;

    invoke-static {v8, v4}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->access$000(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "layoutList":[Ljava/lang/String;
    .end local v4    # "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "LayoutDataLoader"

    invoke-static {v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->mLayoutSparseArray:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;->onDataLoad(Landroid/util/SparseArray;)V

    .line 79
    :cond_0
    return-void
.end method
