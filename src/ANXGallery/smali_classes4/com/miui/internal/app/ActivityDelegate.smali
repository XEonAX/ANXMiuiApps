.class public Lcom/miui/internal/app/ActivityDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# static fields
.field private static final cc:Ljava/lang/String; = "miui:ActionBar"

.field private static final cd:Lmiui/reflect/Method;

.field private static final ce:Lmiui/reflect/Method;

.field private static final cf:Lmiui/reflect/Method;


# instance fields
.field private final cg:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private ci:Lcom/miui/internal/widget/ActionBarContainer;

.field private final cj:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-class v0, Landroid/app/Activity;

    const-string v1, "onCreatePanelMenu"

    const-string v2, "(ILandroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->cd:Lmiui/reflect/Method;

    .line 52
    const-class v0, Landroid/app/Activity;

    const-string v1, "onPreparePanel"

    const-string v2, "(ILandroid/view/View;Landroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ce:Lmiui/reflect/Method;

    .line 55
    const-class v0, Landroid/app/Activity;

    const-string v1, "onMenuItemSelected"

    const-string v2, "(ILandroid/view/MenuItem;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->cf:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 64
    new-instance p1, Lcom/miui/internal/app/ActivityDelegate$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/ActivityDelegate$1;-><init>(Lcom/miui/internal/app/ActivityDelegate;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->cj:Ljava/lang/Runnable;

    .line 80
    iput-object p2, p0, Lcom/miui/internal/app/ActivityDelegate;->cg:Ljava/lang/Class;

    .line 81
    return-void
.end method

.method private a(ILandroid/view/Menu;)Z
    .locals 5

    .line 422
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->cd:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->cg:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    .line 422
    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a(ILandroid/view/MenuItem;)Z
    .locals 5

    .line 432
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->cf:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->cg:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    .line 432
    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    .line 427
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ce:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->cg:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    .line 427
    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .line 123
    sget v0, Lmiui/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public static getDecorViewLayoutRes(Landroid/view/Window;)I
    .locals 5

    .line 89
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    sget v1, Lcom/miui/internal/R$attr;->windowActionBar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget v1, Lcom/miui/internal/R$attr;->windowActionBarMovable:I

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    goto :goto_0

    .line 96
    :cond_0
    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    goto :goto_0

    .line 99
    :cond_1
    sget v1, Lcom/miui/internal/R$layout;->screen_simple:I

    .line 102
    :goto_0
    sget v3, Lmiui/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v3}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    .line 104
    if-lez v3, :cond_2

    invoke-static {}, Lcom/miui/internal/app/ActivityDelegate;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/miui/internal/app/ActivityDelegate;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    nop

    .line 108
    move v1, v3

    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->isFloating()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 109
    sget v3, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v3, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    .line 111
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v2

    .line 112
    invoke-virtual {v2, p0, v0}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 114
    :cond_3
    return v1
.end method

.method private static s()Z
    .locals 2

    .line 118
    const-string v0, "android"

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .locals 2

    .line 137
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected installSubDecor()V
    .locals 8

    .line 159
    iget-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    .line 165
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    sget-object v2, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 167
    sget v2, Lmiui/R$styleable;->Window_windowLayoutMode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 170
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 173
    :cond_1
    sget v2, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 178
    sget v2, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    .line 181
    :cond_2
    sget v2, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    .line 185
    :cond_3
    sget v2, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    .line 189
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 193
    instance-of v4, v2, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_4

    .line 194
    check-cast v2, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v4, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 199
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 202
    iget-boolean v2, p0, Lcom/miui/internal/app/ActivityDelegate;->aP:Z

    if-eqz v2, :cond_b

    .line 203
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v4, Lcom/miui/internal/R$id;->action_bar_container:I

    .line 204
    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ci:Lcom/miui/internal/widget/ActionBarContainer;

    .line 205
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/miui/internal/app/ActivityDelegate;->aQ:Z

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 206
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v4, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarView;

    iput-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 207
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 210
    iget-boolean v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureProgress:Z

    if-eqz v2, :cond_5

    .line 211
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 213
    :cond_5
    iget-boolean v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v2, :cond_6

    .line 214
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 218
    :cond_6
    sget v2, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    .line 219
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v4, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v2, v4, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 225
    :cond_7
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 226
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 230
    :cond_8
    const-string v2, "splitActionBarWhenNarrow"

    .line 231
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 234
    if-eqz v2, :cond_9

    .line 235
    iget-object v4, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    goto :goto_1

    .line 238
    :cond_9
    sget v4, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 241
    :goto_1
    iget-object v5, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v6, Lcom/miui/internal/R$id;->split_action_bar:I

    .line 242
    invoke-virtual {v5, v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/widget/ActionBarContainer;

    .line 243
    if-eqz v5, :cond_a

    .line 244
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 245
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 246
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 248
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v7, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/widget/ActionBarContextView;

    .line 250
    invoke-virtual {v5, v6}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 251
    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 252
    invoke-virtual {v6, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 253
    invoke-virtual {v6, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 256
    :cond_a
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/internal/app/ActivityDelegate;->cj:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 259
    :cond_b
    sget v2, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 260
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    .line 263
    :cond_c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    return-void

    .line 174
    :cond_d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
    # .line 175
    # new-instance v0, Ljava/lang/IllegalStateException;

    # const-string v1, "You need to use a miui theme (or descendant) with this activity."

    # invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    # throw v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->cj:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 382
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 404
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    .line 405
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    .line 400
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 410
    return v1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->collapseActionView()V

    .line 415
    return v1

    .line 418
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 128
    invoke-super {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->installSubDecor()V

    .line 130
    invoke-static {}, Lmiui/extension/ExtensionManager;->getInstance()Lmiui/extension/ExtensionManager;

    move-result-object v0

    const-string v1, "Activity"

    const-string v2, "onCreate"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/extension/ExtensionManager;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected onCreateImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 315
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4

    .line 274
    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 275
    nop

    .line 276
    iget-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 279
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 280
    if-nez p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 286
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 288
    invoke-direct {p0, v3, p1}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/Menu;)Z

    move-result v2

    .line 291
    :cond_0
    if-eqz v2, :cond_3

    .line 293
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 295
    invoke-direct {p0, v3, v0, p1}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    .line 298
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    .line 301
    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 310
    :cond_5
    :goto_1
    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    if-nez p1, :cond_1

    .line 356
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 360
    iget-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result p1

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    .line 365
    :goto_0
    if-nez p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 371
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPostResume()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 320
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ci:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "miui:ActionBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ci:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ci:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 326
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->ci:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 327
    const-string v1, "miui:ActionBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    .line 145
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 394
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 450
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ch:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
