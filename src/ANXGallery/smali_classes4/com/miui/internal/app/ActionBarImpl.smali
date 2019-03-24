.class public Lcom/miui/internal/app/ActionBarImpl;
.super Lmiui/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final aX:I = 0x0

.field private static final aY:I = 0x1

.field private static aZ:Landroid/app/ActionBar$TabListener;


# instance fields
.field private bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field private bB:Landroid/animation/Animator;

.field private bC:Landroid/animation/Animator;

.field private ba:Landroid/content/Context;

.field private bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private bc:Lcom/miui/internal/widget/ActionBarContainer;

.field private bd:Lcom/miui/internal/widget/ActionBarView;

.field private be:Lcom/miui/internal/widget/ActionBarContextView;

.field private bf:Lcom/miui/internal/view/menu/PhoneActionMenuView;

.field private bg:Landroid/view/View;

.field private bh:Landroid/view/View$OnClickListener;

.field private bi:Lcom/miui/internal/app/ActionBarViewPagerController;

.field private bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private bk:Lcom/miui/internal/widget/ActionModeView;

.field private bl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

.field private bn:Landroid/app/FragmentManager;

.field private bo:I

.field private bp:Z

.field private bq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private br:I

.field private bs:Z

.field private bt:I

.field private bu:Z

.field private bv:Z

.field private bw:Z

.field private bx:Z

.field private by:Z

.field private bz:Lcom/miui/internal/widget/SearchActionModeView;

.field mActionMode:Landroid/view/ActionMode;

.field private mContext:Landroid/content/Context;

.field private mSplitView:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$1;

    invoke-direct {v0}, Lcom/miui/internal/app/ActionBarImpl$1;-><init>()V

    sput-object v0, Lcom/miui/internal/app/ActionBarImpl;->aZ:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 166
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 179
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Landroid/app/FragmentManager;

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 166
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 194
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 166
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 186
    move-object v0, p1

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0}, Lmiui/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Landroid/app/FragmentManager;

    .line 188
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 189
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method private a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 844
    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 845
    new-instance v0, Lcom/miui/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_0

    .line 847
    :cond_0
    new-instance v0, Lcom/miui/internal/view/EditActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 849
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->bf:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    return-object p0
.end method

.method private a(Z)V
    .locals 4

    .line 280
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    .line 282
    iget-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 284
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 287
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 290
    move p1, v1

    goto :goto_1

    .line 289
    :cond_1
    nop

    .line 290
    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    .line 291
    if-eqz p1, :cond_2

    .line 292
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 296
    :goto_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 299
    return-void
.end method

