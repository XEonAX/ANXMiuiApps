.class Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;
.super Ljava/lang/Object;
.source "LayoutDataLoader.java"

# interfaces
.implements Lcom/miui/gallery/collage/app/common/IDataLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;,
        Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;
    }
.end annotation


# static fields
.field public static final PATH_LAYOUT:Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

.field private mTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->SEPARATOR:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->PATH_LAYOUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "dataLoadListener"    # Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mAssetManager:Landroid/content/res/AssetManager;

    .line 31
    iput-object p2, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    .line 32
    return-void
.end method

.method static synthetic access$000(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseArray;
    .param p1, "x1"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->addLayoutModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

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
    .line 90
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;>;"
    iget v1, p1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->size:I

    .line 91
    .local v1, "size":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    .local v0, "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .restart local v0    # "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public static generateLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->PATH_LAYOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "jsonString":Ljava/lang/String;
    const-class v2, Lcom/miui/gallery/collage/core/layout/LayoutModel;

    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 85
    .local v1, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    iput-object p2, v1, Lcom/miui/gallery/collage/core/layout/LayoutModel;->name:Ljava/lang/String;

    .line 86
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 44
    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mDataLoadListener:Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;-><init>(Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/res/AssetManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mAssetManager:Landroid/content/res/AssetManager;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$LoadResourceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/layout/LayoutDataLoader;->mTask:Landroid/os/AsyncTask;

    .line 37
    return-void
.end method
