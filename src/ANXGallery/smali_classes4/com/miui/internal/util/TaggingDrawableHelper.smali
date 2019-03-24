.class public Lcom/miui/internal/util/TaggingDrawableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field private static final jC:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

.field static jE:[I

.field private static final jF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    .line 39
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    .line 41
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lmiui/R$attr;->children_sequence_state:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jE:[I

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;IZ)I
    .locals 3

    .line 68
    instance-of v0, p0, Lmiui/view/OnTaggingDrawableState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p0

    check-cast v0, Lmiui/view/OnTaggingDrawableState;

    .line 70
    invoke-interface {v0, p0, p1, p2, v2}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    .line 71
    invoke-interface {v0, p0, p1, p2, v1}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result p1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0, p1, p2, v2}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    .line 74
    invoke-static {p0, p1, p2, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result p1

    .line 77
    :goto_0
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    .line 78
    if-eqz v2, :cond_6

    .line 79
    if-eqz p1, :cond_2

    .line 80
    if-eqz p2, :cond_1

    sget p0, Lmiui/R$attr;->state_middle_h:I

    goto :goto_1

    :cond_1
    sget p0, Lmiui/R$attr;->state_middle_v:I

    goto :goto_1

    .line 82
    :cond_2
    if-eqz p0, :cond_4

    .line 83
    if-eqz p2, :cond_3

    sget p0, Lmiui/R$attr;->state_first_h:I

    goto :goto_1

    :cond_3
    sget p0, Lmiui/R$attr;->state_last_v:I

    goto :goto_1

    .line 85
    :cond_4
    if-eqz p2, :cond_5

    sget p0, Lmiui/R$attr;->state_last_h:I

    goto :goto_1

    :cond_5
    sget p0, Lmiui/R$attr;->state_last_v:I

    goto :goto_1

    .line 89
    :cond_6
    if-eqz p1, :cond_a

    .line 90
    if-eqz p0, :cond_8

    .line 91
    if-eqz p2, :cond_7

    sget p0, Lmiui/R$attr;->state_last_h:I

    goto :goto_1

    :cond_7
    sget p0, Lmiui/R$attr;->state_first_v:I

    goto :goto_1

    .line 93
    :cond_8
    if-eqz p2, :cond_9

    sget p0, Lmiui/R$attr;->state_first_h:I

    goto :goto_1

    :cond_9
    sget p0, Lmiui/R$attr;->state_first_v:I

    goto :goto_1

    .line 96
    :cond_a
    if-eqz p2, :cond_b

    sget p0, Lmiui/R$attr;->state_single_h:I

    goto :goto_1

    :cond_b
    sget p0, Lmiui/R$attr;->state_single_v:I

    .line 99
    :goto_1
    return p0
.end method

.method private static a(Landroid/view/View;II)V
    .locals 3

    .line 194
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    .line 195
    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v1, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v1

    .line 196
    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    .line 197
    :cond_0
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 198
    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0, p2}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eq v1, p1, :cond_2

    .line 207
    :cond_1
    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0}, Lcom/miui/internal/variable/Android_View_View_class;->relayout(Landroid/view/View;)V

    .line 210
    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 175
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 181
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 182
    return v1

    .line 185
    :cond_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    .line 189
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    .line 190
    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 186
    :cond_4
    :goto_0
    return v0

    .line 176
    :cond_5
    :goto_1
    return v0
.end method

.method private static b(Landroid/view/ViewGroup;IZ)Z
    .locals 7

    .line 103
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 104
    move v2, v1

    goto :goto_0

    .line 103
    :cond_0
    nop

    .line 104
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    nop

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 106
    const/4 v3, 0x0

    .line 107
    :cond_2
    add-int/2addr p1, v2

    if-eq p1, v0, :cond_3

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 110
    nop

    .line 111
    nop

    .line 114
    move-object v3, v4

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    invoke-static {v3, p2}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->jE:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 247
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 248
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    .line 250
    return-void
.end method

