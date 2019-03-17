.class Lcom/xiaomi/scanner/module/DocumentModule$1;
.super Ljava/lang/Object;
.source "DocumentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/DocumentModule;->onOcrDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/DocumentModule;

.field final synthetic val$result:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/DocumentModule;Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/DocumentModule;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/scanner/module/DocumentModule$1;->this$0:Lcom/xiaomi/scanner/module/DocumentModule;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/DocumentModule$1;->val$result:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/module/DocumentModule$1;->this$0:Lcom/xiaomi/scanner/module/DocumentModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/DocumentModule;->access$000(Lcom/xiaomi/scanner/module/DocumentModule;)Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/DocumentModule$1;->val$result:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->updateOcrResult(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V

    .line 80
    return-void
.end method
