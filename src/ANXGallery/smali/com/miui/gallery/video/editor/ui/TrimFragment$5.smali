.class Lcom/miui/gallery/video/editor/ui/TrimFragment$5;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment;->doApply()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iput p2, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->val$start:I

    iput p3, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;-><init>(Lcom/miui/gallery/video/editor/ui/TrimFragment$5;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 190
    return-void
.end method
