.class public Lmiui/app/Activity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lmiui/app/IActivity;


# instance fields
.field private wQ:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Lcom/miui/internal/app/ActivityDelegate;

    const-class v1, Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/app/ActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    .line 33
    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 201
    return-void
.end method

.method public bridge synthetic getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 37
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 42
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getTranslucentStatus()I
    .locals 1

    .line 224
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 98
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->invalidateOptionsMenu()V

    .line 99
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 162
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 157
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 166
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 169
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 83
    if-nez p1, :cond_0

    .line 84
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostResume()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 78
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onPostResume()V

    .line 79
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 72
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onStop()V

    .line 73
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 93
    iget-object p2, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p2, p1}, Lcom/miui/internal/app/ActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 141
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-object p2, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p2, p1}, Lcom/miui/internal/app/ActivityDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public requestExtraWindowFeature(I)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    .line 177
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 234
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    .line 213
    return-void
.end method

.method public showImmersionMenu()V
    .locals 1

    .line 184
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->showImmersionMenu()V

    .line 185
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 193
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 136
    iget-object v0, p0, Lmiui/app/Activity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
