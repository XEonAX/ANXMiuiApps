.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;


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
    .line 774
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    .prologue
    .line 799
    return-void
.end method

.method public onClick(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;I)V
    .locals 7
    .param p1, "dialog"    # Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
    .param p2, "which"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 777
    const-string v2, "PhotoEditor"

    const-string v3, "confirm dialog from %s, event is %d"

    if-nez p1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    const-string v1, "main_alert_dialog"

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 779
    if-ne p2, v6, :cond_2

    .line 780
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;->onExport()V

    .line 794
    :cond_0
    :goto_1
    return-void

    .line 777
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 781
    :cond_2
    if-ne p2, v5, :cond_0

    .line 782
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;->onDiscard()V

    goto :goto_1

    .line 784
    :cond_3
    const-string v1, "menu_alert_dialog"

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f120185

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 786
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    if-eqz v1, :cond_0

    .line 787
    if-ne p2, v6, :cond_4

    .line 788
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    move-result-object v1

    check-cast v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v1, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onSave(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    goto :goto_1

    .line 789
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_4
    if-ne p2, v5, :cond_0

    .line 790
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$6;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    move-result-object v1

    check-cast v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-interface {v1, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onDiscard(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    goto :goto_1
.end method

.method public onDismiss(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    .prologue
    .line 804
    return-void
.end method
