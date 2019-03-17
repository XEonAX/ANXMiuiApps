.class Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;
.super Ljava/lang/Object;
.source "CloudConfigTask.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->reportAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;->this$0:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private achieveResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "result"    # Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v3, "response":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "inputLine":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v2    # "inputLine":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "achieveResponse while parsing - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;->this$0:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    invoke-static {v4}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$200(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;)V

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "achieveResponse while parsing - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;->this$0:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    invoke-static {v4}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$200(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;)V

    goto :goto_1
.end method


# virtual methods
.method public onError(ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "error"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;->this$0:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$200(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;)V

    .line 126
    invoke-static {}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network response filed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onResponse(ILjava/util/HashMap;Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p3, "result"    # Ljava/io/InputStream;
    .param p4, "encode"    # Ljava/lang/String;
    .param p5, "contentLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Network response received onResponse"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;->achieveResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$1;->this$0:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->access$100(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;Ljava/lang/String;)V

    .line 97
    return-void
.end method
