.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/editor/photo/utils/Callback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 833
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1502(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)Z

    .line 834
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v0

    .line 835
    .local v0, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    .line 836
    return-void
.end method

.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "o"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 815
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1502(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)Z

    .line 816
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v1

    .line 817
    .local v1, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->hideProcessDialog()V

    .line 819
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getStepCount()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 825
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "navigator"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;

    .line 826
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 827
    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->setExportEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 807
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->onDone(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 807
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->onError(Ljava/lang/Void;)V

    return-void
.end method

.method public onError(Ljava/lang/Void;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Void;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1502(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)Z

    .line 841
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const v1, 0x7f0c0299

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 842
    return-void
.end method

.method public onExecute(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "o"    # Landroid/graphics/Bitmap;

    .prologue
    .line 847
    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 807
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->onExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPrepare()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$7;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1502(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)Z

    .line 811
    return-void
.end method
