.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspected(I)V
    .locals 4
    .param p1, "risk"    # I

    .prologue
    .line 582
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    :goto_0
    return-void

    .line 588
    :cond_0
    const/high16 v1, -0x1000000

    .line 589
    .local v1, "color":I
    packed-switch p1, :pswitch_data_0

    .line 606
    const v0, 0x7f070038

    .line 607
    .local v0, "btnRes":I
    const v2, 0x7f0700d0

    .line 611
    .local v2, "warningRes":I
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    .line 612
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 591
    .end local v0    # "btnRes":I
    .end local v2    # "warningRes":I
    :pswitch_0
    const v0, 0x7f070037

    .line 592
    .restart local v0    # "btnRes":I
    const v2, 0x7f0700cf

    .line 593
    .restart local v2    # "warningRes":I
    goto :goto_1

    .line 595
    .end local v0    # "btnRes":I
    .end local v2    # "warningRes":I
    :pswitch_1
    const/high16 v1, -0x10000

    .line 596
    const v0, 0x7f070084

    .line 597
    .restart local v0    # "btnRes":I
    const v2, 0x7f0700ce

    .line 598
    .restart local v2    # "warningRes":I
    goto :goto_1

    .line 600
    .end local v0    # "btnRes":I
    .end local v2    # "warningRes":I
    :pswitch_2
    const/high16 v1, -0x10000

    .line 601
    const v0, 0x7f070084

    .line 602
    .restart local v0    # "btnRes":I
    const v2, 0x7f0700d1

    .line 603
    .restart local v2    # "warningRes":I
    goto :goto_1

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
