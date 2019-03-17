.class Lcom/xiaomi/push/log/LogUploader$CleanUpTask;
.super Lcom/xiaomi/push/log/LogUploader$Task;
.source "LogUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/log/LogUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanUpTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/log/LogUploader;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/LogUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/log/LogUploader;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/xiaomi/push/log/LogUploader$CleanUpTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/log/LogUploader$Task;-><init>(Lcom/xiaomi/push/log/LogUploader;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$CleanUpTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v0}, Lcom/xiaomi/push/log/LogUploader;->access$300(Lcom/xiaomi/push/log/LogUploader;)V

    .line 235
    return-void
.end method
