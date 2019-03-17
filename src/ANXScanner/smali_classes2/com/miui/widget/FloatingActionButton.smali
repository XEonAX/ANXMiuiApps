.class public Lmiui/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;
    }
.end annotation


# static fields
.field private static final Tg:I = 0xd000000

.field private static final Th:F = 0.0f

.field private static final Ti:F = 5.45f

.field private static final Tj:F = 5.45f

.field private static final Tk:I = 0x19


# instance fields
.field private final Tl:I

.field private final Tm:I

.field private final Tn:I

.field private final To:Z

.field private Tp:Landroid/graphics/drawable/Drawable;

.field private Tq:I

.field private Tr:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 67
    const/4 v1, 0x0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lmiui/widget/FloatingActionButton;->Tm:I

    .line 68
    const v1, 0x40ae6666    # 5.45f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/FloatingActionButton;->Tn:I

    .line 69
    iput v0, p0, Lmiui/widget/FloatingActionButton;->Tl:I

    .line 71
    sget-object v0, Lmiui/R$styleable;->FloatingActionButton:[I

    sget v1, Lmiui/R$style;->Widget_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    sget p2, Lmiui/R$styleable;->FloatingActionButton_fabShadowEnabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/FloatingActionButton;->To:Z

    .line 76
    sget p2, Lmiui/R$styleable;->FloatingActionButton_fabColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    # .line 77
    # sget p2, Lmiui/R$styleable;->FloatingActionButton_fabColor:I

    # .line 79
    # invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    # move-result-object p3

    # sget v0, Lmiui/R$attr;->colorAccent:I

    # .line 78
    # invoke-static {p3, v0}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    # move-result p3

    # .line 77
    # invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    # move-result p2
    const p2, 0xff0000

    iput p2, p0, Lmiui/widget/FloatingActionButton;->Tq:I

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eQ()V

    .line 84
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eT()V

    .line 85
    return-void
.end method

.method private aq(I)I
    .locals 3

    .line 170
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 171
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 173
    const/16 v2, 0x19

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private eQ()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 102
    nop

    .line 103
    invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$attr;->actionButtonMainBackground:I

    .line 102
    invoke-static {v0, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iput-object v0, p0, Lmiui/widget/FloatingActionButton;->Tp:Landroid/graphics/drawable/Drawable;

    .line 107
    iput-boolean v1, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    .line 108
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Tp:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eS()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eR()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_0
    goto :goto_1

    .line 115
    :cond_2
    iput-boolean v1, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    .line 117
    :goto_1
    return-void
.end method

.method private eR()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 120
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Tp:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 121
    nop

    .line 122
    # invoke-virtual {p0}, Lmiui/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    # move-result-object v0

    # sget v1, Lmiui/R$attr;->colorAccent:I

    # .line 121
    # invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    # move-result v0
    
    const v0, 0xff00

    iput v0, p0, Lmiui/widget/FloatingActionButton;->Tq:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    .line 125
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eS()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/FloatingActionButton;->Tp:Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_0
    iget-object v0, p0, Lmiui/widget/FloatingActionButton;->Tp:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private eS()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 132
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v1, p0}, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 133
    iget-boolean v1, p0, Lmiui/widget/FloatingActionButton;->To:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 134
    iget v1, p0, Lmiui/widget/FloatingActionButton;->Tq:I

    invoke-direct {p0, v1}, Lmiui/widget/FloatingActionButton;->aq(I)I

    move-result v1

    .line 135
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 137
    move v4, v3

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 137
    move v4, v2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiui/widget/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lmiui/widget/FloatingActionButton;->Tl:I

    int-to-float v5, v5

    iget v6, p0, Lmiui/widget/FloatingActionButton;->Tm:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/widget/FloatingActionButton;->Tn:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 142
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Lmiui/widget/FloatingActionButton;->Tq:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;

    invoke-direct {v4, p0}, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;-><init>(Landroid/view/View;)V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 145
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v5, 0xd000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    invoke-direct {v4, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 148
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 149
    sget-object v2, Lmiui/widget/FloatingActionButton;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    sget-object v2, Lmiui/widget/FloatingActionButton;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    sget-object v2, Lmiui/widget/FloatingActionButton;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 152
    return-object v1
.end method

.method private eT()V
    .locals 6

    .line 156
    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->To:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    if-eqz v0, :cond_0

    .line 157
    iget v0, p0, Lmiui/widget/FloatingActionButton;->Tl:I

    iget v2, p0, Lmiui/widget/FloatingActionButton;->Tm:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    iget v2, p0, Lmiui/widget/FloatingActionButton;->Tl:I

    iget v3, p0, Lmiui/widget/FloatingActionButton;->Tn:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 159
    iget v3, p0, Lmiui/widget/FloatingActionButton;->Tl:I

    iget v4, p0, Lmiui/widget/FloatingActionButton;->Tm:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 160
    iget v4, p0, Lmiui/widget/FloatingActionButton;->Tl:I

    iget v5, p0, Lmiui/widget/FloatingActionButton;->Tn:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 162
    invoke-virtual {p0, v0, v2, v3, v1}, Lmiui/widget/FloatingActionButton;->setPadding(IIII)V

    .line 163
    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Lmiui/widget/FloatingActionButton;->setPadding(IIII)V

    .line 167
    :goto_0
    return-void
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    .line 179
    nop

    .line 180
    if-nez p1, :cond_0

    .line 181
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eR()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eT()V

    .line 186
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/FloatingActionButton;->Tq:I

    if-eq v0, p1, :cond_1

    .line 202
    :cond_0
    iput p1, p0, Lmiui/widget/FloatingActionButton;->Tq:I

    .line 203
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eS()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eT()V

    .line 206
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    .line 207
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/FloatingActionButton;->Tr:Z

    .line 191
    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eR()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lmiui/widget/FloatingActionButton;->eT()V

    .line 197
    return-void
.end method
