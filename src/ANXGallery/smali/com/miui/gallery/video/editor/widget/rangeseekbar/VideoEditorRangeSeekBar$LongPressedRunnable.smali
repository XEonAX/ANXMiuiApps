.class Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;
.super Ljava/lang/Object;
.source "VideoEditorRangeSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressedRunnable"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)V
    .locals 1

    .prologue
    .line 947
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->mIsCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->mIsCanceled:Z

    .line 951
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 955
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->mIsCanceled:Z

    if-nez v1, :cond_1

    .line 956
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1300(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1300(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I

    move-result v1

    if-ne v1, v8, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1400(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F

    move-result v1

    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1500(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 957
    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1600(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F

    move-result v1

    float-to-int v5, v1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1400(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F

    move-result v1

    const/4 v6, 0x0

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getNearbyThumbId(IZ)I

    move-result v0

    .line 958
    .local v0, "nearByThumbId":I
    if-ne v0, v2, :cond_3

    .line 959
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1700(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F

    move-result v2

    invoke-static {v1, v7, v2, v3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1800(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;FFZ)V

    .line 965
    .end local v0    # "nearByThumbId":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 957
    goto :goto_0

    .line 960
    .restart local v0    # "nearByThumbId":I
    :cond_3
    if-ne v0, v8, :cond_1

    .line 961
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->this$0:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1900(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F

    move-result v2

    invoke-static {v1, v7, v2, v3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->access$1800(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;FFZ)V

    goto :goto_1
.end method
