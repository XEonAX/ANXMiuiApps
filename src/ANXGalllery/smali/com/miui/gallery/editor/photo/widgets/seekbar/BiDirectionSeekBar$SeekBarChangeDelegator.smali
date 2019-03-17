.class Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;
.super Ljava/lang/Object;
.source "BiDirectionSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarChangeDelegator"
.end annotation


# instance fields
.field private mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p2, "delegated"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 118
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->this$0:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->access$000(Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 126
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$SeekBarChangeDelegator;->mDelegated:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 140
    :cond_0
    return-void
.end method
