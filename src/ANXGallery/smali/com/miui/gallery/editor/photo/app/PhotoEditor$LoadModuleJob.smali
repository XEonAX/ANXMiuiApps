.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadModuleJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
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
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Ljava/lang/String;)V
    .locals 1
    .param p1, "editorActivity"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->mEditorActivity:Ljava/lang/ref/WeakReference;

    .line 1363
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->mModuleName:Ljava/lang/String;

    .line 1364
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Ljava/lang/String;Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;

    .prologue
    .line 1357
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1357
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x0

    .line 1368
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->mEditorActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .line 1369
    .local v0, "activity":Lcom/miui/gallery/editor/photo/app/PhotoEditor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    :cond_0
    const-string v1, "PhotoEditor"

    const-string v2, "activity not alive, skip load typeface"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :goto_0
    return-object v6

    .line 1374
    :cond_1
    const-string v1, "PhotoEditor"

    const-string/jumbo v2, "start load text editor typeface"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->mEditorActivity:Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->mModuleName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleCallback;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;->mModuleName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/module/GalleryModuleManager;->loadModule(ZLcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;Ljava/lang/String;)V

    goto :goto_0
.end method
