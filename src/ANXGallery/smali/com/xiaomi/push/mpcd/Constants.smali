.class public Lcom/xiaomi/push/mpcd/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String;

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String;

.field public static final cDataLock4Thread:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/mpcd/Constants;->cDataLock4Thread:Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRestarted:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 38
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/mpcd/Constants;->ACTION_PACKAGE_RESTARTED:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionChanged:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 40
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/mpcd/Constants;->ACTION_PACKAGE_CHANGED:Ljava/lang/String;

    .line 39
    return-void
.end method
