.class public Lcom/xiaomi/channel/commonutils/logger/DefaultAndroidLogger;
.super Ljava/lang/Object;
.source "DefaultAndroidLogger.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "xiaomi"

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/logger/DefaultAndroidLogger;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/logger/DefaultAndroidLogger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/logger/DefaultAndroidLogger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    return-void
.end method
