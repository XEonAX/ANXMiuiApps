.class Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;
.super Lcom/miui/gallery/video/editor/widget/DownloadView$MyAnimalListener;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/widget/DownloadView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/widget/DownloadView$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/widget/DownloadView$1;)V
    .locals 2
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/widget/DownloadView$1;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;->this$1:Lcom/miui/gallery/video/editor/widget/DownloadView$1;

    iget-object v0, p1, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/DownloadView$MyAnimalListener;-><init>(Lcom/miui/gallery/video/editor/widget/DownloadView;Lcom/miui/gallery/video/editor/widget/DownloadView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;->this$1:Lcom/miui/gallery/video/editor/widget/DownloadView$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;->this$1:Lcom/miui/gallery/video/editor/widget/DownloadView$1;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/DownloadView;->access$200(Lcom/miui/gallery/video/editor/widget/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/widget/DownloadView$MyAnimalListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;->this$1:Lcom/miui/gallery/video/editor/widget/DownloadView$1;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->access$100(Lcom/miui/gallery/video/editor/widget/DownloadView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    return-void
.end method
