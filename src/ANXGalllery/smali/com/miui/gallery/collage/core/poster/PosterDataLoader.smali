.class Lcom/miui/gallery/collage/core/poster/PosterDataLoader;
.super Ljava/lang/Object;
.source "PosterDataLoader.java"

# interfaces
.implements Lcom/miui/gallery/collage/app/common/IDataLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;,
        Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;
    }
.end annotation


# static fields
.field private static final PATH_POSTER:Ljava/lang/String;

.field public static final PATH_POSTER_LAYOUT:Ljava/lang/String;

.field public static final PATH_POSTER_MODE:Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

.field private mTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "poster"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER_MODE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER_LAYOUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "dataLoadListener"    # Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mAssetManager:Landroid/content/res/AssetManager;

    .line 36
    iput-object p2, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseArray;
    .param p1, "x1"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->addLayoutModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    return-void
.end method

.method static synthetic access$100(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/poster/PosterModel;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseArray;
    .param p1, "x1"    # Lcom/miui/gallery/collage/core/poster/PosterModel;

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->addPosterModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/poster/PosterModel;)V

    return-void
.end method

.method private static addLayoutModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 2
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ">;>;",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;>;"
    iget v1, p1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->size:I

    .line 104
    .local v1, "size":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .restart local v0    # "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method private static addPosterModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/poster/PosterModel;)V
    .locals 5
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ">;>;",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;>;"
    iget-object v2, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->collageModels:[I

    .line 114
    .local v2, "sizes":[I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 115
    .local v1, "size":I
    div-int/lit8 v1, v1, 0xa

    .line 116
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    .local v0, "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;"
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .restart local v0    # "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;"
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;"
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public static generatePosterLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER_LAYOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "jsonString":Ljava/lang/String;
    const-class v2, Lcom/miui/gallery/collage/core/layout/LayoutModel;

    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 128
    .local v1, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    iput-object p2, v1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->name:Ljava/lang/String;

    .line 129
    return-object v1
.end method

.method public static generatePosterModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/core/poster/PosterModel;
    .locals 11
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->PATH_POSTER_MODE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "relativePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "main.json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "jsonPath":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "jsonString":Ljava/lang/String;
    const-class v9, Lcom/miui/gallery/collage/core/poster/PosterModel;

    invoke-virtual {p1, v5, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/collage/core/poster/PosterModel;

    .line 138
    .local v6, "posterModel":Lcom/miui/gallery/collage/core/poster/PosterModel;
    iput-object v7, v6, Lcom/miui/gallery/collage/core/poster/PosterModel;->relativePath:Ljava/lang/String;

    .line 139
    iput-object p3, v6, Lcom/miui/gallery/collage/core/poster/PosterModel;->name:Ljava/lang/String;

    .line 141
    iget-object v3, v6, Lcom/miui/gallery/collage/core/poster/PosterModel;->imageElementModels:[Lcom/miui/gallery/collage/core/poster/ImageElementModel;

    .line 142
    .local v3, "imageElementModels":[Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    if-eqz v3, :cond_0

    .line 143
    array-length v10, v3

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v2, v3, v9

    .line 144
    .local v2, "imageElementModel":Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    iput-object v7, v2, Lcom/miui/gallery/collage/core/poster/ImageElementModel;->relativePath:Ljava/lang/String;

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "imageElementModel":Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    :cond_0
    iget-object v1, v6, Lcom/miui/gallery/collage/core/poster/PosterModel;->collagePositions:[Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    .line 148
    .local v1, "collagePositionModels":[Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    if-eqz v1, :cond_1

    .line 149
    array-length v9, v1

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v0, v1, v8

    .line 150
    .local v0, "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    iput-object v7, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->relativePath:Ljava/lang/String;

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 49
    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mDataLoadListener:Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;-><init>(Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/res/AssetManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mAssetManager:Landroid/content/res/AssetManager;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/core/poster/PosterDataLoader$LoadResourceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterDataLoader;->mTask:Landroid/os/AsyncTask;

    .line 42
    return-void
.end method