.method public static initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6

    .line 253
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->hasInitViewSequenceStates(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setHasInitViewSequenceStates(Landroid/view/View;Z)V

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->DrawableStates:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 259
    sget-object v0, Lmiui/R$styleable;->DrawableStates:[I

    const/4 v1, 0x0

    array-length v0, v0

    .line 260
    sget v2, Lmiui/R$attr;->state_single_h:I

    .line 261
    sget v3, Lmiui/R$attr;->state_single_v:I

    .line 262
    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 263
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 264
    sget v5, Lmiui/R$styleable;->DrawableStates_state_first_h:I

    if-eq v2, v5, :cond_3

    sget v5, Lmiui/R$styleable;->DrawableStates_state_middle_h:I

    if-eq v2, v5, :cond_3

    sget v5, Lmiui/R$styleable;->DrawableStates_state_last_h:I

    if-eq v2, v5, :cond_3

    sget v5, Lmiui/R$styleable;->DrawableStates_state_single_h:I

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    sget v5, Lmiui/R$styleable;->DrawableStates_state_first_v:I

    if-eq v2, v5, :cond_2

    sget v5, Lmiui/R$styleable;->DrawableStates_state_middle_v:I

    if-eq v2, v5, :cond_2

    sget v5, Lmiui/R$styleable;->DrawableStates_state_last_v:I

    if-eq v2, v5, :cond_2

    sget v5, Lmiui/R$styleable;->DrawableStates_state_single_v:I

    if-ne v2, v5, :cond_4

    .line 273
    :cond_2
    sget-object v4, Lmiui/R$styleable;->DrawableStates:[I

    aget v4, v4, v2

    goto :goto_2

    .line 268
    :cond_3
    :goto_1
    sget-object v3, Lmiui/R$styleable;->DrawableStates:[I

    aget v3, v3, v2

    .line 262
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0, v3}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 279
    sget-object p1, Lcom/miui/internal/util/TaggingDrawableHelper;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p1, p0, v4}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 280
    return-void
.end method

.method public static onDrawableStateChange(Landroid/view/View;)V
    .locals 4

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 218
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 219
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_4

    .line 220
    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    .line 221
    sget-object v1, Lcom/miui/internal/util/TaggingDrawableHelper;->jF:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 222
    if-nez v1, :cond_1

    .line 223
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 224
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->jF:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 226
    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 229
    :cond_2
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v2, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 235
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 231
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 232
    nop

    .line 243
    :cond_4
    :goto_0
    return-void

    .line 215
    :cond_5
    :goto_1
    return-void
.end method

.method private static sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z
    .locals 6

    .line 118
    nop

    .line 119
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 120
    check-cast p0, Landroid/widget/AbsListView;

    .line 121
    instance-of v0, p0, Landroid/widget/GridView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    goto :goto_0

    .line 122
    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 123
    if-eqz p2, :cond_3

    .line 124
    rem-int p2, p1, v0

    .line 125
    if-eq v0, v2, :cond_2

    .line 126
    if-eqz p3, :cond_1

    .line 127
    add-int/2addr p2, v2

    if-ge p2, v0, :cond_2

    add-int/lit8 p2, p1, 0x1

    if-ge p2, v3, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    goto :goto_1

    .line 131
    :cond_1
    sub-int/2addr p2, v2

    if-ltz p2, :cond_2

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    .line 136
    :cond_2
    :goto_1
    goto :goto_4

    .line 137
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    .line 138
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 139
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    .line 141
    if-eqz p3, :cond_6

    .line 142
    add-int/2addr v0, p1

    if-ge v0, v3, :cond_4

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    .line 155
    :goto_2
    move v1, p0

    goto :goto_4

    .line 144
    :cond_4
    add-int/2addr v0, p2

    if-ge v0, v5, :cond_8

    .line 145
    add-int/2addr p1, p2

    invoke-interface {v4, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p0

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    if-ne p0, p1, :cond_5

    .line 155
    :goto_3
    move v1, v2

    goto :goto_4

    .line 145
    :cond_5
    goto :goto_4

    .line 148
    :cond_6
    sub-int p3, p1, v0

    if-ltz p3, :cond_7

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    goto :goto_2

    .line 150
    :cond_7
    add-int/2addr p3, p2

    if-ltz p3, :cond_8

    .line 151
    add-int/2addr p1, p2

    invoke-interface {v4, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p0

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    if-ne p0, p1, :cond_8

    goto :goto_3

    .line 155
    :cond_8
    :goto_4
    goto :goto_6

    .line 156
    :cond_9
    nop

    .line 157
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 158
    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 159
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    .line 160
    if-eqz p2, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    if-nez p2, :cond_c

    if-ne v3, v2, :cond_c

    .line 161
    :cond_b
    goto :goto_5

    .line 167
    :cond_c
    move v2, v1

    :goto_5
    if-nez v2, :cond_d

    if-nez v0, :cond_e

    if-eqz p2, :cond_e

    .line 168
    :cond_d
    invoke-static {p0, p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->b(Landroid/view/ViewGroup;IZ)Z

    move-result v1

    .line 171
    :cond_e
    :goto_6
    return v1
.end method

.method public static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .locals 6

    .line 48
    sget-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 54
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 55
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 57
    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/ViewGroup;IZ)I

    move-result v4

    .line 58
    invoke-static {p0, v2, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/ViewGroup;IZ)I

    move-result v5

    .line 59
    invoke-static {v3, v4, v5}, Lcom/miui/internal/util/TaggingDrawableHelper;->a(Landroid/view/View;II)V

    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method
