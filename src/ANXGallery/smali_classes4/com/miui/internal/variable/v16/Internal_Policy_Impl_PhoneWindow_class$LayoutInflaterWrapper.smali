.class Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
.super Landroid/view/LayoutInflater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutInflaterWrapper"
.end annotation


# static fields
.field private static final me:Lmiui/reflect/Field;

.field private static final mf:Ljava/lang/reflect/Field;


# instance fields
.field private mc:Landroid/view/LayoutInflater;

.field private md:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mContext"

    const-string v2, "Landroid/content/Context;"

    .line 51
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->me:Lmiui/reflect/Field;

    .line 53
    invoke-static {}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->aI()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTitle"

    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mf:Ljava/lang/reflect/Field;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->me:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mc:Landroid/view/LayoutInflater;

    .line 58
    iput-object p2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->md:Landroid/view/Window;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)Landroid/view/LayoutInflater;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mc:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 89
    sget v0, Lmiui/R$id;->status_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 90
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 92
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->l(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    .line 108
    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x10102ce

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    sget v3, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 112
    sget v4, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 114
    sget v5, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    sget v7, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v7}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    sget v6, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 126
    sget v6, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 128
    sget v7, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    and-int/lit8 v7, v5, 0x8

    const/4 v8, 0x4

    if-nez v7, :cond_1

    .line 132
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    return-void

    .line 138
    :cond_1
    nop

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    if-eqz v4, :cond_2

    and-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_2

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 142
    invoke-virtual {p2, v2, v4, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    const/16 v4, 0x11

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 149
    :goto_0
    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    and-int/lit8 p2, v5, 0x4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    if-eqz v3, :cond_4

    .line 155
    invoke-virtual {v6, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_4
    nop

    .line 161
    :try_start_0
    sget-object p1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mf:Ljava/lang/reflect/Field;

    iget-object p2, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->md:Landroid/view/Window;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_2

    .line 162
    :catch_0
    move-exception p1

    .line 165
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_5

    .line 166
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_5
    return-void
.end method

.method private l(Landroid/content/Context;)I
    .locals 4

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/internal/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mc:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    iget-object v1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->md:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;)V

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->md:Landroid/view/Window;

    invoke-static {p1}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mc:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    sget p3, Lcom/miui/internal/R$layout;->screen_action_bar:I

    if-eq p1, p3, :cond_2

    sget p3, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    if-eq p1, p3, :cond_2

    sget p3, Lcom/miui/internal/R$layout;->screen_simple:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p3, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->md:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 81
    invoke-direct {p0, p3, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    sget v0, Lcom/miui/internal/R$layout;->starting_window_simple:I

    if-ne p1, v0, :cond_1

    .line 83
    invoke-direct {p0, p3, p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    :cond_1
    return-object p2

    .line 76
    :cond_2
    :goto_0
    return-object p2
.end method
