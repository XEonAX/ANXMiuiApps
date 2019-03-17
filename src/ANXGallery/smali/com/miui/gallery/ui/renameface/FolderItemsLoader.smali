.class public abstract Lcom/miui/gallery/ui/renameface/FolderItemsLoader;
.super Ljava/lang/Object;
.source "FolderItemsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;
    }
.end annotation


# instance fields
.field protected mActivityRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelled:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutListener:Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;

.field private mPath:Ljava/lang/String;

.field private mSelectedFoldersLocalID:[J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;[JZ)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;
    .param p4, "selectedFolders"    # [J
    .param p5, "needBasicDataOnly"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mItems:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mLoadedItems:Ljava/util/ArrayList;

    .line 40
    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mPath:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mOutListener:Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;

    .line 42
    iput-object p4, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mSelectedFoldersLocalID:[J

    .line 43
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mActivityRef:Ljava/lang/ref/SoftReference;

    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->reload()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mLoadedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mLoadedItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mCancelled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mOutListener:Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;

    return-object v0
.end method

.method private reload()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;-><init>(Lcom/miui/gallery/ui/renameface/FolderItemsLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mCancelled:Z

    .line 111
    return-void
.end method

.method protected isMediaSetCandidate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "isSelected":Z
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mSelectedFoldersLocalID:[J

    if-eqz v2, :cond_0

    .line 122
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mSelectedFoldersLocalID:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 123
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mSelectedFoldersLocalID:[J

    aget-wide v4, v4, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 124
    const/4 v0, 0x1

    .line 130
    .end local v1    # "j":I
    :cond_0
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 122
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "j":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected refreshCloudFolderItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    return-object v0
.end method

.method public final tryToGetLoadedItems(J)Ljava/util/ArrayList;
    .locals 9
    .param p1, "waitMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    const-wide/16 v0, 0x64

    .line 60
    .local v0, "SLEEP_DURATION":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 61
    .local v4, "waitStart":J
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mLoadedItems:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 63
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long v6, v6, p1

    if-ltz v6, :cond_0

    .line 71
    :goto_0
    return-object v3

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 71
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mLoadedItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final unblockGetItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method
