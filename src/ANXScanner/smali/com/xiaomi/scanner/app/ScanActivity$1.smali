.class Lcom/xiaomi/scanner/app/ScanActivity$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
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
    .line 187
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$1;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$1;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$000(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "delayed Runnable --> onResumeTasks()"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$1;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$002(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z

    .line 194
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$1;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$200(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 196
    :cond_0
    return-void
.end method
