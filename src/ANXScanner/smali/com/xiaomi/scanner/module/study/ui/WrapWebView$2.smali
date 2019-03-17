.class Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;
.super Ljava/lang/Object;
.source "WrapWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/study/ui/WrapWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->access$000(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->access$000(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 43
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->access$000(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 44
    .local v0, "mCurY":I
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->access$100(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 45
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    invoke-virtual {v1, p0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
