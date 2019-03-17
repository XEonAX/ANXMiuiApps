.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 617
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 620
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_mecard_web_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1302(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    .line 635
    :cond_0
    :goto_0
    return v3

    .line 623
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_mecard_phone_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 625
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z

    goto :goto_0

    .line 626
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_mecard_email_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, "data":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 629
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z

    goto :goto_0

    .line 630
    .end local v0    # "data":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_text_content_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .line 631
    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v2, v4, :cond_0

    .line 632
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1702(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z

    .line 633
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v4}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v5}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v6}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 632
    goto :goto_1
.end method
