.class Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "SlideShowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/SlideShowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/SlideShowView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/SlideShowView;FFJ)V
    .locals 2
    .param p2, "from"    # F
    .param p3, "to"    # F
    .param p4, "duration"    # J

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    .line 206
    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 207
    invoke-virtual {p0, p4, p5}, Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;->setDuration(J)V

    .line 208
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 209
    return-void
.end method
