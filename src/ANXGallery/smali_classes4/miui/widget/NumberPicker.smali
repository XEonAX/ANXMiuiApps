.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiui/widget/NumberPicker$CustomEditText;,
        Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiui/widget/NumberPicker$SetSelectionCommand;,
        Lmiui/widget/NumberPicker$PressedStateHelper;,
        Lmiui/widget/NumberPicker$InputTextFilter;,
        Lmiui/widget/NumberPicker$Formatter;,
        Lmiui/widget/NumberPicker$OnScrollListener;,
        Lmiui/widget/NumberPicker$OnValueChangeListener;,
        Lmiui/widget/NumberPicker$SoundPlayHandler;,
        Lmiui/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final PRESSED_STATE_SET:[I

.field private static final VB:I = 0x8

.field private static final VD:I = 0x320

.field private static final VF:I = 0x12c

.field private static final VH:F = 0.9f

.field private static final VJ:I = 0x2

.field private static final VK:I = 0x30

.field private static final VL:I

.field private static final VM:I = -0x1

.field private static final VO:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final VR:Lmiui/widget/NumberPicker$Formatter;

.field static final Vw:I = 0x5

.field private static final Vx:Ljava/lang/String; = "NumberPicker_sound_play"

.field private static final Vy:J = 0x12cL

.field private static final Vz:I = 0x2

.field private static final WZ:F = 45.0f

.field private static final Xb:I = 0xca

.field private static final Xf:[C


# instance fields
.field private NW:I

.field private VP:I

.field private VQ:I

.field private VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

.field private final VT:Landroid/widget/EditText;

.field private final VV:I

.field private final VW:I

.field private final VX:I

.field private final VY:I

.field private VZ:I

.field private WA:I

.field private WB:Z

.field private final WC:Z

.field private final WD:I

.field private WE:Z

.field private WG:Z

.field private WH:I

.field private WI:I

.field private WJ:I

.field private WK:Z

.field private WL:Z

.field private WM:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final WN:Lmiui/widget/NumberPicker$PressedStateHelper;

.field private WO:I

.field private WP:Landroid/graphics/Paint;

.field private WQ:I

.field private WR:F

.field private WT:I

.field private WU:I

.field private WV:I

.field private WW:I

.field private WX:I

.field private WY:F

.field private final Wa:Z

.field private Wb:I

.field private Wc:[Ljava/lang/String;

.field private Wd:I

.field private We:I

.field private Wf:I

.field private Wg:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private Wh:Lmiui/widget/NumberPicker$OnScrollListener;

.field private Wi:Lmiui/widget/NumberPicker$Formatter;

.field private Wj:J

.field private final Wk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Wl:[I

.field private final Wm:Landroid/graphics/Paint;

.field private Wn:I

.field private Wo:I

.field private Wp:I

.field private final Wq:Landroid/widget/Scroller;

.field private final Wr:Landroid/widget/Scroller;

.field private Ws:I

.field private Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

.field private Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private Ww:F

.field private Wx:J

.field private Wy:F

.field private Wz:I

.field private Xa:I

.field private Xc:Ljava/lang/CharSequence;

.field private Xd:F

.field private Xe:Ljava/lang/String;

.field private fO:I

.field private final mr:I

.field private rc:Landroid/view/VelocityTracker;

.field private final uK:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    sget v0, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    sput v0, Lmiui/widget/NumberPicker;->VL:I

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->VO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    new-instance v0, Lmiui/widget/NumberPicker$NumberFormatter;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->VR:Lmiui/widget/NumberPicker$Formatter;

    .line 515
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    .line 1994
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/NumberPicker;->Xf:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 599
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 608
    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 609
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 619
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    sget-object v0, Lmiui/widget/NumberPicker;->VO:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mr:I

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->VP:I

    .line 134
    const/4 v1, 0x2

    iput v1, p0, Lmiui/widget/NumberPicker;->VQ:I

    .line 276
    const/16 v2, 0x190

    iput v2, p0, Lmiui/widget/NumberPicker;->VZ:I

    .line 331
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->Wj:J

    .line 336
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lmiui/widget/NumberPicker;->Wk:Landroid/util/SparseArray;

    .line 341
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lmiui/widget/NumberPicker;->Wl:[I

    .line 356
    const/high16 v2, -0x80000000

    iput v2, p0, Lmiui/widget/NumberPicker;->Wo:I

    .line 447
    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/NumberPicker;->NW:I

    .line 498
    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/NumberPicker;->WO:I

    .line 565
    const/16 v4, 0x1e

    iput v4, p0, Lmiui/widget/NumberPicker;->WQ:I

    .line 569
    const/16 v4, 0x19

    iput v4, p0, Lmiui/widget/NumberPicker;->WT:I

    .line 571
    const/16 v4, 0xe

    iput v4, p0, Lmiui/widget/NumberPicker;->WU:I

    .line 573
    const/16 v4, 0xa

    iput v4, p0, Lmiui/widget/NumberPicker;->WV:I

    .line 575
    const v4, -0x49ffd

    iput v4, p0, Lmiui/widget/NumberPicker;->WW:I

    .line 576
    const/high16 v5, 0x7f000000

    iput v5, p0, Lmiui/widget/NumberPicker;->WX:I

    .line 582
    iput v4, p0, Lmiui/widget/NumberPicker;->Xa:I

    .line 588
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lmiui/widget/NumberPicker;->Xd:F

    .line 620
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 621
    cmpl-float v4, v5, v4

    if-eqz v4, :cond_0

    .line 622
    iget v4, p0, Lmiui/widget/NumberPicker;->WU:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->WU:I

    .line 623
    iget v4, p0, Lmiui/widget/NumberPicker;->WT:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->WT:I

    .line 624
    iget v4, p0, Lmiui/widget/NumberPicker;->WV:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->WV:I

    .line 625
    iget v4, p0, Lmiui/widget/NumberPicker;->VP:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->VP:I

    .line 626
    iget v4, p0, Lmiui/widget/NumberPicker;->VQ:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->VQ:I

    .line 629
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {v4, p2, v6, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 630
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    .line 631
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHighlight:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WT:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WT:I

    .line 632
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHint:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WU:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WU:I

    .line 633
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_labelTextSize:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WV:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WV:I

    .line 634
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHighlight:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WW:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WW:I

    .line 635
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHint:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WX:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WX:I

    .line 636
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_labelTextColor:I

    iget v4, p0, Lmiui/widget/NumberPicker;->Xa:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->Xa:I

    .line 637
    sget p3, Lcom/miui/internal/R$styleable;->NumberPicker_labelPadding:I

    iget v4, p0, Lmiui/widget/NumberPicker;->WQ:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/NumberPicker;->WQ:I

    .line 639
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 641
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fd()V

    .line 643
    sget p2, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    .line 645
    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    .line 647
    const/high16 p3, 0x40000000    # 2.0f

    .line 649
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 647
    invoke-static {v0, p3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 650
    iput p3, p0, Lmiui/widget/NumberPicker;->WD:I

    .line 652
    const/high16 p3, 0x42340000    # 45.0f

    mul-float/2addr p3, v5

    float-to-int p3, p3

    iput p3, p0, Lmiui/widget/NumberPicker;->VV:I

    .line 654
    iput v3, p0, Lmiui/widget/NumberPicker;->VW:I

    .line 656
    const/high16 p3, 0x434a0000    # 202.0f

    mul-float/2addr p3, v5

    float-to-int p3, p3

    iput p3, p0, Lmiui/widget/NumberPicker;->VX:I

    .line 658
    iget p3, p0, Lmiui/widget/NumberPicker;->VW:I

    if-eq p3, v3, :cond_2

    iget p3, p0, Lmiui/widget/NumberPicker;->VX:I

    if-eq p3, v3, :cond_2

    iget p3, p0, Lmiui/widget/NumberPicker;->VW:I

    iget v4, p0, Lmiui/widget/NumberPicker;->VX:I

    if-gt p3, v4, :cond_1

    goto :goto_0

    .line 660
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :cond_2
    :goto_0
    iput v3, p0, Lmiui/widget/NumberPicker;->VY:I

    .line 665
    iput v3, p0, Lmiui/widget/NumberPicker;->VZ:I

    .line 666
    iget p3, p0, Lmiui/widget/NumberPicker;->VY:I

    if-eq p3, v3, :cond_4

    iget p3, p0, Lmiui/widget/NumberPicker;->VZ:I

    if-eq p3, v3, :cond_4

    iget p3, p0, Lmiui/widget/NumberPicker;->VY:I

    iget v4, p0, Lmiui/widget/NumberPicker;->VZ:I

    if-gt p3, v4, :cond_3

    goto :goto_1

    .line 668
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 671
    :cond_4
    :goto_1
    iget p3, p0, Lmiui/widget/NumberPicker;->VZ:I

    if-ne p3, v3, :cond_5

    move p3, v0

    goto :goto_2

    :cond_5
    move p3, v2

    :goto_2
    iput-boolean p3, p0, Lmiui/widget/NumberPicker;->Wa:Z

    .line 673
    new-instance p3, Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p3, p0}, Lmiui/widget/NumberPicker$PressedStateHelper;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object p3, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    .line 680
    iget-boolean p3, p0, Lmiui/widget/NumberPicker;->WC:Z

    xor-int/2addr p3, v0

    invoke-virtual {p0, p3}, Lmiui/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 682
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v4, "layout_inflater"

    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 684
    invoke-virtual {p3, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 687
    sget p2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    .line 688
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    new-instance p3, Lmiui/widget/NumberPicker$1;

    invoke-direct {p3, p0}, Lmiui/widget/NumberPicker$1;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 698
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    new-array p3, v0, [Landroid/text/InputFilter;

    new-instance v4, Lmiui/widget/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Lmiui/widget/NumberPicker$InputTextFilter;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 702
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 703
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 705
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 706
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const p3, 0x800003

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setGravity(I)V

    .line 707
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setScaleX(F)V

    .line 708
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 709
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    iget p3, p0, Lmiui/widget/NumberPicker;->WQ:I

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->WQ:I

    iget-object v4, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 712
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 713
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->fO:I

    .line 714
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->Wz:I

    .line 715
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiui/widget/NumberPicker;->WA:I

    .line 717
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiui/widget/NumberPicker;->uK:I

    .line 720
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 721
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 722
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 723
    iget p2, p0, Lmiui/widget/NumberPicker;->WT:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 724
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 725
    iget-object p2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 726
    sget-object p3, Lmiui/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 727
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 728
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iput p1, p0, Lmiui/widget/NumberPicker;->WY:F

    .line 731
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    .line 732
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 733
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 734
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->Xa:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->WV:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 738
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    .line 739
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    .line 741
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 744
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 745
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 747
    :cond_6
    return-void
.end method

.method private N(Ljava/lang/String;)I
    .locals 2

    .line 1947
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1949
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1950
    :catch_0
    move-exception p1

    .line 1952
    goto :goto_1

    .line 1954
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1956
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1957
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1958
    iget p1, p0, Lmiui/widget/NumberPicker;->Wd:I

    add-int/2addr p1, v0

    return p1

    .line 1954
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 1968
    :catch_1
    move-exception p1

    .line 1973
    :goto_1
    iget p1, p0, Lmiui/widget/NumberPicker;->Wd:I

    return p1
.end method

.method private a(FII)F
    .locals 1

    .line 1522
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1523
    int-to-float p1, p3

    return p1

    .line 1525
    :cond_0
    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private a(FIZ)I
    .locals 1

    .line 1513
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1514
    return p2

    .line 1516
    :cond_0
    if-eqz p3, :cond_1

    neg-float p1, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_0

    .line 1517
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 1518
    :goto_0
    const p3, 0xffffff

    and-int/2addr p2, p3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->N(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 64
    iget-object p0, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->q(Landroid/view/View;)V

    return-void
.end method

.method private a(ZJ)V
    .locals 1

    .line 1887
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1888
    new-instance v0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1890
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1892
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->a(Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1893
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1894
    return-void
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 5

    .line 839
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 840
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 841
    iget p1, p0, Lmiui/widget/NumberPicker;->Wp:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Wn:I

    rem-int/2addr p1, v2

    .line 842
    iget v2, p0, Lmiui/widget/NumberPicker;->Wo:I

    sub-int/2addr v2, p1

    .line 843
    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 844
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Wn:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 845
    if-lez v2, :cond_0

    .line 846
    iget v3, p0, Lmiui/widget/NumberPicker;->Wn:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 848
    :cond_0
    iget v3, p0, Lmiui/widget/NumberPicker;->Wn:I

    add-int/2addr v2, v3

    .line 851
    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 852
    invoke-virtual {p0, p1, v1}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 853
    return v0

    .line 855
    :cond_2
    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WK:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WK:Z

    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WK:Z

    return p1
.end method

.method private au(I)V
    .locals 2

    .line 1727
    iget v0, p0, Lmiui/widget/NumberPicker;->NW:I

    if-ne v0, p1, :cond_0

    .line 1728
    return-void

    .line 1730
    :cond_0
    if-nez p1, :cond_2

    .line 1731
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Xe:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Xe:Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1732
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Xe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Xe:Ljava/lang/String;

    .line 1735
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fg()V

    .line 1737
    :cond_2
    iput p1, p0, Lmiui/widget/NumberPicker;->NW:I

    .line 1738
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wh:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1739
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wh:Lmiui/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    .line 1741
    :cond_3
    return-void
.end method

.method private av(I)I
    .locals 3

    .line 1762
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    if-le p1, v0, :cond_0

    .line 1763
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    sub-int/2addr p1, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr v1, v2

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1764
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    if-ge p1, v0, :cond_1

    .line 1765
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr v1, p1

    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1767
    :cond_1
    return p1
.end method

.method private aw(I)V
    .locals 3

    .line 1807
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Landroid/util/SparseArray;

    .line 1808
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1809
    if-eqz v1, :cond_0

    .line 1810
    return-void

    .line 1812
    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker;->Wd:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 1815
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1816
    iget v1, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int v1, p1, v1

    .line 1817
    iget-object v2, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 1818
    goto :goto_1

    .line 1819
    :cond_2
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->ax(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1813
    :cond_3
    :goto_0
    const-string v1, ""

    .line 1822
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1823
    return-void
.end method

.method private ax(I)Ljava/lang/String;
    .locals 1

    .line 1826
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wi:Lmiui/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wi:Lmiui/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private ay(I)V
    .locals 2

    .line 1874
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->sendAccessibilityEvent(I)V

    .line 1875
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ff()V

    .line 1876
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wg:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wg:Lmiui/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lmiui/widget/NumberPicker;->Wf:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    .line 1879
    :cond_0
    return-void
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 1

    .line 1711
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1712
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fq()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1713
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1715
    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->au(I)V

    goto :goto_0

    .line 1717
    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->NW:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1718
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1721
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WL:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WL:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WL:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;)I
    .locals 0

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->We:I

    return p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;I)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->av(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->n(II)V

    return-void
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->x(Z)V

    return-void
.end method

.method private c([I)V
    .locals 3

    .line 1775
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1776
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    aput v2, p1, v0

    .line 1775
    move v0, v1

    goto :goto_0

    .line 1778
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1779
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    if-le v0, v1, :cond_1

    .line 1780
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    .line 1782
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1783
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->aw(I)V

    .line 1784
    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->ax(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d([I)V
    .locals 3

    .line 1791
    const/4 v0, 0x1

    array-length v1, p1

    sub-int/2addr v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 1792
    add-int/lit8 v2, v1, -0x1

    aget v2, p1, v2

    aput v2, p1, v1

    .line 1791
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1794
    :cond_0
    aget v1, p1, v0

    sub-int/2addr v1, v0

    .line 1795
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    if-ge v1, v0, :cond_1

    .line 1796
    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    .line 1798
    :cond_1
    const/4 v0, 0x0

    aput v1, p1, v0

    .line 1799
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->aw(I)V

    .line 1800
    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->WK:Z

    return p0
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WE:Z

    return p1
.end method

.method static synthetic e(Lmiui/widget/NumberPicker;)I
    .locals 0

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->WI:I

    return p0
.end method

.method static synthetic f(Lmiui/widget/NumberPicker;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->WL:Z

    return p0
.end method

.method private fd()V
    .locals 2

    .line 804
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_0

    .line 805
    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    .line 806
    new-instance v1, Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    .line 807
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget v1, p0, Lmiui/widget/NumberPicker;->mr:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->init(I)V

    .line 809
    :cond_0
    return-void
.end method

.method private fe()V
    .locals 2

    .line 812
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget v1, p0, Lmiui/widget/NumberPicker;->mr:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->release(I)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    .line 816
    :cond_0
    return-void
.end method

.method private ff()V
    .locals 1

    .line 819
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->play()V

    .line 822
    :cond_0
    return-void
.end method

.method private fg()V
    .locals 1

    .line 825
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VS:Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->stop()V

    .line 828
    :cond_0
    return-void
.end method

.method private fh()V
    .locals 5

    .line 1233
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wa:Z

    if-nez v0, :cond_0

    .line 1234
    return-void

    .line 1236
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 1237
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->WT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1238
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1239
    const/4 v0, 0x0

    .line 1240
    :goto_0
    const/16 v1, 0x9

    if-ge v2, v1, :cond_2

    .line 1241
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1242
    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    .line 1243
    nop

    .line 1240
    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->We:I

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->ax(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1247
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    .line 1248
    goto :goto_2

    .line 1249
    :cond_3
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    array-length v1, v1

    .line 1250
    :goto_1
    if-ge v2, v1, :cond_5

    .line 1251
    iget-object v3, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 1252
    iget-object v4, p0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1253
    cmpl-float v4, v3, v0

    if-lez v4, :cond_4

    .line 1254
    nop

    .line 1250
    move v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1258
    :cond_5
    :goto_2
    iput v0, p0, Lmiui/widget/NumberPicker;->WR:F

    .line 1259
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1260
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1261
    iget v1, p0, Lmiui/widget/NumberPicker;->VZ:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    .line 1262
    iget v1, p0, Lmiui/widget/NumberPicker;->VY:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    .line 1263
    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->VZ:I

    goto :goto_3

    .line 1265
    :cond_6
    iget v0, p0, Lmiui/widget/NumberPicker;->VY:I

    iput v0, p0, Lmiui/widget/NumberPicker;->VZ:I

    .line 1268
    :cond_7
    :goto_3
    return-void
.end method

.method private fi()V
    .locals 5

    .line 1612
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wk:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1613
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:[I

    .line 1614
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1615
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lmiui/widget/NumberPicker;->Wl:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1616
    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v1

    .line 1617
    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-eqz v4, :cond_0

    .line 1618
    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->av(I)I

    move-result v3

    .line 1620
    :cond_0
    aput v3, v0, v2

    .line 1621
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->aw(I)V

    .line 1615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1623
    :cond_1
    return-void
.end method

.method private fj()V
    .locals 5

    .line 1682
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1683
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:[I

    .line 1684
    const/4 v1, 0x0

    array-length v2, v0

    iget v3, p0, Lmiui/widget/NumberPicker;->uK:I

    mul-int/2addr v2, v3

    .line 1685
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 1686
    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    .line 1687
    goto :goto_0

    .line 1689
    :cond_0
    move v1, v2

    :goto_0
    array-length v0, v0

    int-to-float v0, v0

    .line 1690
    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Wb:I

    .line 1691
    iget v0, p0, Lmiui/widget/NumberPicker;->uK:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wb:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Wn:I

    .line 1695
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1696
    iget v1, p0, Lmiui/widget/NumberPicker;->Wn:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Wo:I

    .line 1698
    iget v0, p0, Lmiui/widget/NumberPicker;->Wo:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Wp:I

    .line 1699
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1700
    return-void
.end method

.method private fk()V
    .locals 2

    .line 1703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1704
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->uK:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1705
    return-void
.end method

.method private fl()Z
    .locals 3

    .line 1855
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ax(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1856
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    iget v1, p0, Lmiui/widget/NumberPicker;->Wf:I

    iget v2, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1857
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1858
    iget v1, p0, Lmiui/widget/NumberPicker;->NW:I

    if-eqz v1, :cond_1

    .line 1859
    iput-object v0, p0, Lmiui/widget/NumberPicker;->Xe:Ljava/lang/String;

    goto :goto_1

    .line 1860
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1861
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1866
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private fling(I)V
    .locals 10

    .line 1747
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->Ws:I

    .line 1749
    if-lez p1, :cond_0

    .line 1750
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1752
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1755
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1756
    return-void
.end method

.method private fm()V
    .locals 1

    .line 1900
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1903
    :cond_0
    return-void
.end method

.method private fn()V
    .locals 3

    .line 1910
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1911
    new-instance v0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 1913
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1915
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1916
    return-void
.end method

.method private fo()V
    .locals 1

    .line 1922
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1925
    :cond_0
    return-void
.end method

.method private fp()V
    .locals 1

    .line 1931
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wu:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1934
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1937
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1938
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wv:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1940
    :cond_2
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1941
    return-void
.end method

.method private fq()Z
    .locals 7

    .line 2072
    iget v0, p0, Lmiui/widget/NumberPicker;->Wo:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wp:I

    sub-int/2addr v0, v1

    .line 2073
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2074
    iput v1, p0, Lmiui/widget/NumberPicker;->Ws:I

    .line 2075
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Wn:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 2076
    if-lez v0, :cond_0

    iget v1, p0, Lmiui/widget/NumberPicker;->Wn:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker;->Wn:I

    :goto_0
    add-int/2addr v0, v1

    .line 2078
    :cond_1
    move v5, v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2079
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 2080
    const/4 v0, 0x1

    return v0

    .line 2082
    :cond_2
    return v1
.end method

.method private fr()V
    .locals 0

    .line 2655
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 2656
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 2657
    return-void
.end method

.method static synthetic fs()[C
    .locals 1

    .line 64
    sget-object v0, Lmiui/widget/NumberPicker;->Xf:[C

    return-object v0
.end method

.method static synthetic g(Lmiui/widget/NumberPicker;)I
    .locals 0

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->WH:I

    return p0
.end method

.method static synthetic h(Lmiui/widget/NumberPicker;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lmiui/widget/NumberPicker;->Wj:J

    return-wide v0
.end method

.method private i(III)I
    .locals 1

    .line 1599
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1600
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1601
    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lmiui/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    .line 1603
    :cond_0
    return p2
.end method

.method static synthetic i(Lmiui/widget/NumberPicker;)I
    .locals 0

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->WD:I

    return p0
.end method

.method private i(IZ)V
    .locals 1

    .line 1633
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-eqz v0, :cond_0

    .line 1634
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->av(I)I

    move-result p1

    goto :goto_0

    .line 1636
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1637
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1639
    :goto_0
    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    if-ne v0, p1, :cond_1

    .line 1640
    return-void

    .line 1642
    :cond_1
    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    .line 1643
    iput p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    .line 1644
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1645
    if-eqz p2, :cond_2

    .line 1646
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ay(I)V

    .line 1648
    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1649
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1650
    return-void
.end method

.method static synthetic j(Lmiui/widget/NumberPicker;)I
    .locals 0

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->Wf:I

    return p0
.end method

.method static synthetic k(Lmiui/widget/NumberPicker;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->WB:Z

    return p0
.end method

.method static synthetic l(Lmiui/widget/NumberPicker;)I
    .locals 0

    .line 64
    iget p0, p0, Lmiui/widget/NumberPicker;->Wd:I

    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    .line 1570
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1571
    return p1

    .line 1573
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1574
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1575
    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 1577
    return p1

    .line 1583
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1581
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1579
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private n(II)V
    .locals 1

    .line 1981
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1982
    new-instance v0, Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 1984
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1986
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$SetSelectionCommand;->a(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1987
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lmiui/widget/NumberPicker$SetSelectionCommand;->b(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1988
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wt:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1989
    return-void
.end method

.method private q(Landroid/view/View;)V
    .locals 1

    .line 1830
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1831
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    goto :goto_0

    .line 1836
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->N(Ljava/lang/String;)I

    move-result p1

    .line 1837
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1839
    :goto_0
    return-void
.end method

.method private x(Z)V
    .locals 13

    .line 1660
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-eqz v0, :cond_2

    .line 1661
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    .line 1665
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->Ws:I

    .line 1666
    if-eqz p1, :cond_1

    .line 1667
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiui/widget/NumberPicker;->Wn:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1669
    :cond_1
    iget-object v7, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/NumberPicker;->Wn:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1671
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_1

    .line 1673
    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1674
    iget p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    goto :goto_1

    .line 1676
    :cond_3
    iget p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1679
    :goto_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1095
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    .line 1096
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    .line 1098
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    return-void

    .line 1102
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1103
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1104
    iget v2, p0, Lmiui/widget/NumberPicker;->Ws:I

    if-nez v2, :cond_1

    .line 1105
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->Ws:I

    .line 1107
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->Ws:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 1108
    iput v1, p0, Lmiui/widget/NumberPicker;->Ws:I

    .line 1109
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1110
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1112
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1114
    :goto_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1045
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v0, :cond_0

    .line 1046
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1049
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1050
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1052
    iget v1, p0, Lmiui/widget/NumberPicker;->WH:I

    if-ge v0, v1, :cond_1

    .line 1053
    const/4 v0, 0x3

    goto :goto_0

    .line 1054
    :cond_1
    iget v1, p0, Lmiui/widget/NumberPicker;->WI:I

    if-le v0, v1, :cond_2

    .line 1055
    const/4 v0, 0x1

    goto :goto_0

    .line 1057
    :cond_2
    const/4 v0, 0x2

    .line 1059
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1060
    nop

    .line 1061
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1062
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x80

    const/4 v6, -0x1

    const/16 v7, 0x100

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1084
    :pswitch_0
    invoke-virtual {v1, v0, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1086
    iput v6, p0, Lmiui/widget/NumberPicker;->WJ:I

    goto :goto_1

    .line 1064
    :pswitch_1
    invoke-virtual {v1, v0, v5}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1066
    iput v0, p0, Lmiui/widget/NumberPicker;->WJ:I

    .line 1067
    invoke-virtual {v1, v0, v4, v3}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1069
    goto :goto_1

    .line 1071
    :cond_3
    iget p1, p0, Lmiui/widget/NumberPicker;->WJ:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lmiui/widget/NumberPicker;->WJ:I

    if-eq p1, v6, :cond_4

    .line 1073
    iget p1, p0, Lmiui/widget/NumberPicker;->WJ:I

    invoke-virtual {v1, p1, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1076
    invoke-virtual {v1, v0, v5}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->o(II)V

    .line 1078
    iput v0, p0, Lmiui/widget/NumberPicker;->WJ:I

    .line 1079
    invoke-virtual {v1, v0, v4, v3}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1090
    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 996
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 997
    const/16 v1, 0x17

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1004
    :pswitch_0
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v1, :cond_0

    .line 1005
    goto :goto_3

    .line 1007
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 1021
    :pswitch_1
    iget v1, p0, Lmiui/widget/NumberPicker;->WO:I

    if-ne v1, v0, :cond_6

    .line 1022
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/NumberPicker;->WO:I

    .line 1023
    return v2

    .line 1009
    :pswitch_2
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->WB:Z

    const/16 v3, 0x14

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 1010
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1011
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->requestFocus()Z

    .line 1012
    iput v0, p0, Lmiui/widget/NumberPicker;->WO:I

    .line 1013
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1014
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1015
    if-ne v0, v3, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->x(Z)V

    .line 1017
    :cond_4
    return v2

    .line 1000
    :cond_5
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1001
    nop

    .line 1028
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1550
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1551
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 985
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 988
    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 991
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1033
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1034
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1040
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 751
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 753
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 754
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1539
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v0, :cond_0

    .line 1540
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1542
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WM:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1543
    new-instance v0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->WM:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1545
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WM:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1458
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1412
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1374
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1336
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1453
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1327
    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1279
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1463
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1464
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fd()V

    .line 1465
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1469
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1470
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fe()V

    .line 1471
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 1472
    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1477
    move-object/from16 v1, p1

    iget-boolean v2, v0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v2, :cond_0

    .line 1478
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1479
    return-void

    .line 1481
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v2

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v3

    .line 1483
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    const/4 v2, 0x2

    div-int/2addr v4, v2

    int-to-float v3, v4

    .line 1484
    iget v4, v0, Lmiui/widget/NumberPicker;->Wp:I

    int-to-float v4, v4

    .line 1486
    iget v5, v0, Lmiui/widget/NumberPicker;->Wo:I

    iget v6, v0, Lmiui/widget/NumberPicker;->Wn:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 1487
    iget-object v6, v0, Lmiui/widget/NumberPicker;->Wk:Landroid/util/SparseArray;

    .line 1488
    iget-object v7, v0, Lmiui/widget/NumberPicker;->Wl:[I

    .line 1489
    const/4 v8, 0x0

    move v9, v4

    move v4, v8

    :goto_0
    const/high16 v10, 0x40000000    # 2.0f

    array-length v11, v7

    if-ge v4, v11, :cond_2

    .line 1490
    aget v11, v7, v4

    .line 1491
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1492
    sub-float v12, v5, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, v0, Lmiui/widget/NumberPicker;->Wn:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 1493
    iget v13, v0, Lmiui/widget/NumberPicker;->WT:I

    iget v14, v0, Lmiui/widget/NumberPicker;->WU:I

    invoke-direct {v0, v12, v13, v14}, Lmiui/widget/NumberPicker;->a(FII)F

    move-result v13

    .line 1494
    iget-object v14, v0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1495
    iget-object v14, v0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    iget v15, v0, Lmiui/widget/NumberPicker;->WX:I

    invoke-direct {v0, v12, v15, v8}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1496
    iget v14, v0, Lmiui/widget/NumberPicker;->WU:I

    int-to-float v14, v14

    sub-float v14, v13, v14

    div-float/2addr v14, v10

    add-float/2addr v14, v9

    iget-object v15, v0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1497
    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v12, v14

    if-gez v14, :cond_1

    .line 1498
    iget-object v14, v0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    iget v15, v0, Lmiui/widget/NumberPicker;->WW:I

    const/4 v8, 0x1

    invoke-direct {v0, v12, v15, v8}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v8

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1499
    iget v8, v0, Lmiui/widget/NumberPicker;->WU:I

    int-to-float v8, v8

    sub-float/2addr v13, v8

    div-float/2addr v13, v10

    add-float/2addr v13, v9

    iget-object v8, v0, Lmiui/widget/NumberPicker;->Wm:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v13, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1501
    :cond_1
    iget v8, v0, Lmiui/widget/NumberPicker;->Wn:I

    int-to-float v8, v8

    add-float/2addr v9, v8

    .line 1489
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 1503
    :cond_2
    iget-object v4, v0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_4

    .line 1504
    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1505
    iget v4, v0, Lmiui/widget/NumberPicker;->WR:F

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    iget v4, v0, Lmiui/widget/NumberPicker;->VP:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    iget-object v6, v0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_1

    .line 1506
    :cond_3
    iget v4, v0, Lmiui/widget/NumberPicker;->WR:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, v0, Lmiui/widget/NumberPicker;->VP:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1507
    :goto_1
    iget v4, v0, Lmiui/widget/NumberPicker;->WT:I

    div-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iget v4, v0, Lmiui/widget/NumberPicker;->WV:I

    div-int/2addr v4, v2

    int-to-float v2, v4

    add-float/2addr v5, v2

    iget v2, v0, Lmiui/widget/NumberPicker;->VQ:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    .line 1508
    iget-object v2, v0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lmiui/widget/NumberPicker;->WP:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1510
    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1530
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1531
    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1532
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1533
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wf:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Wn:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1534
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Wn:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1535
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 860
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 863
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 864
    if-eqz v0, :cond_1

    .line 905
    return v1

    .line 866
    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 867
    iget-object v0, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Ww:F

    iput v0, p0, Lmiui/widget/NumberPicker;->Wy:F

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->Wx:J

    .line 870
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->WE:Z

    .line 871
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->WG:Z

    .line 873
    iget p1, p0, Lmiui/widget/NumberPicker;->Ww:F

    iget v0, p0, Lmiui/widget/NumberPicker;->WH:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_2

    .line 874
    iget p1, p0, Lmiui/widget/NumberPicker;->NW:I

    if-nez p1, :cond_3

    .line 875
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->aA(I)V

    goto :goto_0

    .line 878
    :cond_2
    iget p1, p0, Lmiui/widget/NumberPicker;->Ww:F

    iget v2, p0, Lmiui/widget/NumberPicker;->WI:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 879
    iget p1, p0, Lmiui/widget/NumberPicker;->NW:I

    if-nez p1, :cond_3

    .line 880
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->aA(I)V

    .line 885
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 886
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 887
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 888
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->au(I)V

    goto :goto_1

    .line 889
    :cond_4
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 890
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wq:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 891
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wr:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 892
    :cond_5
    iget p1, p0, Lmiui/widget/NumberPicker;->Ww:F

    iget v2, p0, Lmiui/widget/NumberPicker;->WH:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    .line 893
    nop

    .line 894
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    .line 893
    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto :goto_1

    .line 895
    :cond_6
    iget p1, p0, Lmiui/widget/NumberPicker;->Ww:F

    iget v1, p0, Lmiui/widget/NumberPicker;->WI:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    .line 896
    nop

    .line 897
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 896
    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto :goto_1

    .line 899
    :cond_7
    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->WG:Z

    .line 900
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fn()V

    .line 902
    :goto_1
    return v0

    .line 861
    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 758
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v0, :cond_0

    .line 759
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 760
    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result p2

    .line 763
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result p3

    .line 766
    iget-object p4, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 767
    iget-object p5, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    .line 768
    sub-int/2addr p2, p4

    const/4 v0, 0x2

    div-int/2addr p2, v0

    .line 769
    sub-int/2addr p3, p5

    div-int/2addr p3, v0

    .line 770
    add-int/2addr p4, p2

    .line 771
    add-int/2addr p5, p3

    .line 772
    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    .line 774
    if-eqz p1, :cond_1

    .line 776
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fj()V

    .line 777
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fk()V

    .line 778
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lmiui/widget/NumberPicker;->VV:I

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    iget p2, p0, Lmiui/widget/NumberPicker;->WD:I

    sub-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/NumberPicker;->WH:I

    .line 780
    iget p1, p0, Lmiui/widget/NumberPicker;->WH:I

    iget p2, p0, Lmiui/widget/NumberPicker;->WD:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    iget p2, p0, Lmiui/widget/NumberPicker;->VV:I

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/NumberPicker;->WI:I

    .line 783
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 787
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v0, :cond_0

    .line 788
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 789
    return-void

    .line 792
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->VZ:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 793
    iget v1, p0, Lmiui/widget/NumberPicker;->VX:I

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 794
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 796
    iget v0, p0, Lmiui/widget/NumberPicker;->VY:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiui/widget/NumberPicker;->i(III)I

    move-result p1

    .line 798
    iget v0, p0, Lmiui/widget/NumberPicker;->VW:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiui/widget/NumberPicker;->i(III)I

    move-result p2

    .line 800
    invoke-virtual {p0, p1, p2}, Lmiui/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 801
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1556
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 910
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WC:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 913
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->rc:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 914
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->rc:Landroid/view/VelocityTracker;

    .line 916
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 918
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 920
    :pswitch_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WE:Z

    if-eqz v0, :cond_2

    .line 921
    goto/16 :goto_4

    .line 923
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 924
    iget v0, p0, Lmiui/widget/NumberPicker;->NW:I

    if-eq v0, v2, :cond_4

    .line 925
    iget v0, p0, Lmiui/widget/NumberPicker;->Ww:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 926
    iget v1, p0, Lmiui/widget/NumberPicker;->fO:I

    if-le v0, v1, :cond_3

    .line 927
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fp()V

    .line 928
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->au(I)V

    .line 930
    :cond_3
    goto :goto_0

    .line 931
    :cond_4
    iget v0, p0, Lmiui/widget/NumberPicker;->Wy:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 932
    invoke-virtual {p0, v1, v0}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 933
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 935
    :goto_0
    iput p1, p0, Lmiui/widget/NumberPicker;->Wy:F

    .line 936
    goto/16 :goto_4

    .line 938
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fo()V

    .line 939
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fm()V

    .line 940
    iget-object v0, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 941
    iget-object v0, p0, Lmiui/widget/NumberPicker;->rc:Landroid/view/VelocityTracker;

    .line 942
    const/16 v3, 0x3e8

    iget v4, p0, Lmiui/widget/NumberPicker;->WA:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 943
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 944
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->WA:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 945
    int-to-float v0, v0

    iget v3, p0, Lmiui/widget/NumberPicker;->Xd:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 947
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Wz:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_6

    .line 948
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->fling(I)V

    .line 949
    invoke-direct {p0, v5}, Lmiui/widget/NumberPicker;->au(I)V

    goto :goto_3

    .line 951
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 952
    int-to-float v3, v0

    iget v4, p0, Lmiui/widget/NumberPicker;->Ww:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/widget/NumberPicker;->Wx:J

    sub-long/2addr v6, v8

    .line 954
    iget p1, p0, Lmiui/widget/NumberPicker;->fO:I

    if-gt v3, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_a

    .line 955
    iget-boolean p1, p0, Lmiui/widget/NumberPicker;->WG:Z

    if-eqz p1, :cond_7

    .line 956
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->WG:Z

    goto :goto_2

    .line 958
    :cond_7
    iget p1, p0, Lmiui/widget/NumberPicker;->Wn:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v5

    .line 960
    if-lez v0, :cond_8

    .line 961
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->x(Z)V

    .line 962
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->aB(I)V

    goto :goto_1

    .line 964
    :cond_8
    if-gez v0, :cond_9

    .line 965
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->x(Z)V

    .line 966
    iget-object p1, p0, Lmiui/widget/NumberPicker;->WN:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v5}, Lmiui/widget/NumberPicker$PressedStateHelper;->aB(I)V

    .line 969
    :cond_9
    :goto_1
    goto :goto_2

    .line 971
    :cond_a
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fq()Z

    .line 973
    :goto_2
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->au(I)V

    .line 975
    :goto_3
    iget-object p1, p0, Lmiui/widget/NumberPicker;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 976
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->rc:Landroid/view/VelocityTracker;

    .line 979
    :goto_4
    return v2

    .line 911
    :cond_b
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1118
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wl:[I

    .line 1119
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Wd:I

    if-gt v0, v2, :cond_0

    .line 1121
    iget p1, p0, Lmiui/widget/NumberPicker;->Wo:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Wp:I

    .line 1122
    return-void

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->We:I

    if-lt v0, v2, :cond_1

    .line 1126
    iget p1, p0, Lmiui/widget/NumberPicker;->Wo:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Wp:I

    .line 1127
    return-void

    .line 1129
    :cond_1
    iget v0, p0, Lmiui/widget/NumberPicker;->Wp:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiui/widget/NumberPicker;->Wp:I

    .line 1130
    :cond_2
    :goto_0
    iget p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wo:I

    sub-int/2addr p2, v0

    iget v0, p0, Lmiui/widget/NumberPicker;->Wb:I

    const/4 v2, 0x1

    if-le p2, v0, :cond_3

    .line 1131
    iget p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wn:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    .line 1132
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->d([I)V

    .line 1133
    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1134
    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    if-gt p2, v0, :cond_2

    .line 1135
    iget p2, p0, Lmiui/widget/NumberPicker;->Wo:I

    iput p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    goto :goto_0

    .line 1138
    :cond_3
    :goto_1
    iget p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wo:I

    sub-int/2addr p2, v0

    iget v0, p0, Lmiui/widget/NumberPicker;->Wb:I

    neg-int v0, v0

    if-ge p2, v0, :cond_4

    .line 1139
    iget p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wn:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    .line 1140
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->c([I)V

    .line 1141
    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1142
    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    if-lt p2, v0, :cond_3

    .line 1143
    iget p2, p0, Lmiui/widget/NumberPicker;->Wo:I

    iput p2, p0, Lmiui/widget/NumberPicker;->Wp:I

    goto :goto_1

    .line 1146
    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1425
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1426
    return-void

    .line 1428
    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    .line 1429
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Wc:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1431
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1434
    :cond_1
    iget-object p1, p0, Lmiui/widget/NumberPicker;->VT:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1436
    :goto_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1437
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1438
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 1439
    return-void
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wi:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1190
    return-void

    .line 1192
    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wi:Lmiui/widget/NumberPicker$Formatter;

    .line 1193
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1194
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1195
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 1153
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1154
    :cond_1
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Xc:Ljava/lang/CharSequence;

    .line 1155
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1157
    :cond_2
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    .line 1446
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1447
    iput p1, p0, Lmiui/widget/NumberPicker;->Xd:F

    .line 1449
    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1388
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    if-ne v0, p1, :cond_0

    .line 1389
    return-void

    .line 1391
    :cond_0
    if-ltz p1, :cond_3

    .line 1394
    iput p1, p0, Lmiui/widget/NumberPicker;->We:I

    .line 1395
    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    if-ge p1, v0, :cond_1

    .line 1396
    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    .line 1398
    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1399
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1400
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1401
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1402
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 1403
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1404
    return-void

    .line 1392
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1350
    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    if-ne v0, p1, :cond_0

    .line 1351
    return-void

    .line 1353
    :cond_0
    if-ltz p1, :cond_3

    .line 1356
    iput p1, p0, Lmiui/widget/NumberPicker;->Wd:I

    .line 1357
    iget p1, p0, Lmiui/widget/NumberPicker;->Wd:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wf:I

    if-le p1, v0, :cond_1

    .line 1358
    iget p1, p0, Lmiui/widget/NumberPicker;->Wd:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Wf:I

    .line 1360
    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->We:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Wl:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1361
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1362
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fi()V

    .line 1363
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fl()Z

    .line 1364
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fh()V

    .line 1365
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1366
    return-void

    .line 1354
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1318
    iput-wide p1, p0, Lmiui/widget/NumberPicker;->Wj:J

    .line 1319
    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wh:Lmiui/widget/NumberPicker$OnScrollListener;

    .line 1175
    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lmiui/widget/NumberPicker;->Wg:Lmiui/widget/NumberPicker$OnValueChangeListener;

    .line 1166
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->i(IZ)V

    .line 1227
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1300
    iget v0, p0, Lmiui/widget/NumberPicker;->We:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Wd:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Wl:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1301
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->WB:Z

    if-eq p1, v0, :cond_2

    .line 1302
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->WB:Z

    .line 1304
    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->fr()V

    .line 1305
    return-void
.end method
