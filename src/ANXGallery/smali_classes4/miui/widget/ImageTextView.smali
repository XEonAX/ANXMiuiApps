.class public Lmiui/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final TA:I = 0x1

.field private static final Ty:[I

.field private static final Tz:I


# instance fields
.field private TB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final Tx:Landroid/widget/LinearLayout$LayoutParams;

.field private bH:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/ImageTextView;->Ty:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100b2
        0x10101f8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lmiui/widget/ImageTextView;->Tx:Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ImageTextView;->setOrientation(I)V

    .line 48
    sget-object v1, Lmiui/widget/ImageTextView;->Ty:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    .line 50
    invoke-direct {p0, p1}, Lmiui/widget/ImageTextView;->a(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;

    move-result-object p3

    .line 52
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 53
    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_0

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/widget/ImageTextView;->TB:Ljava/util/HashMap;

    .line 55
    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 56
    iget-object v2, p0, Lmiui/widget/ImageTextView;->TB:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aget-object v4, p3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;
    .locals 3

    .line 64
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 65
    nop

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 68
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 70
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 75
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 93
    iget-object v0, p0, Lmiui/widget/ImageTextView;->bH:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ImageTextView;->bH:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public setCharMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lmiui/widget/ImageTextView;->TB:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lmiui/widget/ImageTextView;->TB:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmiui/widget/ImageTextView;->bH:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 106
    :cond_0
    iput-object p1, p0, Lmiui/widget/ImageTextView;->bH:Ljava/lang/CharSequence;

    .line 107
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 109
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lmiui/widget/ImageTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 112
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v2, p0, Lmiui/widget/ImageTextView;->Tx:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {p0, v1}, Lmiui/widget/ImageTextView;->addView(Landroid/view/View;)V

    .line 116
    :goto_1
    iget-object v2, p0, Lmiui/widget/ImageTextView;->TB:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 117
    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v0

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 122
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ImageTextView;->removeViewAt(I)V

    .line 121
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 124
    :cond_4
    return-void

    .line 103
    :cond_5
    :goto_3
    return-void
.end method
