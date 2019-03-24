.class public abstract Lcom/miui/internal/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/app/a;
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDelegate"

.field static final aN:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field static final aO:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field aP:Z

.field aQ:Z

.field private aR:Lmiui/app/ActionBar;

.field private aS:Landroid/view/MenuInflater;

.field private aT:I

.field private aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

.field private aV:Z

.field private aW:Lcom/miui/internal/view/menu/MenuBuilder;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field protected mActionMode:Landroid/view/ActionMode;

.field final mActivity:Landroid/app/Activity;

.field protected mFeatureIndeterminateProgress:Z

.field protected mFeatureProgress:Z

.field protected mImmersionLayoutResourceId:I

.field protected mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field protected mSubDecorInstalled:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:I

    .line 75
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 76
    return-void
.end method


# virtual methods
.method protected createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    .line 240
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 242
    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public final getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aP:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aQ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Lmiui/app/ActionBar;

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Lmiui/app/ActionBar;

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Lmiui/app/ActionBar;

    .line 91
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Lmiui/app/ActionBar;

    return-object v0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 132
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aS:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aS:Landroid/view/MenuInflater;

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aS:Landroid/view/MenuInflater;

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aS:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:I

    return v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 4

    .line 111
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 114
    nop

    .line 115
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 116
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    move-object v0, v1

    :cond_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    const-string v1, "ActionBarDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' not in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v0
.end method

.method public isImmersionMenuEnabled()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 211
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 207
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 248
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 149
    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 107
    return-void
.end method

.method protected abstract onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 258
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 252
    const/4 p1, 0x0

    return p1
.end method

.method public onPostResume()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method protected abstract onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onStop()V
    .locals 2

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 157
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aP:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    .line 159
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 202
    const/4 p1, 0x0

    return-object p1
.end method

.method protected reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 222
    :cond_2
    :goto_1
    return-void

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    .line 226
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 2

    .line 177
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 191
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result p1

    return p1

    .line 182
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aQ:Z

    .line 183
    return v1

    .line 179
    :pswitch_1
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aP:Z

    .line 180
    return v1

    .line 188
    :cond_0
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    .line 189
    return v1

    .line 185
    :cond_1
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    .line 186
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 279
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:Z

    .line 280
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aP:Z

    if-eqz v0, :cond_2

    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->showImmersionMore()Z

    move-result p1

    if-nez p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->hideImmersionMore()Z

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->invalidateOptionsMenu()V

    .line 290
    :cond_2
    return-void
.end method

.method protected setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    .line 230
    return-void

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 234
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 237
    :cond_1
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 262
    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 264
    nop

    .line 266
    move p1, v0

    :cond_0
    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:I

    if-eq v0, p1, :cond_1

    .line 267
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iput p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:I

    .line 272
    :cond_1
    return-void
.end method

.method public showImmersionMenu()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    sget v1, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 301
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find anchor view in actionbar. Do you use default actionbar and immersion menu is enabled?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .line 310
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:Z

    if-nez v0, :cond_0

    .line 311
    const-string p1, "ActionBarDelegate"

    const-string p2, "Try to show immersion menu when immersion menu disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 315
    :cond_0
    if-eqz p1, :cond_4

    .line 319
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 321
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v0, :cond_2

    .line 325
    new-instance v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 333
    :cond_3
    return-void

    .line 316
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify a valid anchor view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 197
    const/4 p1, 0x0

    return-object p1
.end method
