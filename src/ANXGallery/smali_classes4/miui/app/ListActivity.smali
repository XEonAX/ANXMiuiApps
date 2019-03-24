.class public Lmiui/app/ListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"

# interfaces
.implements Lmiui/app/IActivity;


# instance fields
.field private wQ:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/miui/internal/app/ActivityDelegate;

    const-class v1, Landroid/app/ListActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/app/ActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    .line 29
    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 186
    return-void
.end method

.method public bridge synthetic getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lmiui/app/ListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 33
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 38
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getTranslucentStatus()I
    .locals 1

    .line 205
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 94
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->invalidateOptionsMenu()V

    .line 95
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 132
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 127
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 151
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 154
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 79
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 213
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostResume()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onPostResume()V

    .line 74
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onPostResume()V

    .line 75
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 68
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onStop()V

    .line 69
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 89
    iget-object p2, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p2, p1}, Lcom/miui/internal/app/ActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 121
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public requestExtraWindowFeature(I)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    .line 162
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    .line 198
    return-void
.end method

.method public showImmersionMenu()V
    .locals 1

    .line 169
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->showImmersionMenu()V

    .line 170
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 178
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 116
    iget-object v0, p0, Lmiui/app/ListActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
