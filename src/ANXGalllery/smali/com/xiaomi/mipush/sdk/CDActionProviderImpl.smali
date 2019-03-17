.class public Lcom/xiaomi/mipush/sdk/CDActionProviderImpl;
.super Ljava/lang/Object;
.source "CDActionProviderImpl.java"

# interfaces
.implements Lcom/xiaomi/push/mpcd/CDActionProvider;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/CDActionProviderImpl;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getRegSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/CDActionProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadNotification(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 1
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/CDActionProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 29
    return-void
.end method
