.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInitialize()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 498
    sget-object v4, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/SdkManager;->onAttach(Landroid/app/Application;)V

    .line 499
    sget-object v4, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/SdkManager;->onActivityCreate()V

    .line 500
    const/4 v2, 0x0

    .line 502
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    .line 503
    .local v0, "draftManager":Lcom/miui/gallery/editor/photo/app/DraftManager;
    if-eqz v0, :cond_0

    .line 504
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->isInMainProcess()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/app/DraftManager;->initializeForPreview(Z)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 513
    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .end local v0    # "draftManager":Lcom/miui/gallery/editor/photo/app/DraftManager;
    :cond_1
    :goto_0
    return v3

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "PhotoEditor"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    const/4 v3, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "PhotoEditor"

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDone()V
    .locals 4

    .prologue
    .line 518
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "preview"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .local v0, "fragment":Landroid/app/Fragment;
    move-object v1, v0

    .line 519
    check-cast v1, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .line 520
    .local v1, "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->setLoadDone(Z)V

    .line 522
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->showForLoadDown()V

    .line 523
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;Lcom/miui/gallery/editor/photo/app/PreviewFragment;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/DraftManager;->setOnPreviewRefreshListener(Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;)V

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->onImageLoaded()V

    .line 533
    return-void
.end method
