.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecorderThumbnailWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->createFinishAnimation()Landroid/animation/Animator;
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
    .line 506
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$13;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$13;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$2200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    return-void
.end method
