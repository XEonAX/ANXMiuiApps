.class public Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "DoodleMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

.field private mCurrentIndex:I

.field private mDoodleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;",
            ">;"
        }
    .end annotation
.end field

.field private mDoodleItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemParent:Landroid/widget/LinearLayout;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOperationClickListener:Landroid/view/View$OnClickListener;

.field private mOperationPanel:Landroid/view/View;

.field private mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

.field private mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

.field private mRevert:Landroid/view/View;

.field private mRevoke:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mCurrentIndex:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleItemHolderList:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    .line 131
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .line 138
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationClickListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$4;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 191
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$5;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleItemHolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->refreshOperationPanel()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getGestureFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private refreshOperationPanel()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mRevoke:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;->canRevoke()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mRevert:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;->canRevert()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    return-void
.end method


# virtual methods
.method protected createGestureFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v0, 0x7f040069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getGestureFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->setPaintSizeChangeListener(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;)V

    .line 183
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    const v5, 0x7f12002d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mTitleView:Landroid/widget/TextView;

    .line 53
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mTitleView:Landroid/widget/TextView;

    const v6, 0x7f0c0351

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const v5, 0x7f12013e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationPanel:Landroid/view/View;

    .line 56
    const v5, 0x7f12013f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mRevoke:Landroid/view/View;

    .line 57
    const v5, 0x7f120140

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mRevert:Landroid/view/View;

    .line 59
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mRevoke:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mRevert:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x7f120151

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    .line 63
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    new-instance v6, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;

    sget-object v7, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->COLORS:[I

    invoke-direct {v6, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;-><init>([I)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const v5, 0x7f120152

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mMenuItemParent:Landroid/widget/LinearLayout;

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleDataList:Ljava/util/List;

    .line 69
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleItemHolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 70
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 71
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleDataList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;

    .line 72
    .local v0, "doodleData":Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;
    new-instance v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mMenuItemParent:Landroid/widget/LinearLayout;

    invoke-direct {v1, v5, v6}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 73
    .local v1, "doodleItemHolder":Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;
    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->bind(Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;I)V

    .line 75
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 76
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mMenuItemParent:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->wholeView:Landroid/view/View;

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v5, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;

    invoke-direct {v5, p0, v0, v2, v9}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$ItemClickListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;ILcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment$1;)V

    invoke-virtual {v1, v5}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleItemHolderList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "doodleData":Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;
    .end local v1    # "doodleItemHolder":Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mDoodleItemHolderList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->setSelected(Z)V

    .line 82
    iput v8, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mCurrentIndex:I

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040067

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 85
    .local v3, "indicatorView":Landroid/view/View;
    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b026d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;-><init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 89
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 90
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getMax()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setProgress(I)V

    .line 91
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->setThumbColor(I)V

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getGestureFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mPaintSizeChangeListener:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->setPaintSizeChangeListener(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$PaintSizeChangeListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getGestureFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mColorPicker:Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleGesFragment;->setPaintColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleMenuFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;->setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V

    .line 97
    return-void
.end method
