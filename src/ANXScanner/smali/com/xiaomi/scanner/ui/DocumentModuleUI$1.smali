.class Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;
.super Landroid/os/AsyncTask;
.source "DocumentModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/DocumentModuleUI;->saveOcrResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->access$000(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.notes"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/AppUtil;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->access$000(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.notes"

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->access$100(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->val$result:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/AppUtil;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V

    .line 393
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "available"    # Ljava/lang/Boolean;

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->val$result:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->access$200(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V

    .line 402
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
