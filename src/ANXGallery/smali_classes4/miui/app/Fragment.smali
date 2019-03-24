.class public Lmiui/app/Fragment;
.super Landroid/app/Fragment;
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
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/Fragment;->xe:Z

    .line 26
    iput-boolean v0, p0, Lmiui/app/Fragment;->xf:Z

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 339
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    .line 340
    return-void
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 82
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 91
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 106
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 67
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 145
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 147
    invoke-virtual {p0}, Lmiui/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->xe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->xf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 151
    :cond_0
    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 182
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 172
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    .line 32
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 258
    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 197
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 198
    nop

    .line 199
    iget-boolean p1, p0, Lmiui/app/Fragment;->xe:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/Fragment;->xf:Z

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lmiui/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0, p2}, Lmiui/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 204
    :cond_0
    return v0

    .line 206
    :cond_1
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1, p2, p3}, Lcom/miui/internal/app/FragmentDelegate;->onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 344
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 346
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    .line 347
    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 290
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 291
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 294
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/app/Fragment;->onVisibilityChanged(Z)V

    .line 295
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 275
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    .line 220
    if-nez p1, :cond_0

    .line 221
    iget-boolean p1, p0, Lmiui/app/Fragment;->xe:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiui/app/Fragment;->xf:Z

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lmiui/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0, p3}, Lmiui/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 44
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->onPostResume()V

    .line 45
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 38
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->onStop()V

    .line 39
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 308
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 112
    iget-boolean v0, p0, Lmiui/app/Fragment;->xe:Z

    if-eq v0, p1, :cond_0

    .line 113
    iput-boolean p1, p0, Lmiui/app/Fragment;->xe:Z

    .line 114
    iget-boolean p1, p0, Lmiui/app/Fragment;->xe:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 118
    :cond_0
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 315
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 316
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 123
    iget-boolean v0, p0, Lmiui/app/Fragment;->xf:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lmiui/app/Fragment;->xf:Z

    .line 125
    invoke-virtual {p0}, Lmiui/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {p1}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 129
    :cond_0
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 356
    return-void
.end method

.method public setThemeRes(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 102
    return-void
.end method

.method public showImmersionMenu()V
    .locals 1

    .line 323
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->showImmersionMenu()V

    .line 324
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 332
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 96
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenuContent()V
    .locals 1

    .line 158
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->xe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    .line 159
    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/Fragment;->xf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lmiui/app/Fragment;->xd:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 162
    :cond_0
    return-void
.end method
