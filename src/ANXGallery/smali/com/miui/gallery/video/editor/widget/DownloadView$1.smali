.class Lcom/miui/gallery/video/editor/widget/DownloadView$1;
.super Lcom/miui/gallery/video/editor/widget/DownloadView$MyAnimalListener;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/widget/DownloadView;->endDownloading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/widget/DownloadView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/widget/DownloadView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/video/editor/widget/DownloadView$MyAnimalListener;-><init>(Lcom/miui/gallery/video/editor/widget/DownloadView;Lcom/miui/gallery/video/editor/widget/DownloadView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView$1;->this$0:Lcom/miui/gallery/video/editor/widget/DownloadView;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/DownloadView;->access$100(Lcom/miui/gallery/video/editor/widget/DownloadView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/widget/DownloadView$1$1;-><init>(Lcom/miui/gallery/video/editor/widget/DownloadView$1;)V

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/DownloadView;->access$300(Lcom/miui/gallery/video/editor/widget/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    return-void
.end method
