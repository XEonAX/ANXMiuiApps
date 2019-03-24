.class public Lcom/miui/internal/view/EditActionModeImpl;
.super Lcom/miui/internal/view/ActionModeImpl;
.source "SourceFile"

# interfaces
.implements Lmiui/view/EditActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/ActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 72
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 77
    return-void
.end method

.method public setButton(II)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/EditActionModeImpl;->setButton(ILjava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public setButton(III)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/view/EditActionModeImpl;->setButton(ILjava/lang/CharSequence;I)V

    .line 55
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;I)V

    .line 50
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    .line 67
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0

    .line 63
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 59
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/EditActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/miui/internal/view/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method
