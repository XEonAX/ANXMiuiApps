.class Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;
.super Ljava/lang/Object;
.source "PushMessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->uploadAppLog(Landroid/content/Context;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/PushMessageProcessor;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->this$0:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$packageNames:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1059
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$packageNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1060
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$packageNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1059
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    if-lez v0, :cond_2

    .line 1065
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1067
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$packageNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1068
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->this$0:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4, v1}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->access$000(Lcom/xiaomi/mipush/sdk/PushMessageProcessor;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1072
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1073
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1075
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method
