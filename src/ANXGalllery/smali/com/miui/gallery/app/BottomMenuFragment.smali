.class public abstract Lcom/miui/gallery/app/BottomMenuFragment;
.super Lmiui/app/Fragment;
.source "BottomMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/app/IBottomMenu;


# instance fields
.field private mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mHasMenu:Z

    .line 13
    iput-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public getActionBar()Lmiui/app/ActionBar;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-super {p0}, Lmiui/app/Fragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->wrapActionBar(Lmiui/app/ActionBar;)Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuCollapsedHeight()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->getMenuCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public hideBottomMenu()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->setVisible(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lmiui/app/Fragment;->invalidateOptionsMenu()V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->updateOptionsMenu(I)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->invalidateBottomMenu()V

    .line 71
    :cond_0
    return-void
.end method

.method public isMenuVisible()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-super {p0, v0}, Lmiui/app/Fragment;->setHasOptionsMenu(Z)V

    .line 19
    invoke-super {p0, v0}, Lmiui/app/Fragment;->setMenuVisibility(Z)V

    .line 20
    new-instance v0, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;-><init>(Lmiui/app/Fragment;)V

    iput-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public setHasBottomMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 38
    iput-boolean p1, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mHasMenu:Z

    .line 39
    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->invalidateBottomMenu()V

    .line 43
    :cond_0
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .param p1, "hasMenu"    # Z

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/BottomMenuFragment;->setHasBottomMenu(Z)V

    .line 48
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mMenuVisible:Z

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->invalidateBottomMenu()V

    .line 58
    :cond_0
    return-void
.end method

.method public setThemeRes(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 75
    invoke-super {p0, p1}, Lmiui/app/Fragment;->setThemeRes(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->setExtraThemeRes(I)V

    .line 77
    return-void
.end method

.method public showBottomMenu()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuFragment;->mDelegate:Lcom/miui/gallery/app/BottomMenuFragmentDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/BottomMenuFragmentDelegate;->setVisible(Z)V

    .line 93
    :cond_0
    return-void
.end method
