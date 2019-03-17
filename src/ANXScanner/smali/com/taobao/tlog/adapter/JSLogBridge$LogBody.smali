.class Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;
.super Ljava/lang/Object;
.source "JSLogBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tlog/adapter/JSLogBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogBody"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field module:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/tlog/adapter/JSLogBridge;


# direct methods
.method constructor <init>(Lcom/taobao/tlog/adapter/JSLogBridge;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/taobao/tlog/adapter/JSLogBridge$LogBody;->this$0:Lcom/taobao/tlog/adapter/JSLogBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
