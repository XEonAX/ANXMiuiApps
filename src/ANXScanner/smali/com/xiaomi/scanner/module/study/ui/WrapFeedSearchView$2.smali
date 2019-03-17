.class Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;
.super Ljava/lang/Object;
.source "WrapFeedSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->access$000(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->access$000(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 53
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->access$000(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 54
    .local v0, "mCurY":I
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->access$100(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    move-result-object v1

    const/4 v2, 0x0

    neg-int v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->scrollTo(II)V

    .line 55
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;->this$0:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-virtual {v1, p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
