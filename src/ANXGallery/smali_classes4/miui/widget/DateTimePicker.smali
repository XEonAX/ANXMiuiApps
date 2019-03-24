.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DateTimePicker$PickerValueChangeListener;,
        Lmiui/widget/DateTimePicker$LunarFormatter;,
        Lmiui/widget/DateTimePicker$DayFormatter;,
        Lmiui/widget/DateTimePicker$SavedState;,
        Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final QO:I = 0x1

.field private static final QP:I = 0x7

.field private static final QQ:I = 0x6

.field private static final QR:I = 0x2

.field private static final QX:Lmiui/widget/DateTimePicker$DayFormatter;

.field private static final Ra:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static Re:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private QE:Lmiui/date/Calendar;

.field private QF:Lmiui/date/Calendar;

.field private QI:Z

.field private QS:Lmiui/widget/NumberPicker;

.field private QT:Lmiui/widget/NumberPicker;

.field private QU:Lmiui/widget/NumberPicker;

.field private QV:[Ljava/lang/String;

.field private QW:Lmiui/widget/DateTimePicker$DayFormatter;

.field private QY:Lmiui/widget/DateTimePicker$DayFormatter;

.field private QZ:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

.field private Rb:I

.field private Rc:I

.field Rd:[Ljava/lang/String;

.field private wW:Lmiui/date/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->QX:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->Ra:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->Re:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    sget v0, Lcom/miui/internal/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/DateTimePicker;->Rb:I

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    .line 59
    iput-object v1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    .line 61
    iput-object v1, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/widget/DateTimePicker;->QI:Z

    .line 78
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 80
    sget v4, Lcom/miui/internal/R$layout;->datetime_picker:I

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    new-instance v3, Lmiui/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v3, p0, v1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V

    .line 84
    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    .line 85
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v0}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 87
    sget-object v1, Lmiui/widget/DateTimePicker;->Ra:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    .line 88
    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    .line 90
    sget-object v4, Lmiui/widget/DateTimePicker;->Ra:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 92
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 94
    sget v1, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    .line 95
    sget v1, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    .line 96
    sget v1, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    .line 97
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 98
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Lmiui/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    .line 99
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 100
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 101
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 102
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 103
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    sget-object v3, Lmiui/widget/NumberPicker;->VR:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 104
    sget-object v1, Lcom/miui/internal/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    sget p2, Lcom/miui/internal/R$styleable;->DateTimePicker_lunarCalendar:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/DateTimePicker;->QI:Z

    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ev()V

    .line 110
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ew()V

    .line 111
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    .line 112
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ey()V

    .line 113
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ex()V

    .line 116
    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Lmiui/widget/DateTimePicker;->setImportantForAccessibility(I)V

    .line 119
    :cond_1
    return-void
.end method

.method private a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I
    .locals 8

    .line 226
    invoke-virtual {p1}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/date/Calendar;

    .line 227
    invoke-virtual {p2}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/date/Calendar;

    .line 228
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 229
    const/16 v2, 0x14

    invoke-virtual {p1, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 230
    const/16 v3, 0x15

    invoke-virtual {p1, v3, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 231
    const/16 v4, 0x16

    invoke-virtual {p1, v4, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 232
    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 233
    invoke-virtual {p2, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 234
    invoke-virtual {p2, v3, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 235
    invoke-virtual {p2, v4, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 236
    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v6, 0x18

    div-long/2addr v0, v6

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    div-long/2addr p1, v4

    div-long/2addr p1, v4

    div-long/2addr p1, v6

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method static synthetic a(Lmiui/widget/DateTimePicker;I)I
    .locals 0

    .line 28
    iput p1, p0, Lmiui/widget/DateTimePicker;->Rc:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method private a(Lmiui/date/Calendar;Z)V
    .locals 3

    .line 122
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 123
    const/16 v1, 0x15

    invoke-virtual {p1, v1, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 124
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/DateTimePicker;->Rb:I

    rem-int/2addr v1, v2

    .line 125
    if-eqz v1, :cond_1

    .line 126
    if-eqz p2, :cond_0

    .line 127
    iget p2, p0, Lmiui/widget/DateTimePicker;->Rb:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_0

    .line 129
    :cond_0
    neg-int p2, v1

    invoke-virtual {p1, v0, p2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lmiui/widget/DateTimePicker;)I
    .locals 0

    .line 28
    iget p0, p0, Lmiui/widget/DateTimePicker;->Rc:I

    return p0
.end method

.method private b(Lmiui/widget/NumberPicker;II)V
    .locals 1

    .line 305
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    array-length v0, v0

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    if-ge v0, p3, :cond_0

    .line 307
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method static synthetic c(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic e(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic eA()Ljava/lang/ThreadLocal;
    .locals 1

    .line 28
    sget-object v0, Lmiui/widget/DateTimePicker;->Re:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private ev()V
    .locals 5

    .line 135
    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 137
    move v1, v3

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 137
    move v1, v2

    :goto_0
    sget v4, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 141
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 142
    :cond_2
    move v2, v3

    goto :goto_1

    .line 141
    :cond_3
    nop

    .line 142
    :goto_1
    if-eqz v2, :cond_4

    .line 143
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 147
    :cond_4
    return-void
.end method

.method private ew()V
    .locals 4

    .line 150
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 153
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 154
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 156
    :cond_1
    return-void
.end method

.method private ex()V
    .locals 7

    .line 159
    nop

    .line 160
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    const/16 v1, 0x14

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v5}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    .line 162
    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v5, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 163
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 164
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 165
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    iget v6, p0, Lmiui/widget/DateTimePicker;->Rb:I

    div-int/2addr v0, v6

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 166
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 167
    nop

    .line 170
    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    if-eqz v5, :cond_1

    .line 171
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-direct {p0, v5, v6}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    .line 172
    invoke-virtual {v5, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v6, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 173
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 174
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    iget v5, p0, Lmiui/widget/DateTimePicker;->Rb:I

    div-int/2addr v0, v5

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 175
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 176
    nop

    .line 179
    move v0, v3

    :cond_1
    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    iget v2, p0, Lmiui/widget/DateTimePicker;->Rb:I

    const/16 v5, 0x3c

    div-int v2, v5, v2

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v4, v2}, Lmiui/widget/DateTimePicker;->b(Lmiui/widget/NumberPicker;II)V

    .line 181
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 182
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    iget v2, p0, Lmiui/widget/DateTimePicker;->Rb:I

    div-int/2addr v5, v2

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 183
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 185
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 186
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QV:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QV:[Ljava/lang/String;

    array-length v2, v2

    if-eq v2, v0, :cond_5

    .line 187
    :cond_3
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->QV:[Ljava/lang/String;

    .line 188
    :goto_1
    if-ge v4, v0, :cond_4

    .line 189
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QV:[Ljava/lang/String;

    sget-object v3, Lmiui/widget/NumberPicker;->VR:Lmiui/widget/NumberPicker$Formatter;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p0, Lmiui/widget/DateTimePicker;->Rb:I

    mul-int/2addr v5, v6

    invoke-interface {v3, v5}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    :cond_4
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QV:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 194
    :cond_5
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker;->Rb:I

    div-int/2addr v0, v1

    .line 195
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QU:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 196
    return-void
.end method

.method private ey()V
    .locals 6

    .line 199
    nop

    .line 200
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    const/4 v1, 0x1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v4}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 203
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 204
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 205
    nop

    .line 208
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    if-eqz v4, :cond_1

    .line 209
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v5}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v4

    if-nez v4, :cond_1

    .line 210
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 211
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 212
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 213
    nop

    .line 216
    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 218
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 219
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 221
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 222
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QT:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 223
    return-void
.end method

.method private ez()V
    .locals 13

    .line 240
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    .line 241
    move v0, v1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    .line 241
    :goto_0
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    .line 242
    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v0, v2, :cond_2

    if-gt v1, v2, :cond_2

    .line 243
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    .line 244
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v2, v3, v1}, Lmiui/widget/DateTimePicker;->b(Lmiui/widget/NumberPicker;II)V

    .line 245
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 246
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 247
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 248
    iput v0, p0, Lmiui/widget/DateTimePicker;->Rc:I

    .line 249
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 250
    goto :goto_2

    .line 251
    :cond_2
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    const/4 v6, 0x6

    invoke-direct {p0, v5, v3, v6}, Lmiui/widget/DateTimePicker;->b(Lmiui/widget/NumberPicker;II)V

    .line 252
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 253
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 254
    if-gt v0, v2, :cond_3

    .line 255
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 256
    iput v0, p0, Lmiui/widget/DateTimePicker;->Rc:I

    .line 257
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 259
    :cond_3
    if-gt v1, v2, :cond_4

    .line 260
    sub-int/2addr v6, v1

    iput v6, p0, Lmiui/widget/DateTimePicker;->Rc:I

    .line 261
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    iget v6, p0, Lmiui/widget/DateTimePicker;->Rc:I

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 262
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 264
    :cond_4
    if-le v0, v2, :cond_5

    if-le v1, v2, :cond_5

    .line 265
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 268
    :cond_5
    :goto_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 269
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_7

    .line 270
    :cond_6
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    .line 273
    :cond_7
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    .line 274
    sget-object v1, Lmiui/widget/DateTimePicker;->Ra:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    .line 275
    if-nez v1, :cond_8

    .line 276
    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    .line 277
    sget-object v2, Lmiui/widget/DateTimePicker;->Ra:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 279
    :cond_8
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 280
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    .line 281
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    .line 280
    invoke-direct {p0, v3, v6, v8}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 282
    move v2, v4

    :goto_3
    const/16 v3, 0xc

    const/4 v6, 0x3

    if-gt v2, v6, :cond_a

    .line 283
    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 284
    add-int v8, v0, v2

    rem-int/lit8 v8, v8, 0x7

    .line 285
    iget-object v9, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    array-length v9, v9

    if-lt v8, v9, :cond_9

    .line 286
    goto :goto_4

    .line 288
    :cond_9
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    .line 289
    invoke-virtual {v1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    .line 288
    invoke-direct {p0, v6, v9, v10}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 291
    :cond_a
    :goto_4
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 292
    move v2, v4

    :goto_5
    if-gt v2, v6, :cond_c

    .line 293
    const/4 v8, -0x1

    invoke-virtual {v1, v3, v8}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 294
    sub-int v8, v0, v2

    add-int/lit8 v8, v8, 0x7

    rem-int/lit8 v8, v8, 0x7

    .line 295
    iget-object v9, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    array-length v9, v9

    if-lt v8, v9, :cond_b

    .line 296
    goto :goto_6

    .line 298
    :cond_b
    iget-object v9, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    .line 299
    invoke-virtual {v1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v12

    .line 298
    invoke-direct {p0, v10, v11, v12}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 301
    :cond_c
    :goto_6
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QS:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->Rd:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method static synthetic f(Lmiui/widget/DateTimePicker;)I
    .locals 0

    .line 28
    iget p0, p0, Lmiui/widget/DateTimePicker;->Rb:I

    return p0
.end method

.method private formatDay(III)Ljava/lang/String;
    .locals 2

    .line 528
    sget-object v0, Lmiui/widget/DateTimePicker;->QX:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 529
    iget-boolean v1, p0, Lmiui/widget/DateTimePicker;->QI:Z

    if-eqz v1, :cond_1

    .line 530
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QY:Lmiui/widget/DateTimePicker$DayFormatter;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lmiui/widget/DateTimePicker$LunarFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$LunarFormatter;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->QY:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 533
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QY:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 535
    :cond_1
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->QW:Lmiui/widget/DateTimePicker$DayFormatter;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QW:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 536
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lmiui/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic g(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ew()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    return-void
.end method

.method static synthetic i(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ey()V

    return-void
.end method

.method static synthetic j(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ex()V

    return-void
.end method

.method static synthetic k(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiui/widget/DateTimePicker;->QZ:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-object p0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 569
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 570
    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 409
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 410
    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 356
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 584
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 585
    const-class v0, Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 586
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 590
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 591
    const-class v0, Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 592
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 575
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 577
    nop

    .line 578
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x58c

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 419
    check-cast p1, Lmiui/widget/DateTimePicker$SavedState;

    .line 420
    invoke-virtual {p1}, Lmiui/widget/DateTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 421
    invoke-virtual {p1}, Lmiui/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 422
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 414
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 415
    new-instance v1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setDayFormatter(Lmiui/widget/DateTimePicker$DayFormatter;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->QW:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 515
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    .line 516
    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->QI:Z

    .line 524
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    .line 525
    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 2

    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 389
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    .line 392
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 393
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 394
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 395
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 398
    :cond_1
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ew()V

    .line 399
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    .line 400
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ey()V

    .line 401
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ex()V

    .line 402
    return-void
.end method

.method public setMinDateTime(J)V
    .locals 2

    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 365
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    goto :goto_0

    .line 367
    :cond_0
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    .line 368
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 369
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 370
    :cond_1
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 372
    :cond_2
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 373
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    .line 374
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->QE:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DateTimePicker;->QF:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 377
    :cond_3
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ew()V

    .line 378
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    .line 379
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ey()V

    .line 380
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ex()V

    .line 381
    return-void
.end method

.method public setMinuteInterval(I)V
    .locals 1

    .line 326
    iget v0, p0, Lmiui/widget/DateTimePicker;->Rb:I

    if-ne v0, p1, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    iput p1, p0, Lmiui/widget/DateTimePicker;->Rb:I

    .line 331
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 333
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ew()V

    .line 334
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ex()V

    .line 335
    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->QZ:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 318
    return-void
.end method

.method public update(J)V
    .locals 1

    .line 343
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 344
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->wW:Lmiui/date/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->a(Lmiui/date/Calendar;Z)V

    .line 345
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ew()V

    .line 346
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ez()V

    .line 347
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ey()V

    .line 348
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->ex()V

    .line 349
    return-void
.end method
