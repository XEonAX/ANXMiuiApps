.class public Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;
.super Ljava/lang/Object;
.source "EditorOriginHandler.java"


# instance fields
.field private mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

.field private mContext:Landroid/content/Context;

.field private mHandlerMode:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSource:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler$1;-><init>(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 46
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mSource:Landroid/net/Uri;

    .line 48
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->isEditorProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mHandlerMode:I

    .line 55
    :goto_0
    const-string v0, "EditorOriginHandler"

    const-string v1, "editor handler mode:%d"

    iget v2, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mHandlerMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->useDoubleProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mHandlerMode:I

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mHandlerMode:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;)Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    return-object p1
.end method

.method private bindEditorService()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x5

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EditorOriginHandler"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unbindEditorService()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EditorOriginHandler"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private useDoubleProcess()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/BigBitmapLoadUtils;->getMaxMemory(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doExport(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "draftManager"    # Lcom/miui/gallery/editor/photo/app/DraftManager;
    .param p2, "out"    # Landroid/net/Uri;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->needTransProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isPreviewSameWithOrigin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->export(Landroid/net/Uri;)Z

    move-result v0

    .line 77
    .local v0, "finish":Z
    :goto_0
    return v0

    .line 75
    .end local v0    # "finish":Z
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getRenderDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->doOriginHandler(Landroid/net/Uri;Ljava/util/List;Landroid/os/Bundle;)Z

    move-result v0

    .restart local v0    # "finish":Z
    goto :goto_0
.end method

.method public doOriginHandler(Landroid/net/Uri;Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "out"    # Landroid/net/Uri;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "renderDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    const-string v1, "EditorOriginHandler"

    const-string v2, "doOriginHandler"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    new-instance v2, Lcom/miui/gallery/editor/photo/origin/OriginRenderData;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mSource:Landroid/net/Uri;

    invoke-direct {v2, p2, v3, p1, p3}, Lcom/miui/gallery/editor/photo/origin/OriginRenderData;-><init>(Ljava/util/List;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;->handlerOrigin(Lcom/miui/gallery/editor/photo/origin/OriginRenderData;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EditorOriginHandler"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMainProcess()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mHandlerMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needTransProcess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->mHandlerMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->needTransProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->unbindEditorService()V

    .line 98
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->needTransProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->bindEditorService()V

    .line 92
    :cond_0
    return-void
.end method
