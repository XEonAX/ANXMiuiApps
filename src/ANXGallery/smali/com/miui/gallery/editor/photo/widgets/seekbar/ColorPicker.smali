.class public Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;
.super Landroid/widget/SeekBar;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;,
        Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$BitmapDelegator;,
        Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;
    }
.end annotation


# static fields
.field public static COLORS:[I

.field private static MAX_LEVEL:I


# instance fields
.field private mDelegator:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;

.field private mThumbDrawable:Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->COLORS:[I

    .line 20
    const/16 v0, 0x2710

    sput v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->MAX_LEVEL:I

    return-void

    .line 17
    nop

    :array_0
    .array-data 4
        -0xff8d01
        -0x5de06
        -0xd0d1
        -0x8bd9
        -0x4000
        -0xd515d6
        -0xf42001
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->MAX_LEVEL:I

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 41
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;-><init>(FLandroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mThumbDrawable:Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 43
    .local v0, "size":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mThumbDrawable:Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->setIntrinsicWidth(I)V

    .line 44
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mThumbDrawable:Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->setIntrinsicHeight(I)V

    .line 45
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mThumbDrawable:Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    return-void
.end method


# virtual methods
.method public findProgressByColor(I)I
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;->findLevel(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getMax()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->MAX_LEVEL:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;->getColor()I

    move-result v0

    return v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$BitmapDelegator;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$BitmapDelegator;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v0, p1, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;

    check-cast p1, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$GradientDelegator;-><init>(Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;

    goto :goto_0
.end method

.method public setThumbColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->mThumbDrawable:Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->setColor(I)V

    .line 65
    return-void
.end method
