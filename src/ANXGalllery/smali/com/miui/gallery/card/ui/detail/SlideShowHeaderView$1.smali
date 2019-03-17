.class Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;
.super Ljava/lang/Object;
.source "SlideShowHeaderView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 54
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$000(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-virtual {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$100(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 59
    .local v0, "iconHeight":I
    if-eqz v0, :cond_0

    .line 60
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$002(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;Z)Z

    .line 61
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$100(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 62
    .local v1, "iconWidth":I
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$200(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Lcom/miui/gallery/widget/SlideShowView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/widget/SlideShowView;->getMeasuredWidth()I

    move-result v5

    .line 63
    .local v5, "slideWidth":I
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$200(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Lcom/miui/gallery/widget/SlideShowView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/widget/SlideShowView;->getMeasuredHeight()I

    move-result v4

    .line 64
    .local v4, "slidHeight":I
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-virtual {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b032e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 65
    .local v3, "marginValue":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v6, v5, v1

    sub-int/2addr v6, v3

    sub-int v7, v4, v0

    sub-int/2addr v7, v3

    invoke-virtual {v2, v6, v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->access$100(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
