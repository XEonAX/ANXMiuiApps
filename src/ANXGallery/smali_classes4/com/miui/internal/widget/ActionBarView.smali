.class public Lcom/miui/internal/widget/ActionBarView;
.super Lcom/miui/internal/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/miui/internal/widget/ActionBarView$HomeView;,
        Lcom/miui/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActionBarView"

.field private static final rO:I = 0x1f

.field private static final rP:I = 0x800013

.field private static final rQ:I = 0x1

.field private static final rR:I = 0x2


# instance fields
.field private bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field cO:Landroid/view/Window$Callback;

.field private cx:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/CharSequence;

.field private qs:Landroid/widget/LinearLayout;

.field private qv:I

.field private rS:I

.field private rT:I

.field private rU:Ljava/lang/CharSequence;

.field private rV:I

.field private rW:Landroid/graphics/drawable/Drawable;

.field private final rX:I

.field private rY:Landroid/graphics/drawable/Drawable;

.field private rZ:I

.field private final sA:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final sB:Landroid/view/View$OnClickListener;

.field private final sC:Landroid/view/View$OnClickListener;

.field private final sD:Landroid/view/View$OnClickListener;

.field private sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private sc:Landroid/widget/TextView;

.field private sd:Landroid/view/View;

.field private se:Landroid/widget/Spinner;

.field private sf:Landroid/widget/LinearLayout;

.field private sg:Landroid/view/View;

.field private sh:Landroid/widget/ProgressBar;

.field private si:Landroid/widget/ProgressBar;

.field private sj:Landroid/view/View;

.field private sk:Landroid/view/View;

.field private sl:Landroid/view/View;

.field private sm:I

.field private sn:I

.field private so:I

.field private sp:Z

.field private sq:Z

.field private sr:Z

.field private ss:Z

.field private st:Lcom/miui/internal/view/menu/MenuBuilder;

.field private su:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private sv:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private sw:Landroid/widget/SpinnerAdapter;

.field private sx:Landroid/app/ActionBar$OnNavigationListener;

.field private sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field sz:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    .line 137
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$1;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sA:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 151
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$2;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sB:Landroid/view/View$OnClickListener;

    .line 161
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$3;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sC:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$4;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$4;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sD:Landroid/view/View$OnClickListener;

    .line 175
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 180
    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 183
    sget v2, Lmiui/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    .line 185
    sget v2, Lmiui/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 186
    sget v2, Lmiui/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    .line 187
    sget v2, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->ss:Z

    .line 189
    sget v2, Lmiui/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Landroid/graphics/drawable/Drawable;

    .line 190
    sget v2, Lmiui/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 194
    sget v3, Lmiui/R$styleable;->ActionBar_android_homeLayout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_home:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->rX:I

    .line 198
    sget v3, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->qv:I

    .line 199
    sget v3, Lmiui/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->so:I

    .line 201
    sget v3, Lmiui/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 202
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->sm:I

    .line 203
    sget v3, Lmiui/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->sn:I

    .line 205
    sget v3, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 207
    sget v3, Lmiui/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 208
    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    .line 210
    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    .line 213
    :cond_0
    sget v2, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    .line 214
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    new-instance v7, Lcom/miui/internal/view/menu/ActionMenuItem;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->su:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 216
    new-instance v7, Lcom/miui/internal/view/menu/ActionMenuItem;

    const v3, 0x1020016

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->sv:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->sx:Landroid/app/ActionBar$OnNavigationListener;

    return-object p0
.end method

