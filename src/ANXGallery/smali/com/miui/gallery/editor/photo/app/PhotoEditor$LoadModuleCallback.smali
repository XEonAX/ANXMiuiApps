.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadModuleCallback"
.end annotation


# instance fields
.field private mEditorActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/editor/photo/app/PhotoEditor;",
            ">;"
        }
    .end annotation
.end field

.field private mModuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .param p2, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/editor/photo/app/PhotoEditor;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p1, "editorActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/editor/photo/app/PhotoEditor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1387
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;->mEditorActivity:Ljava/lang/ref/WeakReference;

    .line 1388
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;->mModuleName:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method private postResult()V
    .locals 3

    .prologue
    .line 1406
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;->mEditorActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .line 1407
    .local v0, "activity":Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1408
    :cond_0
    const-string v1, "PhotoEditor"

    const-string v2, "load typeface finish, but activity is not alive"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1413
    const-string v1, "PhotoEditor"

    const-string v2, "load typeface finish, load photo editor fragment"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    :cond_2
    const-string v1, "PhotoEditor"

    const-string v2, "activity is paused, load photo editor fragment when resume"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 1399
    const-string v0, "PhotoEditor"

    const-string v1, "load failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;->postResult()V

    .line 1401
    const-string v0, "PhotoEditor"

    const-string v1, "schedule preload typeface"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;->scheduleModuleDownLoadJob(Ljava/lang/String;)V

    .line 1403
    return-void
.end method

.method public onLoadSuccess()V
    .locals 2

    .prologue
    .line 1393
    const-string v0, "PhotoEditor"

    const-string v1, "load success"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;->postResult()V

    .line 1395
    return-void
.end method
