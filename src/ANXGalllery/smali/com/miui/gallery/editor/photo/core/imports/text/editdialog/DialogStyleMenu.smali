.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;
.super Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
.source "DialogStyleMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$BubbleCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;",
        "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# instance fields
.field private mAlignButton:Landroid/widget/TextView;

.field private final mAlignCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private final mAlignCenterString:Ljava/lang/String;

.field private mAlignIndex:I

.field private final mAlignLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mAlignLeftString:Ljava/lang/String;

.field private final mAlignRightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mAlignRightString:Ljava/lang/String;

.field private mBoldButton:Landroid/widget/TextView;

.field private mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

.field private mShadowButton:Landroid/widget/TextView;

.field private mTransparentSeekBar:Landroid/widget/SeekBar;

.field private mWholeView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "configChangeListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    .prologue
    .line 41
    const v0, 0x7f0c04e0

    const v1, 0x7f0202bb

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    .line 42
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    const v0, 0x7f0c04e2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignLeftString:Ljava/lang/String;

    .line 49
    const v0, 0x7f0c04e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignCenterString:Ljava/lang/String;

    .line 50
    const v0, 0x7f0c04e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignRightString:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0161

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 108
    .local v3, "size":I
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;

    sget-object v6, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->COLORS:[I

    invoke-direct {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;-><init>([I)V

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setThumbColor(I)V

    .line 110
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0162

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;-><init>(FLandroid/content/res/Resources;)V

    .line 111
    .local v0, "circleDrawable":Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->setIntrinsicWidth(I)V

    .line 112
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->setIntrinsicHeight(I)V

    .line 113
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLayerType()I

    move-result v4

    if-nez v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v8, v7}, Landroid/widget/SeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 118
    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignButton:Landroid/widget/TextView;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mBoldButton:Landroid/widget/TextView;

    aput-object v5, v4, v8

    invoke-direct {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->setViewClickListener([Landroid/view/View;)V

    .line 119
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    const v4, 0x7f040067

    invoke-static {p1, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, "indicatorView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$BubbleCallback;

    invoke-direct {v5, p0, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$BubbleCallback;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;)V

    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;

    invoke-direct {v6, p0, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$ColorPickerChangeListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;)V

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;-><init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 125
    .local v1, "indicator":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 126
    return-void
.end method

.method private setAlignButton(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 5
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    const/4 v4, 0x0

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 87
    .local v1, "text":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$2;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$text$utils$AutoLineLayout$TextAlignment:[I

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    .line 104
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignLeftString:Ljava/lang/String;

    .line 91
    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignCenterString:Ljava/lang/String;

    .line 95
    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignRightString:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignRightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private varargs setViewClickListener([Landroid/view/View;)V
    .locals 3
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 166
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 167
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected initSubMenuView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040158

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    const v1, 0x7f1202b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignButton:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    const v1, 0x7f1202ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mBoldButton:Landroid/widget/TextView;

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->initView(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mWholeView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 5
    .param p1, "initializeData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iget v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->findProgressByColor(I)I

    move-result v1

    .line 68
    .local v1, "progressByColor":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mColorPickSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setProgress(I)V

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 70
    .local v0, "max":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mTransparentSeekBar:Landroid/widget/SeekBar;

    int-to-float v3, v0

    iget v4, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->transparentProgress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 71
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mBoldButton:Landroid/widget/TextView;

    iget-boolean v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textBold:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    iget-boolean v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 81
    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->setAlignButton(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 82
    return-void
.end method

.method public bridge synthetic initializeData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->initializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 177
    .local v0, "check":Z
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mShadowButton:Landroid/widget/TextView;

    if-nez v0, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 178
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onShadowChange(Z)V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 177
    goto :goto_1

    :cond_2
    move v4, v5

    .line 179
    goto :goto_2

    .line 184
    .end local v0    # "check":Z
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->values()[Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v2

    .line 185
    .local v2, "textAlignments":[Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    .line 186
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    array-length v4, v2

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    .line 187
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mAlignIndex:I

    aget-object v1, v2, v3

    .line 188
    .local v1, "textAlignment":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->setAlignButton(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 189
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    invoke-interface {v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onTextAlignChange(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    goto :goto_0

    .line 194
    .end local v1    # "textAlignment":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .end local v2    # "textAlignments":[Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mBoldButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 195
    .restart local v0    # "check":Z
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mBoldButton:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 196
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    if-nez v0, :cond_4

    :goto_4
    invoke-interface {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onBoldChange(Z)V

    goto :goto_0

    :cond_3
    move v3, v5

    .line 195
    goto :goto_3

    :cond_4
    move v4, v5

    .line 197
    goto :goto_4

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x7f1202b8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onTransparentChange(I)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x7f1202b7
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;->onTransparentChange(I)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x7f1202b7
        :pswitch_0
    .end packed-switch
.end method
