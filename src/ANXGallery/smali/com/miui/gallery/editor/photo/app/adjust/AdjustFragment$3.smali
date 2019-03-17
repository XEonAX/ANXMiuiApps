.class Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$3;
.super Ljava/lang/Object;
.source "AdjustFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    invoke-static {v0, p2}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->access$200(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;I)V

    .line 151
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 156
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 161
    return-void
.end method
