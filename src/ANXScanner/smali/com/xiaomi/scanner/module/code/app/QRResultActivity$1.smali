.class Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;
.super Ljava/lang/Object;
.source "QRResultActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/dialog/CtaDialog$CTAClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->showCTAConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/app/QRResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->access$000(Lcom/xiaomi/scanner/module/code/app/QRResultActivity;)V

    .line 88
    return-void
.end method

.method public onReject()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;->this$0:Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->finish()V

    .line 93
    return-void
.end method
