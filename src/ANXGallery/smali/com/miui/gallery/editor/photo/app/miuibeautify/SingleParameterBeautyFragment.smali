.class public Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;
.super Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;
.source "SingleParameterBeautyFragment.java"


# instance fields
.field private mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    .line 53
    new-instance v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v0, 0x7f0400b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f120147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 33
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f04013e

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b026d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;-><init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 39
    return-void
.end method
