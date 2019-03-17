.class Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;
.super Ljava/lang/Object;
.source "PushServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/PushServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BufferedRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/thrift/TBase",
        "<TT;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field actionType:Lcom/xiaomi/xmpush/thrift/ActionType;

.field encrypt:Z

.field message:Lorg/apache/thrift/TBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    .local p0, "this":Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;, "Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
