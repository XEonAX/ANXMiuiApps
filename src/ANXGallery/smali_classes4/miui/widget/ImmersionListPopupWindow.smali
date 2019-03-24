.class public Lmiui/widget/ImmersionListPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmersionListPopupWindow"

.field private static final TE:F = 8.0f

.field private static final TF:F = 8.0f


# instance fields
.field private TI:Landroid/widget/FrameLayout;

.field private TP:Z

.field private TQ:Landroid/widget/AdapterView$OnItemClickListener;

.field private TS:I

.field private TU:I

.field private TX:Z

.field private TY:I

.field private Ua:Landroid/view/WindowManager;

.field private Ub:Landroid/database/DataSetObserver;

.field private cv:Landroid/widget/ListView;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private final ph:Landroid/graphics/Rect;

.field private final sW:I

.field private final sX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/ImmersionListPopupWindow$1;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    .line 72
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    sget v1, Lcom/miui/internal/R$dimen;->list_menu_dialog_maximum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TS:I

    .line 76
    sget v1, Lcom/miui/internal/R$dimen;->list_menu_dialog_minimum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TU:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 79
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->sW:I

    .line 80
    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->sX:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->setFocusable(Z)V

    .line 85
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    .line 86
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$2;

    invoke-direct {v1, p0}, Lmiui/widget/ImmersionListPopupWindow$2;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lmiui/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 95
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 100
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 102
    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    .line 104
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_1

    .line 106
    sget v0, Lcom/miui/internal/R$style;->Animation_PopupWindow_ImmersionMenu:I

    goto :goto_0

    .line 107
    :cond_1
    nop

    .line 105
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->setAnimationStyle(I)V

    .line 108
    return-void
.end method

.method private static a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9

    .line 230
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 235
    nop

    .line 236
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 237
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 238
    const/4 v4, 0x0

    move-object v6, p1

    move p1, v0

    move v5, p1

    move-object v7, v4

    :goto_0
    if-ge v0, v3, :cond_4

    .line 239
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 240
    if-eq v8, p1, :cond_0

    .line 241
    nop

    .line 242
    nop

    .line 244
    move-object v7, v4

    move p1, v8

    :cond_0
    if-nez v6, :cond_1

    .line 245
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 247
    :cond_1
    invoke-interface {p0, v0, v7, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 248
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 249
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 250
    if-lt v8, p3, :cond_2

    .line 251
    return p3

    .line 252
    :cond_2
    if-le v8, v5, :cond_3

    .line 253
    nop

    .line 238
    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_4
    return v5
.end method

.method static synthetic a(Lmiui/widget/ImmersionListPopupWindow;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eU()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/ImmersionListPopupWindow;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmiui/widget/ImmersionListPopupWindow;->TX:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;
    .locals 0

    .line 34
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->cv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->TQ:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private eU()I
    .locals 4

    .line 174
    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TX:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->TS:I

    invoke-static {v0, v1, v2, v3}, Lmiui/widget/ImmersionListPopupWindow;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TY:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TX:Z

    .line 179
    :cond_0
    iget v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TY:I

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TU:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 214
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Ua:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Ua:Landroid/view/WindowManager;

    .line 218
    :cond_0
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Ua:Landroid/view/WindowManager;

    return-object v0
.end method

.method private p(Landroid/view/View;)V
    .locals 4

    .line 183
    invoke-static {p1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TP:Z

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->sX:I

    add-int/2addr v0, v1

    .line 185
    nop

    .line 186
    iget-boolean v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->sW:I

    sub-int/2addr v1, v3

    sub-int/2addr v2, v1

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->ph:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->sW:I

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 191
    :goto_0
    const v1, 0x800035

    invoke-virtual {p0, p1, v2, v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 192
    return-void
.end method


# virtual methods
.method protected createDefaultFadeInAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDefaultFadeOutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss(Z)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    .line 288
    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eU()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;->setWidth(I)V

    .line 202
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->p(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method protected getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 129
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    :cond_0
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 115
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 118
    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    .line 126
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->TQ:Landroid/widget/AdapterView$OnItemClickListener;

    .line 122
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .line 133
    if-nez p1, :cond_0

    .line 134
    const-string p1, "ImmersionListPopupWindow"

    const-string p2, "show: anchor is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    const v0, 0x102000a

    if-nez p2, :cond_1

    .line 139
    new-instance p2, Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    .line 140
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 143
    :cond_1
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    if-eq p2, v1, :cond_3

    .line 144
    :cond_2
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 145
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->TI:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    const/4 v1, -0x1

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    const/4 v1, -0x2

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 149
    const/16 v1, 0x10

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    :cond_3
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cv:Landroid/widget/ListView;

    .line 153
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cv:Landroid/widget/ListView;

    if-nez p2, :cond_4

    .line 154
    const-string p1, "ImmersionListPopupWindow"

    const-string p2, "list not found"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 157
    :cond_4
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cv:Landroid/widget/ListView;

    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$3;

    invoke-direct {v0, p0}, Lmiui/widget/ImmersionListPopupWindow$3;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cv:Landroid/widget/ListView;

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eU()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;->setWidth(I)V

    .line 169
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/view/inputmethod/InputMethodHelper;->getManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 170
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->p(Landroid/view/View;)V

    .line 171
    return-void
.end method
