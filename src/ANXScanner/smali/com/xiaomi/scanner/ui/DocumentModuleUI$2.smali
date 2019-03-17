.class Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;
.super Ljava/lang/Object;
.source "DocumentModuleUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/DocumentModuleUI;->startNoteActivity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.notes"

    const-string v2, "com.miui.notes.ui.NotesListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$2;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->access$000(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    return-void
.end method
