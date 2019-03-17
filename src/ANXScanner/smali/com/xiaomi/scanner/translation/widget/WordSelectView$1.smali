.class Lcom/xiaomi/scanner/translation/widget/WordSelectView$1;
.super Ljava/lang/Object;
.source "WordSelectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/translation/widget/WordSelectView;->initWordResultUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/widget/WordSelectView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/widget/WordSelectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/WordSelectView$1;->this$0:Lcom/xiaomi/scanner/translation/widget/WordSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "translate_auto_all_translation"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
