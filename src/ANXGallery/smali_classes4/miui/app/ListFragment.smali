.class public Lmiui/app/ListFragment;
.super Landroid/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lmiui/app/IFragment;


# instance fields
.field private xd:Lcom/miui/internal/app/FragmentDelegate;

.field private xe:Z

.field private xf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ListFragment;->xe:Z

    .line 26
    iput-boolean v0, p0, Lmiui/app/ListFragment;->xf:Z

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    .line 341
    return-void
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 83
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 92
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 68
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 147
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 149
    invoke-virtual {p0}, Lmiui/app/ListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/ListFragment;->xe:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/ListFragment;->xf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/ListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 153
    :cond_0
    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 184
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 174
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    .line 32
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 260
    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 200
    nop

    .line 201
    iget-boolean p1, p0, Lmiui/app/ListFragment;->xe:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/ListFragment;->xf:Z

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lmiui/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0, p2}, Lmiui/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 206
    :cond_0
    return v0

    .line 208
    :cond_1
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p1, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1, p2, p3}, Lcom/miui/internal/app/FragmentDelegate;->onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 345
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 347
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    .line 348
    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 293
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onHiddenChanged(Z)V

    .line 294
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 297
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/app/ListFragment;->onVisibilityChanged(Z)V

    .line 298
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    .line 222
    if-nez p1, :cond_0

    .line 223
    iget-boolean p1, p0, Lmiui/app/ListFragment;->xe:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/ListFragment;->xf:Z

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lmiui/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0, p3}, Lmiui/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 44
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->onPostResume()V

    .line 45
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 38
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->onStop()V

    .line 39
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 311
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setHasOptionsMenu(Z)V

    .line 113
    iget-boolean v0, p0, Lmiui/app/ListFragment;->xe:Z

    if-eq v0, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lmiui/app/ListFragment;->xe:Z

    .line 115
    invoke-virtual {p0}, Lmiui/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 119
    :cond_0
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 318
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 319
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setMenuVisibility(Z)V

    .line 124
    iget-boolean v0, p0, Lmiui/app/ListFragment;->xf:Z

    if-eq v0, p1, :cond_0

    .line 125
    iput-boolean p1, p0, Lmiui/app/ListFragment;->xf:Z

    .line 126
    invoke-virtual {p0}, Lmiui/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 130
    :cond_0
    return-void
.end method

.method public setThemeRes(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 103
    return-void
.end method

.method public showImmersionMenu()V
    .locals 1

    .line 325
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->showImmersionMenu()V

    .line 326
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 334
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 97
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenuContent()V
    .locals 1

    .line 160
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/ListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/ListFragment;->xe:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/ListFragment;->xf:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lmiui/app/ListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmiui/app/ListFragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 164
    :cond_0
    return-void
.end method
