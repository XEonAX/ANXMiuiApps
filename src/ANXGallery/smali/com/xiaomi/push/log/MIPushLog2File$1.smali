.class Lcom/xiaomi/push/log/MIPushLog2File$1;
.super Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;
.source "MIPushLog2File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/log/MIPushLog2File;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/log/MIPushLog2File;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/MIPushLog2File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/log/MIPushLog2File;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xiaomi/push/log/MIPushLog2File$1;->this$0:Lcom/xiaomi/push/log/MIPushLog2File;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/xiaomi/push/log/MIPushLog2File;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardUseful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/xiaomi/push/log/MIPushLog2File$1;->this$0:Lcom/xiaomi/push/log/MIPushLog2File;

    invoke-static {v1}, Lcom/xiaomi/push/log/MIPushLog2File;->access$100(Lcom/xiaomi/push/log/MIPushLog2File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDCard is unavailable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaomi/push/log/MIPushLog2File$1;->this$0:Lcom/xiaomi/push/log/MIPushLog2File;

    invoke-static {v1}, Lcom/xiaomi/push/log/MIPushLog2File;->access$100(Lcom/xiaomi/push/log/MIPushLog2File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/log/MIPushLog2File$1;->this$0:Lcom/xiaomi/push/log/MIPushLog2File;

    invoke-static {v1}, Lcom/xiaomi/push/log/MIPushLog2File;->access$200(Lcom/xiaomi/push/log/MIPushLog2File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
