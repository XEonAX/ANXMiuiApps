.class Lcom/xiaomi/scanner/translation/TranslateModel$1;
.super Ljava/lang/Object;
.source "TranslateModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/translation/TranslateModel;->updateLangs(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/TranslateModel;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/TranslateModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/TranslateModel;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/TranslateModel$1;->this$0:Lcom/xiaomi/scanner/translation/TranslateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel$1;->this$0:Lcom/xiaomi/scanner/translation/TranslateModel;

    const-string v1, "keyRealTimeSrcLang2"

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslateModel$1;->this$0:Lcom/xiaomi/scanner/translation/TranslateModel;

    invoke-static {v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->access$000(Lcom/xiaomi/scanner/translation/TranslateModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->access$100(Lcom/xiaomi/scanner/translation/TranslateModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/TranslateModel$1;->this$0:Lcom/xiaomi/scanner/translation/TranslateModel;

    const-string v1, "keyRealTimeDesLang"

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/TranslateModel$1;->this$0:Lcom/xiaomi/scanner/translation/TranslateModel;

    invoke-static {v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->access$200(Lcom/xiaomi/scanner/translation/TranslateModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/translation/TranslateModel;->access$100(Lcom/xiaomi/scanner/translation/TranslateModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
