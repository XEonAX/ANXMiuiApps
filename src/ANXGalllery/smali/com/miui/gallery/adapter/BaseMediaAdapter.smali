.class public abstract Lcom/miui/gallery/adapter/BaseMediaAdapter;
.super Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;
.source "BaseMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter",
        "<TVH;>;"
    }
.end annotation


# static fields
.field private static volatile sIsGalleryCloudSyncable:Z

.field private static volatile sIsLoginAccount:Z

.field private static sUpdateRunnable:Ljava/lang/Runnable;


# instance fields
.field protected mShowScene:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

.field protected mSyncStateDisplayOptions:I

.field protected mViewScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_NONE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/adapter/BaseMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/adapter/BaseMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .param p3, "syncStateDisplayOptions"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->mViewScrollState:I

    .line 38
    iput-object p2, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->mShowScene:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .line 39
    iput p3, p0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->mSyncStateDisplayOptions:I

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->updateGalleryCloudSyncableState()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sIsLoginAccount:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sIsLoginAccount:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sIsGalleryCloudSyncable:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sIsGalleryCloudSyncable:Z

    return p0
.end method


# virtual methods
.method public abstract doBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public getItemDecodeRectF(I)Landroid/graphics/RectF;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    check-cast p1, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->onBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    .local p1, "holder":Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;, "TVH;"
    iget-object v0, p1, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f120022

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->doBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V

    .line 90
    return-void
.end method

.method public updateGalleryCloudSyncableState()V
    .locals 4

    .prologue
    .line 95
    .local p0, "this":Lcom/miui/gallery/adapter/BaseMediaAdapter;, "Lcom/miui/gallery/adapter/BaseMediaAdapter<TVH;>;"
    sget-object v0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/BaseMediaAdapter$SyncStateRunnable;-><init>(Lcom/miui/gallery/adapter/BaseMediaAdapter;)V

    sput-object v0, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    .line 98
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/adapter/BaseMediaAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
