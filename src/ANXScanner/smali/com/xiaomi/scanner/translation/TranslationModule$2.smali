.class Lcom/xiaomi/scanner/translation/TranslationModule$2;
.super Landroid/os/Handler;
.source "TranslationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/TranslationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/TranslationModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/TranslationModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/TranslationModule;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/TranslationModule$2;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$2;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$000(Lcom/xiaomi/scanner/translation/TranslationModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$400()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$400()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$2;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$200(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->setOcrResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$2;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$200(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->setWordResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$2;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$500(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFrameValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$2;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$600(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/scanner/translation/TranslationModule$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
