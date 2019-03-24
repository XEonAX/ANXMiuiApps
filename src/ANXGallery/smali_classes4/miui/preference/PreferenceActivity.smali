.class public Lmiui/preference/PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Lmiui/app/IActivity;


# instance fields
.field private wQ:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/miui/internal/app/ActivityDelegate;

    const-class v1, Landroid/preference/PreferenceActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/app/ActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    .line 35
    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 209
    return-void
.end method

.method public bridge synthetic getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lmiui/preference/PreferenceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 39
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 44
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getTranslucentStatus()I
    .locals 1

    .line 228
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 117
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->invalidateOptionsMenu()V

    .line 118
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 155
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 150
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 174
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 177
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lmiui/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 55
    sget v2, Lcom/miui/internal/R$attr;->preferenceScreenPaddingBottom:I

    invoke-static {p0, v2}, Lmiui/util/AttributeResolver;->resolveDimension(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    .line 57
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 59
    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/miui/internal/variable/Android_App_PreferenceActivity_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_PreferenceActivity_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_PreferenceActivity_class$Factory;->get()Lcom/miui/internal/variable/Android_App_PreferenceActivity_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_App_PreferenceActivity_class;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 102
    if-nez p1, :cond_0

    .line 103
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 235
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 236
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 97
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onPostResume()V

    .line 98
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 91
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->onStop()V

    .line 92
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 112
    iget-object p2, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {p2, p1}, Lcom/miui/internal/app/ActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 144
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public requestExtraWindowFeature(I)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    .line 185
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    .line 221
    return-void
.end method

.method public showImmersionMenu()V
    .locals 1

    .line 192
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActivityDelegate;->showImmersionMenu()V

    .line 193
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 201
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 139
    iget-object v0, p0, Lmiui/preference/PreferenceActivity;->wQ:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
