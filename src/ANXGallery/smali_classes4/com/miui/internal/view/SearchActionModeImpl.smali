.class public Lcom/miui/internal/view/SearchActionModeImpl;
.super Lcom/miui/internal/view/ActionModeImpl;
.source "SourceFile"

# interfaces
.implements Lmiui/view/SearchActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/ActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/internal/view/SearchActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 42
    return-void
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/internal/view/SearchActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/internal/view/SearchActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 47
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/internal/view/SearchActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setAnchorView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/internal/view/SearchActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setAnimateView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/internal/view/SearchActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setResultView(Landroid/view/View;)V

    .line 33
    return-void
.end method
