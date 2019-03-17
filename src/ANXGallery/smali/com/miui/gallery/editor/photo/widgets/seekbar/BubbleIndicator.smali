.class public Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;
.super Ljava/lang/Object;
.source "BubbleIndicator.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mContentView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mLocation:[I

.field private mOffsetY:I

.field private mPopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .param p2, "offsetY"    # I
    .param p4, "delegate"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I",
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
            "<TV;>;",
            "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    .local p1, "contentView":Landroid/view/View;, "TV;"
    .local p3, "callback":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mLocation:[I

    .line 24
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    .line 25
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mOffsetY:I

    .line 26
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    .line 27
    iput-object p4, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;Landroid/widget/SeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->computeX(Landroid/widget/SeekBar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;Landroid/widget/SeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->computeY(Landroid/widget/SeekBar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private computeX(Landroid/widget/SeekBar;)I
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 105
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private computeY(Landroid/widget/SeekBar;)I
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 109
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mOffsetY:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private updateProgress(Landroid/view/View;I)V
    .locals 2
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    .local p1, "contentView":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->onProgressUpdate(Landroid/view/View;I)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;->updateProgress(Landroid/view/View;I)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    const/4 v3, -0x1

    .line 32
    if-eqz p3, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->updateProgress(Landroid/view/View;I)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->computeX(Landroid/widget/SeekBar;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->computeY(Landroid/widget/SeekBar;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 41
    :cond_1
    return-void
.end method

.method protected onProgressUpdate(Landroid/view/View;I)V
    .locals 0
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    .local p1, "contentView":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;Landroid/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mLocation:[I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x7f1100b3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->computeX(Landroid/widget/SeekBar;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->computeY(Landroid/widget/SeekBar;)I

    move-result v2

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 72
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 76
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator<TV;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->mDelegate:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 80
    :cond_0
    return-void
.end method
