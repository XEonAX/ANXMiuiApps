.class Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;
.super Ljava/lang/Object;
.source "StitchingDataLoader.java"

# interfaces
.implements Lcom/miui/gallery/collage/app/common/IDataLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;,
        Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;
    }
.end annotation


# static fields
.field public static final PATH_STITCHING:Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

.field private mTask:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->SEPARATOR:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stitching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->PATH_STITCHING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "dataLoadListener"    # Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mAssetManager:Landroid/content/res/AssetManager;

    .line 29
    iput-object p2, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    .line 30
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # Lcom/google/gson/Gson;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->generateStitchingModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    move-result-object v0

    return-object v0
.end method

.method private static generateStitchingModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Ljava/lang/String;)Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    .locals 6
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->PATH_STITCHING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "relativePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "main.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "jsonPath":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "jsonString":Ljava/lang/String;
    const-class v4, Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    invoke-virtual {p1, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .line 86
    .local v3, "stitchingModel":Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    iput-object v2, v3, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->relativePath:Ljava/lang/String;

    .line 87
    iput-object p2, v3, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->name:Ljava/lang/String;

    .line 88
    return-object v3
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 42
    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mDataLoadListener:Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;-><init>(Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/res/AssetManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mAssetManager:Landroid/content/res/AssetManager;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$LoadResourceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader;->mTask:Landroid/os/AsyncTask;

    .line 35
    return-void
.end method
