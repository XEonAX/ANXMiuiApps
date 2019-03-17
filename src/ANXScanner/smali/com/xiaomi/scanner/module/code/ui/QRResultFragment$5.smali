.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 531
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 535
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "QRCodeType is null"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void

    .line 538
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$8;->$SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType:[I

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 540
    :pswitch_0
    const-string v1, "barcode_url_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 544
    :pswitch_1
    const-string v1, "barcode_market_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchMIUIMarket()V

    goto :goto_0

    .line 550
    :pswitch_2
    const-string v1, "barcode_card_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 554
    :pswitch_3
    const-string v1, "barcode_wifi_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 558
    :pswitch_4
    const-string v1, "barcode_wechat_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 562
    :pswitch_5
    const-string v1, "barcode_text_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 566
    :pswitch_6
    const-string v1, "barcode_miracast_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 570
    :pswitch_7
    const-string v1, "barcode_paytm_button_click_count"

    invoke-static {v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 571
    new-instance v0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;

    invoke-direct {v0}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;-><init>()V

    .line 572
    .local v0, "paymentScanning":Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->scanningCompleted(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Z

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
