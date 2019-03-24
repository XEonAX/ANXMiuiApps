.class public Lmiui/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private Tb:Z

.field private Tc:Z

.field private Td:Lmiui/widget/FilterSortView;

.field private sO:Landroid/widget/ImageView;

.field private vy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->filter_sort_tab_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->vy:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/miui/internal/R$id;->arrow:I

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sO:Landroid/widget/ImageView;

    .line 142
    if-eqz p2, :cond_0

    .line 143
    sget-object v0, Lcom/miui/internal/R$styleable;->FilterSortView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 144
    sget p2, Lcom/miui/internal/R$styleable;->FilterSortView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 145
    sget p3, Lcom/miui/internal/R$styleable;->FilterSortView_descending:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 146
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct {p0, p2, p3}, Lmiui/widget/FilterSortView$TabView;->a(Ljava/lang/CharSequence;Z)V

    .line 150
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 153
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setGravity(I)V

    .line 154
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->filterSortTabViewBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-direct {p0, p2}, Lmiui/widget/FilterSortView$TabView;->w(Z)V

    .line 165
    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->v(Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->Tb:Z

    return p0
.end method

.method static synthetic b(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lmiui/widget/FilterSortView$TabView;->w(Z)V

    return-void
.end method

.method static synthetic b(Lmiui/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lmiui/widget/FilterSortView$TabView;->Tc:Z

    return p0
.end method

.method private v(Z)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lmiui/widget/FilterSortView$TabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiui/widget/FilterSortView;

    iput-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Td:Lmiui/widget/FilterSortView;

    .line 174
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Td:Lmiui/widget/FilterSortView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->Td:Lmiui/widget/FilterSortView;

    invoke-virtual {v0}, Lmiui/widget/FilterSortView;->getChildCount()I

    move-result v0

    .line 176
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 177
    iget-object v3, p0, Lmiui/widget/FilterSortView$TabView;->Td:Lmiui/widget/FilterSortView;

    invoke-virtual {v3, v2}, Lmiui/widget/FilterSortView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/FilterSortView$TabView;

    .line 178
    if-eq v3, p0, :cond_0

    iget-boolean v4, v3, Lmiui/widget/FilterSortView$TabView;->Tb:Z

    if-eqz v4, :cond_0

    .line 179
    invoke-direct {v3, v1}, Lmiui/widget/FilterSortView$TabView;->v(Z)V

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->Tb:Z

    .line 185
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 186
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 187
    return-void
.end method

.method private w(Z)V
    .locals 1

    .line 195
    iput-boolean p1, p0, Lmiui/widget/FilterSortView$TabView;->Tc:Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lmiui/widget/FilterSortView$TabView;->sO:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lmiui/widget/FilterSortView$TabView;->sO:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 201
    :goto_0
    return-void
.end method


# virtual methods
.method public isDescending()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lmiui/widget/FilterSortView$TabView;->Tc:Z

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 214
    new-instance v0, Lmiui/widget/FilterSortView$TabView$1;

    invoke-direct {v0, p0, p1}, Lmiui/widget/FilterSortView$TabView$1;-><init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method