.method private static a(ZZZ)Z
    .locals 1

    .line 221
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 222
    return v0

    .line 223
    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    return v0

    .line 224
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method private b(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .line 1067
    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 1068
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {p1, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 1076
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1078
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1079
    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    goto :goto_0

    .line 1082
    :cond_0
    return-void

    .line 1071
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action Bar Tab must have a Callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method private c(Z)V
    .locals 3

    .line 1097
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:Z

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bv:Z

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bw:Z

    invoke-static {v0, v1, v2}, Lcom/miui/internal/app/ActionBarImpl;->a(ZZZ)Z

    move-result v0

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    if-nez v0, :cond_1

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 1103
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    goto :goto_0

    .line 1106
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    if-eqz v0, :cond_1

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 1108
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    .line 1111
    :cond_1
    :goto_0
    return-void
.end method

.method private d(Z)Landroid/animation/Animator;
    .locals 9

    .line 1114
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1115
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    .line 1116
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 1117
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v1, "TranslationY"

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v7

    aput v7, v6, v4

    aput v2, v6, v3

    invoke-static {p1, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1118
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v2, "Alpha"

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarContainer;->getAlpha()F

    move-result v7

    aput v7, v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v3

    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1119
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object p1, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1120
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1121
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$integer;->action_bar_appear_duration:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1122
    goto :goto_0

    .line 1123
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v6, "TranslationY"

    new-array v7, v5, [F

    iget-object v8, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/miui/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v8

    aput v8, v7, v4

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v7, v3

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1124
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v6, "Alpha"

    new-array v7, v5, [F

    iget-object v8, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/miui/internal/widget/ActionBarContainer;->getAlpha()F

    move-result v8

    aput v8, v7, v4

    aput v2, v7, v3

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1125
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object p1, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1126
    new-instance p1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1127
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$integer;->action_bar_disappear_duration:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1128
    new-instance p1, Lcom/miui/internal/app/ActionBarImpl$5;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/ActionBarImpl$5;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1135
    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method private e(Z)Landroid/animation/Animator;
    .locals 9

    .line 1153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1154
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->p()I

    move-result v1

    .line 1155
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 1156
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v1, "TranslationY"

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v7

    aput v7, v6, v4

    aput v2, v6, v3

    invoke-static {p1, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1157
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v2, "Alpha"

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarContainer;->getAlpha()F

    move-result v7

    aput v7, v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v3

    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1158
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object p1, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1159
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1160
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$integer;->action_bar_appear_duration:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1161
    goto :goto_0

    .line 1162
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v6, "TranslationY"

    new-array v7, v5, [F

    iget-object v8, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/miui/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v8

    aput v8, v7, v4

    int-to-float v1, v1

    aput v1, v7, v3

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1163
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const-string v6, "Alpha"

    new-array v7, v5, [F

    iget-object v8, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/miui/internal/widget/ActionBarContainer;->getAlpha()F

    move-result v8

    aput v8, v7, v4

    aput v2, v7, v3

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1164
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object p1, v2, v4

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1165
    new-instance p1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1166
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$integer;->action_bar_disappear_duration:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1167
    new-instance p1, Lcom/miui/internal/app/ActionBarImpl$6;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/ActionBarImpl$6;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1174
    :goto_0
    return-object v0
.end method

.method static synthetic e(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private f(Z)V
    .locals 2

    .line 1266
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1269
    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bf:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .line 1271
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bf:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1272
    if-eqz p1, :cond_0

    .line 1273
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bh:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object p1

    .line 1274
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 1276
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1280
    :cond_1
    :goto_0
    return-void
.end method

.method public static getActionBar(Landroid/view/View;)Lcom/miui/internal/app/ActionBarImpl;
    .locals 2

    .line 200
    nop

    .line 201
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 202
    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 203
    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 204
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 205
    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 211
    :cond_1
    nop

    .line 201
    move-object p0, v0

    goto :goto_0

    .line 215
    :cond_2
    :goto_1
    return-object v0
.end method

.method private n()V
    .locals 4

    .line 1044
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1045
    return-void

    .line 1048
    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 1051
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1053
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1056
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1058
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1060
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 1062
    :goto_1
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 1063
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 1064
    return-void
.end method

.method private o()V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 1086
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 1092
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 1093
    return-void
.end method

.method private p()I
    .locals 3

    .line 1139
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 1140
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1142
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_0

    .line 1143
    check-cast v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .line 1144
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getCollapsedHeight()I

    move-result v0

    .line 1149
    :cond_0
    return v0
.end method

.method static synthetic r()Landroid/app/ActionBar$TabListener;
    .locals 1

    .line 57
    sget-object v0, Lcom/miui/internal/app/ActionBarImpl;->aZ:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;Z)V

    .line 583
    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .line 595
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;IZ)V

    .line 596
    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->n()V

    .line 600
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 601
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;I)V

    .line 602
    if-eqz p3, :cond_0

    .line 603
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 605
    :cond_0
    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .line 586
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->n()V

    .line 587
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 588
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;I)V

    .line 589
    if-eqz p2, :cond_0

    .line 590
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 592
    :cond_0
    return-void
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result p1

    return p1
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    .line 957
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result p1

    .line 956
    return p1
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 934
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 548
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 564
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;IZ)V

    .line 575
    return-void

    .line 569
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;Z)V

    .line 559
    return-void

    .line 553
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(I)V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 652
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 653
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 654
    if-eqz v1, :cond_2

    .line 655
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 659
    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 660
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v3, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 663
    :cond_3
    if-ne v0, p1, :cond_5

    .line 664
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 664
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 667
    :cond_5
    return-void
.end method

.method b(Landroid/app/ActionBar$Tab;)V
    .locals 0

    .line 641
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    .line 642
    return-void
.end method

.method b(Z)V
    .locals 1

    .line 830
    if-eqz p1, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->l()V

    goto :goto_0

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->m()V

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->animateToVisibility(Z)V

    .line 837
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 840
    :cond_2
    return-void
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;
    .locals 1

    .line 854
    instance-of p1, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz p1, :cond_3

    .line 855
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Lcom/miui/internal/widget/SearchActionModeView;

    if-nez p1, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Lcom/miui/internal/widget/SearchActionModeView;

    .line 858
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getPendingInsets()Landroid/graphics/Rect;

    move-result-object p1

    .line 859
    if-eqz p1, :cond_1

    .line 860
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Lcom/miui/internal/widget/SearchActionModeView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    .line 862
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 863
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->addView(Landroid/view/View;)V

    .line 865
    :cond_2
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Lcom/miui/internal/widget/SearchActionModeView;

    .line 866
    goto :goto_0

    .line 867
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarContextView;

    .line 870
    :goto_0
    return-object p1
.end method

.method public createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
    .locals 4

    .line 874
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 875
    sget v1, Lcom/miui/internal/R$layout;->search_action_mode_view:I

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    .line 877
    new-instance v1, Lcom/miui/internal/app/ActionBarImpl$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/ActionBarImpl$4;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    return-object v0
.end method

.method public doHide(Z)V
    .locals 5

    .line 1218
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1224
    :cond_1
    move p1, v1

    goto :goto_1

    .line 1222
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 1224
    :goto_1
    const/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1225
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->d(Z)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    .line 1226
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1228
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1229
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1230
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1233
    :goto_2
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_6

    .line 1234
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    .line 1235
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 1237
    :cond_4
    if-eqz p1, :cond_5

    .line 1238
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->e(Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    .line 1239
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_3

    .line 1241
    :cond_5
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->p()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1242
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1243
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1245
    :goto_3
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->f(Z)V

    .line 1247
    :cond_6
    return-void
.end method

.method public doShow(Z)V
    .locals 5

    .line 1178
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->q()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1183
    :cond_1
    move p1, v1

    goto :goto_1

    .line 1181
    :cond_2
    :goto_0
    nop

    .line 1183
    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1184
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 1185
    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->d(Z)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    .line 1186
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 1188
    :cond_3
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1189
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1192
    :goto_2
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_8

    .line 1193
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    if-eqz v4, :cond_4

    .line 1194
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1196
    :cond_4
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1197
    if-eqz p1, :cond_6

    .line 1198
    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->e(Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    .line 1199
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bC:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1200
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 1201
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1202
    if-eqz p1, :cond_5

    instance-of v0, p1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_5

    .line 1203
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    .line 1204
    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 1205
    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 1208
    :cond_5
    goto :goto_3

    .line 1210
    :cond_6
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1211
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 1213
    :cond_7
    :goto_3
    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->f(Z)V

    .line 1215
    :cond_8
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentTabCount()I
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentTabCount()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 394
    return v1

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    nop

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 381
    return v1

    .line 377
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v1

    nop

    :cond_0
    return v1

    .line 379
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    .line 722
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 723
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 724
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 725
    const v2, 0x1010397

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 726
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 728
    if-eqz v0, :cond_0

    .line 729
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/content/Context;

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/content/Context;

    .line 734
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getViewPagerOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 2

    .line 302
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 1

    .line 759
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:Z

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:Z

    .line 761
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 763
    :cond_0
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .locals 4

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 232
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setActionBar(Lmiui/app/ActionBar;)V

    .line 233
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    .line 234
    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarContextView;

    .line 236
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    .line 238
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    .line 240
    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bg:Landroid/view/View;

    .line 242
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bg:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 243
    new-instance p1, Lcom/miui/internal/app/ActionBarImpl$3;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/ActionBarImpl$3;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bh:Landroid/view/View$OnClickListener;

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_6

    .line 260
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 261
    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl;->br:I

    .line 264
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    .line 265
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 266
    move p1, v1

    goto :goto_1

    .line 265
    :cond_2
    nop

    .line 266
    move p1, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 267
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:Z

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lcom/miui/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 272
    invoke-virtual {v2}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Z)V

    .line 273
    return-void

    .line 255
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFragmentViewPagerMode()Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    return v0
.end method

.method j()Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method k()V
    .locals 0

    .line 670
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->o()V

    .line 671
    return-void
.end method

.method l()V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bw:Z

    if-nez v0, :cond_0

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bw:Z

    .line 753
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 755
    :cond_0
    return-void
.end method

.method m()V
    .locals 1

    .line 766
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bw:Z

    if-eqz v0, :cond_0

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bw:Z

    .line 768
    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 770
    :cond_0
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 542
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Z)V

    .line 277
    return-void
.end method

.method q()Z
    .locals 1

    .line 1250
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    return v0
.end method

.method public removeAllFragmentTab()V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeAllFragmentTab()V

    .line 991
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->k()V

    .line 638
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    .line 981
    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Landroid/app/Fragment;)V

    .line 986
    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public removeFragmentTabAt(I)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(I)V

    .line 971
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 940
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 786
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;)V

    .line 616
    return-void

    .line 610
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    .line 627
    return-void

    .line 621
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 3

    .line 675
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 676
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    nop

    .line 677
    :cond_0
    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 678
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 683
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_2

    .line 684
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_5

    .line 685
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 686
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 690
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    nop

    .line 689
    :cond_3
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 691
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_4

    .line 692
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 694
    :cond_4
    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 695
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz p1, :cond_5

    .line 696
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {p1, v1, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 700
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 701
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 703
    :cond_6
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .line 473
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    .line 474
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 473
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 475
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 327
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object p2, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p2, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .line 429
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 431
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    .line 534
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:Z

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 538
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 411
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:Z

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 415
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    .line 441
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 443
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    .line 424
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 425
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    .line 435
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 437
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 420
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setEndView(Landroid/view/View;)V

    .line 1036
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->setFragmentActionMenuAt(IZ)V

    .line 996
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    .line 910
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 911
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .locals 0

    .line 916
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 917
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->removeAllTabs()V

    .line 921
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setNavigationMode(I)V

    .line 922
    new-instance p1, Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    .line 924
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 925
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 927
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setFragmentViewPagerMode(Z)V

    .line 928
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 448
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(I)V

    .line 334
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 339
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 355
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    .line 356
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(I)V

    .line 344
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 505
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 509
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 512
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 513
    const/4 v0, 0x0

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->n()V

    .line 516
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 517
    iget v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 518
    iget v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 519
    iput v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:I

    .line 523
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:Z

    if-nez p1, :cond_3

    const/4 v0, 0x1

    nop

    :cond_3
    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 525
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgress(I)V

    .line 1016
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminate(Z)V

    .line 1011
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminateVisibility(Z)V

    .line 1006
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarVisibility(Z)V

    .line 1001
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 368
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 363
    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    .line 366
    nop

    .line 371
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1

    .line 1254
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    .line 1255
    if-nez p1, :cond_1

    .line 1257
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1258
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    goto :goto_0

    .line 1260
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    .line 1263
    :cond_1
    :goto_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 458
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setStartView(Landroid/view/View;)V

    .line 1031
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 406
    return-void
.end method

.method public setTabBadgeVisibility(IZ)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    .line 313
    return-void
.end method

.method public setTabTextAppearance(II)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    .line 318
    return-void
.end method

.method public setTabsMode(Z)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Z)V

    .line 308
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerDecor(Landroid/view/View;)V

    .line 1041
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    .line 1026
    return-void
.end method

.method public show()V
    .locals 1

    .line 744
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:Z

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:Z

    .line 746
    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 748
    :cond_0
    return-void
.end method

.method public showActionBarShadow(Z)V
    .locals 0

    .line 890
    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    if-eqz p1, :cond_0

    .line 896
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    goto :goto_0

    .line 898
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->hide(Z)V

    .line 901
    :cond_1
    :goto_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 793
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 795
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v1, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/miui/internal/view/SearchActionModeImpl;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v1, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/miui/internal/view/EditActionModeImpl;

    if-eqz v1, :cond_3

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    .line 798
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1}, Lcom/miui/internal/widget/ActionModeView;->killMode()V

    .line 801
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    .line 803
    instance-of p1, v0, Lcom/miui/internal/view/ActionModeImpl;

    if-eqz p1, :cond_6

    .line 804
    move-object p1, v0

    check-cast p1, Lcom/miui/internal/view/ActionModeImpl;

    .line 805
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V

    .line 806
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V

    .line 807
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 808
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 809
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {p1, v0}, Lcom/miui/internal/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    .line 810
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(Z)V

    .line 811
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl;->br:I

    if-ne v1, p1, :cond_4

    .line 813
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 814
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 817
    :cond_4
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    instance-of p1, p1, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_5

    .line 818
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ActionModeView;

    check-cast p1, Lcom/miui/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    .line 819
    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 822
    :cond_5
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 823
    return-object v0

    .line 826
    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
