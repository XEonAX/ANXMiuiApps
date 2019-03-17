.class final Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$1;
.super Ljava/lang/Object;
.source "CloudConfigNetworking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->safeExecuteDoRequest(Ljava/util/concurrent/Executor;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$1;->val$request:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$1;->val$request:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->access$000(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "stack_error:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
