.class public Lcom/miui/internal/widget/GroupButton;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final uo:[I

.field private static final uq:[I

.field private static final ur:[I

.field private static final us:[I

.field private static final ut:[I

.field private static final uu:[I

.field private static final uv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_first_v:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->uo:[I

    .line 22
    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_middle_v:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->uq:[I

    .line 26
    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_last_v:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->ur:[I

    .line 30
    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_first_h:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->us:[I

    .line 34
    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_middle_h:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->ut:[I

    .line 38
    new-array v1, v0, [I

    sget v2, Lcom/miui/internal/R$attr;->state_last_h:I

    aput v2, v1, v3

    sput-object v1, Lcom/miui/internal/widget/GroupButton;->uu:[I

    .line 42
    new-array v0, v0, [I

    sget v1, Lcom/miui/internal/R$attr;->state_single_h:I

    aput v1, v0, v3

    sput-object v0, Lcom/miui/internal/widget/GroupButton;->uv:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 10

    .line 60
    invoke-virtual {p0}, Lcom/miui/internal/widget/GroupButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    if-nez v0, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    .line 66
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v4

    move v8, v7

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 71
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    if-ge v5, v2, :cond_1

    .line 74
    nop

    .line 76
    move v7, v3

    :cond_1
    if-le v5, v2, :cond_2

    .line 77
    nop

    .line 70
    move v8, v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_3
    if-ne v6, v4, :cond_4

    .line 82
    move v3, v4

    goto :goto_1

    .line 81
    :cond_4
    nop

    .line 82
    :goto_1
    if-ne v1, v4, :cond_8

    .line 83
    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 84
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->uv:[I

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    .line 85
    if-nez v3, :cond_7

    .line 86
    if-eqz v7, :cond_5

    .line 87
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->uo:[I

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_2

    .line 88
    :cond_5
    if-eqz v8, :cond_6

    .line 89
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->ur:[I

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_2

    .line 91
    :cond_6
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->uq:[I

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    .line 94
    :cond_7
    :goto_2
    return-object p1

    .line 96
    :cond_8
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 97
    add-int/2addr p1, v4

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 98
    if-eqz v3, :cond_9

    .line 99
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->uv:[I

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_5

    .line 100
    :cond_9
    if-eqz v7, :cond_b

    .line 101
    if-eqz v0, :cond_a

    sget-object v0, Lcom/miui/internal/widget/GroupButton;->uu:[I

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->us:[I

    :goto_3
    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_5

    .line 102
    :cond_b
    if-eqz v8, :cond_d

    .line 103
    if-eqz v0, :cond_c

    sget-object v0, Lcom/miui/internal/widget/GroupButton;->us:[I

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->uu:[I

    :goto_4
    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    goto :goto_5

    .line 105
    :cond_d
    sget-object v0, Lcom/miui/internal/widget/GroupButton;->ut:[I

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GroupButton;->mergeDrawableStates([I[I)[I

    .line 107
    :goto_5
    return-object p1

    .line 110
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method