.method private a(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3

    .line 1830
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1831
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1834
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v1, 0x2710

    if-ge p2, v1, :cond_1

    .line 1835
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1837
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarView;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->p(Z)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 542
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 543
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 548
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->p(Z)V

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->su:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->su:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sv:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sv:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 556
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method private b(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    .line 1841
    const/4 v0, 0x4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1842
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1844
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 1845
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1847
    :cond_1
    return-void
.end method

.method private bo()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 862
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 863
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 864
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 867
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    :cond_2
    return-void
.end method

.method private bp()Z
    .locals 4

    .line 872
    nop

    .line 873
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 874
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 875
    instance-of v2, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_0

    .line 876
    check-cast v0, Landroid/app/ActionBar$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 877
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 880
    :goto_1
    move v1, v2

    goto :goto_2

    .line 878
    :cond_1
    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/miui/internal/widget/ActionBarView;->d(IZ)I

    move-result v0

    const v3, 0x800005

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 880
    :cond_3
    :goto_2
    return v1
.end method

.method private bq()Z
    .locals 2

    .line 884
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->ss:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 885
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 884
    :goto_0
    return v0
.end method

.method private br()Z
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bs()V
    .locals 5

    .line 896
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bq()Z

    move-result v0

    .line 897
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 898
    instance-of v2, v1, Landroid/widget/LinearLayout;

    const v3, 0x800003

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 899
    check-cast v1, Landroid/widget/LinearLayout;

    .line 900
    if-eqz v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 904
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_3
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 905
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 906
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v3, v4

    nop

    :cond_4
    or-int/lit8 v2, v3, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 907
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_3

    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 909
    :cond_6
    return-void
.end method

.method private bt()Landroid/widget/ProgressBar;
    .locals 2

    .line 1850
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    .line 1851
    if-eqz v0, :cond_0

    .line 1852
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1854
    :cond_0
    return-object v0
.end method

.method private bu()Landroid/widget/ProgressBar;
    .locals 2

    .line 1858
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    .line 1859
    if-eqz v0, :cond_0

    .line 1860
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1862
    :cond_0
    return-object v0
.end method

.method private bv()V
    .locals 3

    .line 1902
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 1903
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1904
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1905
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 1906
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 1908
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:I

    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->q(I)V

    .line 1910
    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:I

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1914
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/graphics/drawable/Drawable;

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1920
    :cond_2
    return-void
.end method

.method private bw()V
    .locals 3

    .line 1923
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1925
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->q(Z)V

    .line 1926
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1928
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->su:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method private d(IZ)I
    .locals 3

    .line 1931
    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1932
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 1933
    const/4 v0, 0x3

    const v1, 0x800003

    const v2, 0x800005

    if-ne p1, v0, :cond_1

    .line 1934
    if-eqz p2, :cond_0

    .line 1939
    :goto_0
    move p1, v2

    goto :goto_2

    .line 1934
    :cond_0
    nop

    .line 1939
    :goto_1
    move p1, v1

    goto :goto_2

    .line 1935
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 1936
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 1939
    :cond_3
    :goto_2
    return p1
.end method

.method static synthetic d(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->sv:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private f(Landroid/view/View;)I
    .locals 3

    .line 1335
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1336
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 1337
    nop

    .line 1338
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1339
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1340
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1341
    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr v2, p1

    .line 1343
    :cond_0
    sub-int/2addr v1, v2

    return v1
.end method

.method static synthetic f(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bw()V

    return-void
.end method

.method static synthetic g(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private g(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 459
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 462
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 466
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 467
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 468
    return-void
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1866
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 1867
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1869
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    goto :goto_0

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1875
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1877
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    .line 1879
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1883
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 1884
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1887
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    goto :goto_0

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1892
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Landroid/graphics/drawable/Drawable;

    .line 1896
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    .line 1898
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method private initTitle()V
    .locals 6

    .line 787
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 789
    sget v2, Lcom/miui/internal/R$layout;->action_bar_title_up:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    .line 791
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->sC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 795
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    .line 796
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 797
    sget v2, Lcom/miui/internal/R$layout;->action_bar_title_item:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    .line 799
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    .line 800
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    sget v2, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    .line 802
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->sD:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->qv:I

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->qv:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :cond_2
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->so:I

    if-eqz v0, :cond_3

    .line 812
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->so:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    :cond_4
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 820
    move v0, v3

    goto :goto_0

    .line 819
    :cond_5
    nop

    .line 820
    move v0, v1

    :goto_0
    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 821
    move v4, v3

    goto :goto_1

    .line 820
    :cond_6
    nop

    .line 821
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    if-nez v4, :cond_8

    if-eqz v0, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    goto :goto_2

    :cond_8
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    move v5, v3

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 823
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    move v3, v1

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 825
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bo()V

    .line 828
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 830
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$6;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$6;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 845
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 846
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 848
    :cond_c
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->p(Z)V

    .line 850
    :cond_d
    return-void
.end method

.method static synthetic j(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    return p0
.end method

.method static synthetic n(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic o(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    return p0
.end method

.method private p(I)V
    .locals 5

    .line 1790
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bt()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1791
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bu()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1793
    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    .line 1794
    if-eqz v1, :cond_2

    .line 1795
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 1796
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_1

    if-ge p1, v2, :cond_0

    goto :goto_0

    .line 1797
    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    .line 1798
    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1800
    :cond_2
    if-eqz v0, :cond_9

    .line 1801
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1803
    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_5

    .line 1804
    const/16 p1, 0x8

    if-eqz v1, :cond_4

    .line 1805
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1807
    :cond_4
    if-eqz v0, :cond_9

    .line 1808
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1810
    :cond_5
    const/4 v4, -0x3

    if-ne p1, v4, :cond_6

    .line 1811
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1812
    :cond_6
    const/4 v4, -0x4

    if-ne p1, v4, :cond_7

    .line 1813
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1814
    :cond_7
    if-ltz p1, :cond_9

    if-gt p1, v2, :cond_9

    .line 1818
    add-int/lit8 v3, p1, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1820
    if-ge p1, v2, :cond_8

    .line 1821
    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->a(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1823
    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->b(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1826
    :cond_9
    :goto_2
    return-void
.end method

.method private p(Z)V
    .locals 5

    .line 1732
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1736
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1737
    if-eqz p1, :cond_6

    .line 1738
    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 1739
    move p1, v3

    goto :goto_1

    .line 1738
    :cond_2
    nop

    .line 1739
    move p1, v2

    :goto_1
    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    goto :goto_2

    .line 1740
    :cond_3
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    if-nez v3, :cond_5

    if-eqz p1, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    goto :goto_4

    .line 1742
    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1745
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 478
    :goto_0
    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 481
    :cond_1
    return-void
.end method

.method protected createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 7

    .line 1748
    new-instance v6, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v3, Lcom/miui/internal/R$layout;->action_menu_item_layout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    .line 1753
    invoke-virtual {v6, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 1754
    sget p1, Lcom/miui/internal/R$id;->action_menu_presenter:I

    invoke-virtual {v6, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 1755
    return-object v6
.end method

.method protected createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    .line 1759
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 783
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1348
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1356
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 776
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sw:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 772
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    return v0
.end method

.method public getSplitActionBarHeight(Z)I
    .locals 1

    .line 358
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    goto :goto_0

    .line 360
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    nop

    .line 358
    :cond_2
    :goto_0
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->sq:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideImmersionMore()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    const/4 v0, 0x1

    return v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
    .locals 2

    .line 271
    if-gtz p1, :cond_0

    .line 272
    const-string p2, "ActionBarView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 277
    const-string p1, "ActionBarView"

    const-string p2, "Don\'t show immersion menu button for custom action bar"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 279
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    if-nez v0, :cond_2

    .line 280
    const-string p1, "ActionBarView"

    const-string p2, "Don\'t show immersion menu button for null display option"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    .line 285
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 287
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    sget v0, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 288
    if-eqz p1, :cond_3

    .line 289
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/internal/widget/ActionBarView$5;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_3
    return-void
.end method

.method public initIndeterminateProgress()V
    .locals 4

    .line 263
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$attr;->actionBarIndeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    .line 264
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 265
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 267
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method public initProgress()V
    .locals 4

    .line 255
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$attr;->actionBarProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    .line 256
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 257
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->sr:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->sq:Z

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 225
    if-eqz p1, :cond_0

    .line 226
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/miui/internal/widget/a;->onDetachedFromWindow()V

    .line 244
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 246
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 248
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v6, p0

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v0

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    .line 1135
    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1136
    sub-int v1, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 1138
    if-gtz v9, :cond_0

    .line 1140
    return-void

    .line 1143
    :cond_0
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1144
    :goto_0
    const/16 v10, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_2

    .line 1145
    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->bx()I

    move-result v2

    .line 1146
    add-int v3, v0, v2

    invoke-virtual {v6, v1, v3, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1147
    goto :goto_1

    :cond_2
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1148
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_3
    :goto_1
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    const/4 v11, 0x0

    if-nez v1, :cond_12

    .line 1152
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->br()Z

    move-result v13

    .line 1154
    if-eqz v13, :cond_7

    .line 1155
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int v14, v0, v1

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->bq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1158
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->cx:Landroid/widget/TextView;

    invoke-direct {v6, v0}, Lcom/miui/internal/widget/ActionBarView;->f(Landroid/view/View;)I

    move-result v0

    .line 1159
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_5

    .line 1160
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    invoke-direct {v6, v1}, Lcom/miui/internal/widget/ActionBarView;->f(Landroid/view/View;)I

    move-result v1

    .line 1161
    if-gt v0, v1, :cond_4

    goto :goto_2

    .line 1163
    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    move v2, v0

    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    .line 1165
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1166
    sub-int v1, v9, v0

    div-int/lit8 v1, v1, 0x2

    add-int v3, v7, v1

    .line 1167
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    add-int v5, v3, v0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1168
    nop

    .line 1173
    move v0, v14

    goto :goto_3

    .line 1169
    :cond_6
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v14, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v14

    .line 1173
    :cond_7
    :goto_3
    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->rS:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 1185
    :pswitch_0
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_12

    .line 1186
    if-eqz v13, :cond_8

    .line 1187
    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->sn:I

    add-int/2addr v0, v1

    .line 1190
    :cond_8
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 1191
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v2

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 1194
    if-le v0, v3, :cond_9

    .line 1196
    move v3, v0

    :cond_9
    add-int/2addr v1, v3

    .line 1198
    nop

    .line 1199
    iget-object v4, v6, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 1200
    iget-object v4, v6, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1201
    instance-of v5, v4, Landroid/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_a

    .line 1202
    check-cast v4, Landroid/app/ActionBar$LayoutParams;

    goto :goto_4

    .line 1203
    :cond_a
    move-object v4, v11

    :goto_4
    iget-object v5, v6, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1204
    if-eqz v4, :cond_b

    .line 1205
    iget v13, v4, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    iget v4, v4, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v13, v4

    add-int v4, v5, v13

    goto :goto_5

    .line 1209
    :cond_b
    move v4, v5

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v13

    sub-int/2addr v5, v13

    sub-int/2addr v5, v4

    .line 1210
    if-le v1, v5, :cond_e

    .line 1211
    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    if-ge v5, v1, :cond_d

    .line 1212
    nop

    .line 1214
    move v3, v0

    .line 1217
    :cond_d
    move v0, v5

    goto :goto_6

    :cond_e
    move v0, v1

    :goto_6
    if-eqz v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_7

    .line 1218
    :cond_f
    move v1, v3

    :goto_7
    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v4

    sub-int v3, v4, v3

    goto :goto_8

    .line 1219
    :cond_10
    move v3, v0

    :goto_8
    iget-object v4, v6, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    add-int/2addr v2, v7

    invoke-virtual {v4, v1, v7, v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 1220
    goto :goto_9

    .line 1177
    :pswitch_1
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_12

    .line 1178
    if-eqz v13, :cond_11

    .line 1179
    iget v1, v6, Lcom/miui/internal/widget/ActionBarView;->sn:I

    add-int/2addr v0, v1

    .line 1181
    :cond_11
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->sn:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_9

    .line 1175
    :pswitch_2
    nop

    .line 1226
    :cond_12
    :goto_9
    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1227
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_13

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_13

    .line 1228
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1229
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1232
    :cond_13
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 1233
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1234
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1237
    :cond_14
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_15

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    .line 1238
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_15

    .line 1239
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->sm:I

    sub-int v3, v1, v3

    invoke-virtual {v6, v2, v3, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1240
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v6, Lcom/miui/internal/widget/ActionBarView;->sm:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1243
    :cond_15
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    if-eqz v2, :cond_16

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    .line 1244
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_16

    .line 1245
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1246
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1249
    :cond_16
    nop

    .line 1250
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    const/16 v3, 0x10

    if-eqz v2, :cond_17

    .line 1251
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    goto :goto_a

    .line 1252
    :cond_17
    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 1254
    iget-object v2, v6, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    goto :goto_a

    .line 1256
    :cond_18
    move-object v2, v11

    :goto_a
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_29

    .line 1257
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1258
    instance-of v5, v4, Landroid/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_19

    .line 1259
    move-object v11, v4

    check-cast v11, Landroid/app/ActionBar$LayoutParams;

    nop

    .line 1261
    :cond_19
    if-eqz v11, :cond_1a

    iget v4, v11, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_b

    :cond_1a
    const v4, 0x800013

    .line 1262
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1264
    nop

    .line 1265
    nop

    .line 1266
    if-eqz v11, :cond_1b

    .line 1267
    invoke-virtual {v11}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v0, v7

    .line 1268
    invoke-virtual {v11}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1269
    iget v7, v11, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    .line 1270
    iget v9, v11, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    goto :goto_c

    .line 1273
    :cond_1b
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_c
    const v10, 0x800007

    and-int/2addr v10, v4

    .line 1275
    const/4 v11, -0x1

    const v13, 0x800005

    const/4 v14, 0x1

    const v15, 0x800003

    if-ne v10, v14, :cond_1e

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v16

    sub-int v16, v16, v5

    div-int/lit8 v12, v16, 0x2

    .line 1277
    if-ge v12, v0, :cond_1c

    .line 1278
    nop

    .line 1282
    move v10, v15

    goto :goto_d

    .line 1279
    :cond_1c
    add-int/2addr v12, v5

    if-le v12, v1, :cond_1d

    .line 1280
    nop

    .line 1282
    move v10, v13

    :cond_1d
    :goto_d
    goto :goto_e

    :cond_1e
    if-ne v4, v11, :cond_1f

    .line 1283
    nop

    .line 1286
    move v10, v15

    :cond_1f
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v12

    .line 1287
    invoke-direct {v6, v10, v8}, Lcom/miui/internal/widget/ActionBarView;->d(IZ)I

    move-result v10

    if-eq v10, v14, :cond_22

    if-eq v10, v15, :cond_21

    if-eq v10, v13, :cond_20

    .line 1299
    move v0, v12

    goto :goto_f

    .line 1295
    :cond_20
    sub-int v0, v1, v5

    goto :goto_f

    .line 1292
    :cond_21
    nop

    .line 1293
    goto :goto_f

    .line 1289
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    .line 1290
    nop

    .line 1299
    :goto_f
    and-int/lit8 v1, v4, 0x70

    .line 1301
    if-ne v4, v11, :cond_23

    .line 1302
    nop

    .line 1305
    move v1, v3

    .line 1306
    :cond_23
    if-eq v1, v3, :cond_26

    const/16 v3, 0x30

    if-eq v1, v3, :cond_25

    const/16 v3, 0x50

    if-eq v1, v3, :cond_24

    .line 1320
    const/4 v12, 0x0

    goto :goto_10

    .line 1316
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v12, v1, v9

    goto :goto_10

    .line 1313
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    add-int v12, v1, v7

    .line 1314
    goto :goto_10

    .line 1308
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1310
    sub-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v12, v3, 0x2

    .line 1311
    nop

    .line 1320
    :goto_10
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1321
    if-eqz v8, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    goto :goto_11

    .line 1322
    :cond_27
    move v3, v0

    :goto_11
    if-eqz v8, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_12

    :cond_28
    add-int/2addr v1, v0

    .line 1323
    :goto_12
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v2, v3, v12, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 1326
    :cond_29
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2a

    .line 1327
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1328
    iget-object v0, v6, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1329
    iget-object v1, v6, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    iget v2, v6, Lcom/miui/internal/widget/ActionBarView;->sm:I

    neg-int v3, v0

    iget v4, v6, Lcom/miui/internal/widget/ActionBarView;->sm:I

    iget-object v5, v6, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    .line 1330
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 1329
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1332
    :cond_2a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    .line 914
    nop

    .line 915
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v1, :cond_2

    .line 916
    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 917
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-ne v6, v5, :cond_0

    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 918
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 915
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    :cond_2
    const/4 v3, 0x1

    if-nez v4, :cond_3

    .line 925
    invoke-virtual {v0, v2, v2}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 926
    iput-boolean v3, v0, Lcom/miui/internal/widget/ActionBarView;->sr:Z

    .line 927
    return-void

    .line 930
    :cond_3
    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView;->sr:Z

    .line 932
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 934
    iget v6, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-lez v6, :cond_4

    .line 935
    iget v6, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    goto :goto_1

    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 937
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v8

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v9

    .line 940
    sub-int v10, v6, v7

    .line 941
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 942
    const/high16 v13, -0x80000000

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 944
    sub-int v15, v4, v8

    sub-int/2addr v15, v9

    .line 945
    div-int/lit8 v9, v15, 0x2

    .line 946
    nop

    .line 947
    nop

    .line 949
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 950
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    invoke-virtual {v0, v3, v15, v14, v2}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 951
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v8, v3

    .line 953
    :cond_5
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 954
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    invoke-virtual {v0, v3, v15, v14, v2}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 957
    :cond_6
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 959
    :goto_2
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 960
    invoke-virtual {v3, v5}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 963
    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 964
    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 966
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_9

    .line 967
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3

    .line 969
    :cond_9
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 971
    :goto_3
    invoke-virtual {v3, v2, v12}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 972
    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->bx()I

    move-result v3

    add-int/2addr v2, v3

    .line 973
    sub-int/2addr v15, v2

    const/4 v3, 0x0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 974
    sub-int v5, v15, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 975
    add-int/2addr v8, v2

    goto :goto_4

    .line 978
    :cond_a
    move v5, v9

    :goto_4
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_b

    .line 979
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v15, v14, v3}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 981
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 984
    :cond_b
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    .line 985
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_c

    .line 986
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/miui/internal/widget/ActionBarView;->sm:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v15, v14, v3}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 988
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->si:Landroid/widget/ProgressBar;

    .line 989
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v9, v2

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->sm:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v9, v2

    .line 988
    const/4 v2, 0x0

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 992
    :cond_c
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    .line 993
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    .line 994
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v15, v14, v3}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 996
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    .line 997
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v9, v2

    .line 996
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1000
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->br()Z

    move-result v2

    .line 1002
    if-eqz v2, :cond_e

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->bs()V

    .line 1006
    :cond_e
    nop

    .line 1007
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-eqz v3, :cond_f

    .line 1008
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    goto :goto_5

    .line 1009
    :cond_f
    iget v3, v0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    if-eqz v3, :cond_10

    .line 1011
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    goto :goto_5

    .line 1014
    :cond_10
    const/4 v3, 0x0

    :goto_5
    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    if-nez v14, :cond_12

    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    if-eqz v14, :cond_11

    goto :goto_6

    .line 1018
    :cond_11
    const/16 v14, 0x8

    goto :goto_7

    .line 1014
    :cond_12
    :goto_6
    if-eqz v3, :cond_11

    .line 1015
    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    :goto_7
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v14, :cond_1c

    .line 1019
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/miui/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 1020
    instance-of v14, v13, Landroid/app/ActionBar$LayoutParams;

    if-eqz v14, :cond_13

    .line 1021
    move-object v14, v13

    check-cast v14, Landroid/app/ActionBar$LayoutParams;

    goto :goto_8

    .line 1023
    :cond_13
    const/4 v14, 0x0

    .line 1024
    :goto_8
    nop

    .line 1025
    if-eqz v14, :cond_14

    .line 1026
    iget v11, v14, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v16, v6

    iget v6, v14, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    .line 1027
    iget v11, v14, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v17, v6

    iget v6, v14, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v11

    goto :goto_9

    .line 1033
    :cond_14
    move/from16 v16, v6

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_9
    iget v11, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v18, v7

    const/4 v7, -0x2

    if-gtz v11, :cond_15

    .line 1034
    nop

    .line 1039
    :goto_a
    const/high16 v11, -0x80000000

    goto :goto_b

    .line 1036
    :cond_15
    iget v11, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v11, v7, :cond_16

    .line 1037
    nop

    .line 1039
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_b

    .line 1037
    :cond_16
    goto :goto_a

    .line 1039
    :goto_b
    nop

    .line 1040
    iget v7, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v7, :cond_17

    iget v7, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_17
    sub-int/2addr v10, v6

    .line 1039
    const/4 v6, 0x0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1042
    iget v6, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v6, v10, :cond_18

    .line 1043
    nop

    .line 1044
    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_c

    .line 1043
    :cond_18
    nop

    .line 1044
    const/high16 v6, -0x80000000

    .line 1045
    :goto_c
    iget v10, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_19

    iget v10, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_d

    :cond_19
    move v10, v15

    :goto_d
    sub-int v10, v10, v17

    .line 1044
    move/from16 v19, v1

    const/4 v1, 0x0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1047
    if-eqz v14, :cond_1a

    iget v1, v14, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_e

    :cond_1a
    const v1, 0x800013

    :goto_e
    const v14, 0x800007

    and-int/2addr v1, v14

    .line 1052
    const/4 v14, 0x1

    if-ne v1, v14, :cond_1b

    iget v1, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v1, v13, :cond_1b

    .line 1053
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v10, v1, 0x2

    .line 1056
    :cond_1b
    nop

    .line 1057
    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1058
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1056
    invoke-virtual {v3, v1, v5}, Landroid/view/View;->measure(II)V

    .line 1059
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v17, v17, v1

    sub-int v15, v15, v17

    goto :goto_f

    .line 1062
    :cond_1c
    move/from16 v19, v1

    move/from16 v16, v6

    move/from16 v18, v7

    :goto_f
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-nez v1, :cond_1e

    if-eqz v2, :cond_1e

    .line 1063
    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1066
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v15, v1, v5}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 1068
    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v8, v5

    .line 1069
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->bq()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1070
    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    mul-int/lit8 v8, v8, 0x2

    sub-int v6, v4, v8

    .line 1072
    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1071
    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1070
    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1077
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int v15, v3, v1

    goto :goto_10

    .line 1079
    :cond_1d
    iget-object v5, v0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v3, v1, v6}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1084
    :cond_1e
    :goto_10
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-nez v1, :cond_22

    .line 1085
    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    packed-switch v1, :pswitch_data_0

    goto :goto_14

    .line 1096
    :pswitch_0
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_22

    .line 1097
    if-eqz v2, :cond_1f

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->sn:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_11

    :cond_1f
    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->sn:I

    .line 1098
    :goto_11
    sub-int/2addr v15, v1

    const/4 v1, 0x0

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1101
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1102
    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 1103
    if-nez v1, :cond_20

    const/high16 v1, -0x80000000

    goto :goto_12

    :cond_20
    const/high16 v1, 0x40000000    # 2.0f

    :goto_12
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1102
    invoke-virtual {v3, v1, v12}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measure(II)V

    goto :goto_14

    .line 1087
    :pswitch_1
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_22

    .line 1088
    if-eqz v2, :cond_21

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->sn:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_13

    :cond_21
    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->sn:I

    .line 1089
    :goto_13
    sub-int/2addr v15, v1

    const/4 v3, 0x0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1090
    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    .line 1091
    const/high16 v5, -0x80000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1090
    invoke-virtual {v2, v1, v12}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1093
    goto :goto_15

    .line 1110
    :cond_22
    :goto_14
    const/4 v3, 0x0

    :goto_15
    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v1, :cond_25

    .line 1111
    nop

    .line 1112
    move v1, v3

    :goto_16
    move/from16 v2, v19

    if-ge v3, v2, :cond_24

    .line 1113
    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1114
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v18

    .line 1115
    if-le v5, v1, :cond_23

    .line 1116
    nop

    .line 1112
    move v1, v5

    :cond_23
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v2

    goto :goto_16

    .line 1119
    :cond_24
    invoke-virtual {v0, v4, v1}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1120
    goto :goto_17

    .line 1121
    :cond_25
    move/from16 v6, v16

    invoke-virtual {v0, v4, v6}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1124
    :goto_17
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    .line 1125
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->sh:Landroid/widget/ProgressBar;

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->sm:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1125
    invoke-virtual {v1, v2, v0}, Landroid/widget/ProgressBar;->measure(II)V

    .line 1129
    :cond_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1375
    check-cast p1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    .line 1377
    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1379
    iget v0, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->sM:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    iget v1, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->sM:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1382
    if-eqz v0, :cond_0

    .line 1383
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1387
    :cond_0
    iget-boolean p1, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->qJ:Z

    if-eqz p1, :cond_1

    .line 1388
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1390
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1361
    invoke-super {p0}, Lcom/miui/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1362
    new-instance v1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1364
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->sM:I

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->qJ:Z

    .line 1370
    return-object v1
.end method

.method public onWindowHide()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowHide()V

    .line 1768
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowShow()V

    .line 1764
    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sx:Landroid/app/ActionBar$OnNavigationListener;

    .line 384
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    .line 854
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 484
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 485
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 488
    :cond_1
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    .line 489
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 490
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 492
    :cond_2
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 10

    .line 592
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    xor-int v1, p1, v0

    .line 593
    :goto_0
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    .line 595
    and-int/lit8 v0, v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_13

    .line 597
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 598
    move v0, v5

    goto :goto_1

    .line 597
    :cond_1
    nop

    .line 598
    move v0, v4

    :goto_1
    const/16 v6, 0x8

    if-eqz v0, :cond_7

    .line 599
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bv()V

    .line 600
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-nez v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 601
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    .line 602
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_3

    .line 603
    move v7, v5

    goto :goto_3

    .line 602
    :cond_3
    nop

    .line 603
    move v7, v4

    :goto_3
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->q(Z)V

    .line 609
    if-eqz v7, :cond_4

    .line 610
    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 614
    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_8

    .line 615
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 616
    if-eqz v7, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    .line 617
    move v8, v5

    goto :goto_4

    .line 616
    :cond_5
    nop

    .line 617
    move v8, v4

    :goto_4
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v9, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 618
    goto :goto_6

    .line 620
    :cond_7
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_8

    .line 621
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v7}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 625
    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_a

    .line 626
    and-int/lit8 v7, p1, 0x8

    if-eqz v7, :cond_9

    .line 627
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    goto :goto_7

    .line 629
    :cond_9
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 630
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 631
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    .line 632
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    .line 636
    :cond_a
    :goto_7
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_10

    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_10

    .line 638
    iget v7, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_b

    .line 639
    move v7, v5

    goto :goto_8

    .line 638
    :cond_b
    nop

    .line 639
    move v7, v4

    :goto_8
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_e

    .line 640
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarView;->sd:Landroid/view/View;

    if-nez v0, :cond_d

    if-eqz v7, :cond_c

    move v6, v4

    goto :goto_9

    :cond_c
    move v6, v3

    nop

    :cond_d
    :goto_9
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_e
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->qs:Landroid/widget/LinearLayout;

    if-nez v0, :cond_f

    if-eqz v7, :cond_f

    move v4, v5

    nop

    :cond_f
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 645
    :cond_10
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 646
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_11

    .line 647
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 649
    :cond_11
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sg:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 653
    :cond_12
    :goto_a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 654
    goto :goto_b

    .line 655
    :cond_13
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->invalidate()V

    .line 659
    :goto_b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_16

    .line 660
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 661
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p1, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 662
    :cond_14
    and-int/2addr p1, v3

    if-eqz p1, :cond_15

    .line 663
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 666
    :cond_15
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 670
    :cond_16
    :goto_c
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 749
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sw:Landroid/widget/SpinnerAdapter;

    .line 750
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 753
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 761
    return-void
.end method

.method public setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 371
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 372
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->sq:Z

    .line 373
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarView;->sq:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 374
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 375
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 376
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 378
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bo()V

    .line 380
    :cond_2
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 508
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    .line 509
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 510
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sl:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 512
    :cond_1
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->q(I)V

    goto :goto_0

    .line 1405
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/graphics/drawable/Drawable;

    .line 1406
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:I

    .line 1408
    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1396
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/graphics/drawable/Drawable;

    .line 1397
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:I

    .line 1399
    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 579
    if-nez p1, :cond_0

    .line 580
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_0
    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 589
    :cond_2
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 688
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 673
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 674
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    .line 675
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 682
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sb:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 684
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 702
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 691
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Landroid/graphics/drawable/Drawable;

    .line 692
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:I

    .line 693
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 698
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 6

    .line 387
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 393
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 396
    :cond_1
    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 397
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->st:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 398
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    if-eqz v0, :cond_2

    .line 401
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_3

    .line 405
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 406
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView;->sy:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 410
    :cond_3
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_5

    .line 413
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 414
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 413
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 416
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->g(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 417
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 418
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 419
    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 420
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 422
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    goto :goto_1

    .line 424
    :cond_5
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 426
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 427
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    .line 426
    invoke-virtual {v2, v4, v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 429
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 430
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 431
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    goto :goto_0

    :cond_6
    const/16 v0, 0x50

    :goto_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 432
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->g(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 433
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 434
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    .line 435
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 436
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eq v0, v1, :cond_7

    .line 437
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 439
    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1, v3, p2}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 443
    sget p2, Lcom/miui/internal/R$id;->expanded_menu:I

    .line 444
    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 445
    if-eqz p2, :cond_8

    .line 446
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 448
    :cond_8
    goto :goto_1

    .line 450
    :cond_9
    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :goto_1
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 454
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 705
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    .line 706
    if-eq p1, v0, :cond_4

    .line 707
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 714
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->sq:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 709
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 719
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 738
    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->sq:Z

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bj:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 721
    :pswitch_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 722
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v2, 0x10102d7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    .line 724
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->action_bar_view_list_nav_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    .line 726
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 728
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 729
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sw:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_2

    .line 732
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sw:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->se:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sA:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 735
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sf:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 736
    nop

    .line 743
    :cond_3
    :goto_1
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rS:I

    .line 744
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 746
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setProgress(I)V
    .locals 1

    .line 1786
    const/4 v0, 0x0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->p(I)V

    .line 1787
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    .line 1781
    if-eqz p1, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    .line 1782
    :cond_0
    const/4 p1, -0x4

    .line 1781
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->p(I)V

    .line 1783
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    .line 1776
    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1777
    :cond_0
    const/4 p1, -0x2

    .line 1776
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->p(I)V

    .line 1778
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    .line 1771
    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1772
    :cond_0
    const/4 p1, -0x2

    .line 1771
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->p(I)V

    .line 1773
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 316
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    .line 317
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 319
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 322
    :cond_0
    if-eqz p1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 338
    if-nez p1, :cond_6

    .line 339
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 340
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 339
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 345
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 346
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 345
    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 349
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitActionBar(Z)V

    .line 351
    :cond_8
    return-void
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    .line 499
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sk:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 502
    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 563
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    .line 564
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sc:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/miui/internal/widget/ActionBarView;->rT:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 569
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    nop

    .line 570
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->p(Z)V

    .line 572
    :cond_3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->sp:Z

    .line 526
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->a(Ljava/lang/CharSequence;)V

    .line 527
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->cO:Landroid/view/Window$Callback;

    .line 239
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->sp:Z

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->a(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public showImmersionMore()Z
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_0
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
