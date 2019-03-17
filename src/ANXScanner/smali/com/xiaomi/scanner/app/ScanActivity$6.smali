.class Lcom/xiaomi/scanner/app/ScanActivity$6;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->showConfirmDialog()V
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
    .line 661
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$6;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$6;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1100(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 665
    return-void
.end method

.method public onReject()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$6;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 670
    return-void
.end method
