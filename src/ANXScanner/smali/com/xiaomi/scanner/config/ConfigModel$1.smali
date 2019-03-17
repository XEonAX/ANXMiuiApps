.class Lcom/xiaomi/scanner/config/ConfigModel$1;
.super Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;
.source "ConfigModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/config/ConfigModel;->queryScanRuleConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback",
        "<",
        "Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/config/ConfigModel;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/config/ConfigModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/config/ConfigModel;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xiaomi/scanner/config/ConfigModel$1;->this$0:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;)V
    .locals 2
    .param p1, "obj"    # Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel$1;->this$0:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->access$002(Lcom/xiaomi/scanner/config/ConfigModel;Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;)Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel$1;->this$0:Lcom/xiaomi/scanner/config/ConfigModel;

    const-string v1, "Config_Scan"

    invoke-static {v0, p1, v1}, Lcom/xiaomi/scanner/config/ConfigModel;->access$100(Lcom/xiaomi/scanner/config/ConfigModel;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/config/ConfigModel$1;->onSuccess(Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;)V

    return-void
.end method
