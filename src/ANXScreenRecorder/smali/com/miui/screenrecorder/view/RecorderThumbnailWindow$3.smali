.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$3;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->initThumbnailView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$3;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;I)V

    .line 165
    return-void
.end method
