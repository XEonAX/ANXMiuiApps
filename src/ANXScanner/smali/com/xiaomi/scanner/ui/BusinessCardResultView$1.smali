.class Lcom/xiaomi/scanner/ui/BusinessCardResultView$1;
.super Ljava/lang/Object;
.source "BusinessCardResultView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/BusinessCardResultView;->showResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/BusinessCardResultView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$1;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$1;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->access$100(Lcom/xiaomi/scanner/ui/BusinessCardResultView;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView$1;->this$0:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->access$000(Lcom/xiaomi/scanner/ui/BusinessCardResultView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
