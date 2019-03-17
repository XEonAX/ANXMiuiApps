.class Lcom/xiaomi/scanner/app/ScanActivity$2;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->removeAAShopping()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onResume - amazon assistant is shown in the menu : "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->isShutterButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onResponse - mAppUI or mAppUI.isShutterButtonEnabled() is failing"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onResume - amazon assistant should be removed, if available "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$2;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$500(Lcom/xiaomi/scanner/app/ScanActivity;)V

    goto :goto_0
.end method
