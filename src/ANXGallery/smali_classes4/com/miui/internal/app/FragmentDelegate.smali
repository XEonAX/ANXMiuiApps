.class public Lcom/miui/internal/app/FragmentDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "SourceFile"


# static fields
.field public static final MENU_INVALIDATE:I = 0x1

.field private static final df:I = 0x10


# instance fields
.field private ba:Landroid/content/Context;

.field private final cO:Landroid/view/Window$Callback;

.field private final cj:Ljava/lang/Runnable;

.field private dg:Landroid/app/Fragment;

.field private dh:Landroid/view/View;

.field private di:I

.field private dj:B

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 54
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$1;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cj:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$2;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cO:Landroid/view/Window$Callback;

    .line 106
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;)B
    .locals 0

    .line 37
    iget-byte p0, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;I)B
    .locals 1

    .line 37
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    and-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    return-object p0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    .line 154
    iget-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_6

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    .line 156
    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    .line 157
    const/4 v2, 0x0

    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 158
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->cO:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 159
    invoke-virtual {p2, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 160
    iget-boolean p3, p0, Lcom/miui/internal/app/FragmentDelegate;->aQ:Z

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getTranslucentStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 163
    iget p3, p0, Lcom/miui/internal/app/FragmentDelegate;->di:I

    if-eqz p3, :cond_0

    .line 164
    const p3, 0x1010054

    invoke-static {p1, p3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_0
    sget p3, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/internal/widget/ActionBarView;

    iput-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 168
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cO:Landroid/view/Window$Callback;

    invoke-virtual {p3, v1}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 171
    iget-boolean p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureProgress:Z

    if-eqz p3, :cond_1

    .line 172
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p3}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 174
    :cond_1
    iget-boolean p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz p3, :cond_2

    .line 175
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p3}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 180
    iget-object p3, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {p3, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 184
    :cond_3
    const-string p3, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 187
    if-eqz p3, :cond_4

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_0

    .line 191
    :cond_4
    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 192
    sget v1, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    move p1, v1

    :goto_0
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    .line 197
    invoke-virtual {p2, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    .line 198
    if-eqz v1, :cond_5

    .line 199
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 200
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 201
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p3}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 203
    sget v2, Lcom/miui/internal/R$id;->action_context_bar:I

    .line 204
    invoke-virtual {p2, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    .line 205
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 206
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 207
    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 208
    invoke-virtual {v2, p3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 211
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 212
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 213
    iput-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    .line 214
    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    .line 215
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_7

    .line 217
    iget-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 220
    :cond_7
    :goto_1
    return-void
.end method

.method public createActionBar()Lmiui/app/ActionBar;
    .locals 2

    .line 111
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    .line 297
    iget v0, p0, Lcom/miui/internal/app/FragmentDelegate;->di:I

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->di:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->ba:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    iget-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    .line 266
    iget-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    .line 267
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    instance-of v0, v0, Lmiui/app/IFragment;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 310
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 233
    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiui/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 236
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    .line 228
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 123
    :cond_0
    sget v1, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 126
    :cond_1
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setTranslucentStatus(I)V

    .line 128
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 129
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    iget-boolean v1, p0, Lcom/miui/internal/app/FragmentDelegate;->aP:Z

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/internal/app/FragmentDelegate;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 137
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 138
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 139
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    :cond_3
    goto :goto_0

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v0, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    return-object p1

    .line 117
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 245
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 259
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    instance-of v0, v0, Lmiui/app/IFragment;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 317
    const/4 p1, 0x1

    return p1

    .line 320
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 250
    if-nez p1, :cond_0

    .line 251
    iget-object p2, p0, Lcom/miui/internal/app/FragmentDelegate;->dg:Landroid/app/Fragment;

    check-cast p2, Lmiui/app/IFragment;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lmiui/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    .line 252
    const/4 p1, 0x1

    return p1

    .line 254
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtraThemeRes(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/miui/internal/app/FragmentDelegate;->di:I

    .line 291
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 327
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dh:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenu(I)V
    .locals 1

    .line 272
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/miui/internal/app/FragmentDelegate;->dj:B

    .line 273
    return-void
.end method
