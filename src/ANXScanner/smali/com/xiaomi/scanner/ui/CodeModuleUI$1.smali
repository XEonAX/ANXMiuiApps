.class Lcom/xiaomi/scanner/ui/CodeModuleUI$1;
.super Ljava/lang/Object;
.source "CodeModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/CodeModuleUI;->showThirdAppUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/CodeModuleUI;

.field final synthetic val$subTitleLinkAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/CodeModuleUI;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/CodeModuleUI;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->val$subTitleLinkAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->val$subTitleLinkAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->access$000(Lcom/xiaomi/scanner/ui/CodeModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    const-string v3, "ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
