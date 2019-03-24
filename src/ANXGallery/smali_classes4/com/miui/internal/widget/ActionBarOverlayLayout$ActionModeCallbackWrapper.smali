.class Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private rI:Landroid/view/ActionMode$Callback;

.field final synthetic rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rI:Landroid/view/ActionMode$Callback;

    .line 707
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rI:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rI:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rI:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 727
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 730
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 731
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->rI:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
