.class Lcom/xiaomi/slim/SlimConnection$1;
.super Ljava/lang/Thread;
.source "SlimConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/slim/SlimConnection;->initReaderAndWriter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/slim/SlimConnection;


# direct methods
.method constructor <init>(Lcom/xiaomi/slim/SlimConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/slim/SlimConnection;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xiaomi/slim/SlimConnection$1;->this$0:Lcom/xiaomi/slim/SlimConnection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection$1;->this$0:Lcom/xiaomi/slim/SlimConnection;

    invoke-static {v1}, Lcom/xiaomi/slim/SlimConnection;->access$000(Lcom/xiaomi/slim/SlimConnection;)Lcom/xiaomi/slim/BlobReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/slim/BlobReader;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection$1;->this$0:Lcom/xiaomi/slim/SlimConnection;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/slim/SlimConnection;->notifyConnectionError(ILjava/lang/Exception;)V

    goto :goto_0
.end method
