.class Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "TranslateCompareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.notes"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/AppUtil;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.notes"

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-static {v2}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->access$200(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/AppUtil;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->onBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->access$000(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V

    .line 131
    :cond_0
    return-void
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;->onMainResult(Ljava/lang/Boolean;)V

    return-void
.end method
