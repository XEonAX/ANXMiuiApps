.class Lcom/xiaomi/scanner/app/ScanActivity$3;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V
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
    .line 517
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$3;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$3;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "drop requestPreviewFrame, null CaptureModule"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$3;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$3;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestPreviewFrame(Lcom/xiaomi/scanner/module/ModuleController;)V

    goto :goto_0
.end method
