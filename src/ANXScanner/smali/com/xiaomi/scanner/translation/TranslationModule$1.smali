.class Lcom/xiaomi/scanner/translation/TranslationModule$1;
.super Ljava/lang/Object;
.source "TranslationModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;


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
    .line 47
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDefinitionDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$000(Lcom/xiaomi/scanner/translation/TranslationModule;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$100(Lcom/xiaomi/scanner/translation/TranslationModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    :cond_0
    return-void
.end method

.method public onOcrDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V
    .locals 2
    .param p1, "result"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;
    .param p2, "type"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$000(Lcom/xiaomi/scanner/translation/TranslationModule;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->TRANSLATE_AREA:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    if-ne p2, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$100(Lcom/xiaomi/scanner/translation/TranslationModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    :cond_0
    return-void
.end method

.method public onOcrFail()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$400()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onOcrFail"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$200(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$300(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    .line 80
    :cond_0
    return-void
.end method

.method public onTranslationDone()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$200(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/TranslationModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/TranslationModuleUI;->isWordDetect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$000(Lcom/xiaomi/scanner/translation/TranslationModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$100(Lcom/xiaomi/scanner/translation/TranslationModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslationModule$1;->this$0:Lcom/xiaomi/scanner/translation/TranslationModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/TranslationModule;->access$300(Lcom/xiaomi/scanner/translation/TranslationModule;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->stopScan()V

    goto :goto_0
.end method
