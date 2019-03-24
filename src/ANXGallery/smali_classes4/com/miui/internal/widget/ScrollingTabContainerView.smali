.class public Lcom/miui/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# instance fields
.field private mContentHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private rl:Landroid/graphics/Paint;

.field vi:Ljava/lang/Runnable;

.field vj:I

.field vk:I

.field private vl:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private vm:Landroid/widget/LinearLayout;

.field private vn:Landroid/widget/Spinner;

.field private vo:Z

.field private vp:I

.field private vq:Landroid/graphics/Bitmap;

.field private vr:Z

.field private vs:F

.field private vt:I

.field private vu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->rl:Landroid/graphics/Paint;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x10102ce

    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    sget v3, Lmiui/R$styleable;->ActionBar_tabIndicator:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 89
    sget v4, Lmiui/R$styleable;->ActionBar_translucentTabIndicator:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vr:Z

    .line 90
    invoke-direct {p0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vq:Landroid/graphics/Bitmap;

    .line 91
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    iget-boolean v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vr:Z

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->rl:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 99
    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 101
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vk:I

    .line 103
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/internal/R$layout;->action_bar_tabbar:I

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    .line 104
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->b(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/internal/R$layout;->action_bar_tab:I

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    .line 351
    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->b(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V

    .line 353
    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 358
    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 360
    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vl:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez p2, :cond_1

    .line 361
    new-instance p2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {p2, p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vl:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 363
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vl:Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :goto_0
    return-object v0
.end method

.method private bO()V
    .locals 4

    .line 244
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->bQ()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    new-instance v2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vp:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    return-void
.end method

.method private bP()Z
    .locals 5

    .line 265
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 266
    return v1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 273
    return v1
.end method

.method private bQ()Landroid/widget/Spinner;
    .locals 4

    .line 295
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-object v0
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vr:Z

    if-eqz v0, :cond_1

    .line 120
    nop

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    nop

    .line 124
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->b(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 385
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 386
    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-eqz p2, :cond_0

    .line 387
    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 389
    :cond_0
    if-eqz p3, :cond_1

    .line 390
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 391
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    .line 393
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    if-eqz p1, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 396
    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->b(Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 374
    :cond_0
    if-eqz p2, :cond_1

    .line 375
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 376
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    .line 378
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    if-eqz p1, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 381
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 317
    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    .line 328
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 134
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 135
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vq:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vq:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vs:F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vq:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    :cond_0
    return-void
.end method

.method public getTabIndicatorPosition()F
    .locals 1

    .line 200
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vs:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 333
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 334
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 309
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vk:I

    .line 310
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 342
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 343
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vi:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 346
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 454
    check-cast p2, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    .line 455
    invoke-virtual {p2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->select()V

    .line 456
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 143
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 145
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vp:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vp:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    .line 155
    move v3, v1

    goto :goto_0

    .line 154
    :cond_0
    nop

    .line 155
    move v3, v0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 157
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 158
    if-le v4, v1, :cond_3

    if-eq p2, v2, :cond_1

    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_3

    .line 160
    :cond_1
    const/4 p2, 0x2

    if-le v4, p2, :cond_2

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vj:I

    goto :goto_1

    .line 163
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vj:I

    .line 165
    :goto_1
    iget p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vj:I

    iget v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vk:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vj:I

    goto :goto_2

    .line 167
    :cond_3
    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vj:I

    .line 170
    :goto_2
    iget p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 172
    if-nez v3, :cond_4

    iget-boolean v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    if-eqz v2, :cond_4

    goto :goto_3

    .line 174
    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 176
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 177
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 178
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->bO()V

    goto :goto_4

    .line 180
    :cond_5
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->bP()Z

    goto :goto_4

    .line 183
    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->bP()Z

    .line 186
    :goto_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 188
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result p1

    .line 190
    if-eqz v3, :cond_7

    if-eq v0, p1, :cond_7

    .line 192
    iget p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vp:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 194
    :cond_7
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 494
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    .line 461
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    .line 469
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(I)V

    .line 471
    iget-boolean v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vu:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    sub-int/2addr v1, p1

    .line 472
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 473
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    .line 474
    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ScrollingTabTextView;

    .line 475
    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabTextView;

    .line 477
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 479
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 480
    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    if-ge p1, v3, :cond_1

    goto :goto_1

    .line 484
    :cond_1
    :goto_0
    move v2, v4

    goto :goto_1

    .line 482
    :cond_2
    iget v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    if-le p1, v3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_0

    .line 484
    :goto_1
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    .line 485
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V

    .line 488
    :cond_4
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vt:I

    .line 489
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 444
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 450
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 434
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 437
    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    if-eqz p1, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 440
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    .line 241
    return-void
.end method

.method public setBadgeVisibility(IZ)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-static {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->a(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;

    move-result-object p1

    .line 413
    if-eqz p1, :cond_2

    .line 414
    if-eqz p2, :cond_1

    .line 415
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 417
    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :cond_2
    :goto_0
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 291
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 292
    return-void
.end method

.method public setEmbeded(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vu:Z

    .line 110
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 111
    return-void
.end method

.method public setTabIndicatorPosition(I)V
    .locals 1

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIndicatorPosition(IF)V

    .line 208
    return-void
.end method

.method public setTabIndicatorPosition(IF)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vq:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 222
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 224
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vq:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vs:F

    .line 226
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->invalidate()V

    .line 228
    :cond_1
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 277
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vp:I

    .line 278
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 279
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 280
    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 281
    if-ne v2, p1, :cond_0

    .line 282
    const/4 v4, 0x1

    goto :goto_1

    .line 281
    :cond_0
    nop

    .line 282
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 283
    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 279
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_2
    return-void
.end method

.method public setTextAppearance(II)V
    .locals 1

    .line 423
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-static {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->b(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    .line 427
    if-eqz p1, :cond_1

    .line 428
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 430
    :cond_1
    return-void

    .line 424
    :cond_2
    :goto_0
    return-void
.end method

.method public updateTab(I)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 400
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vn:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 403
    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->vo:Z

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 406
    :cond_1
    return-void
.end method
