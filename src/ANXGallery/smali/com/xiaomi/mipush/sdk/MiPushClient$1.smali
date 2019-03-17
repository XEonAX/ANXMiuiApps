.class final Lcom/xiaomi/mipush/sdk/MiPushClient$1;
.super Ljava/lang/Object;
.source "MiPushClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/PushConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appID:Ljava/lang/String;

.field final synthetic val$appToken:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appID:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 156
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->access$000(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appID:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$appToken:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v3, "Because of lack of necessary information, mi push can\'t be initialized"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Lcom/xiaomi/channel/commonutils/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lcom/xiaomi/channel/commonutils/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 165
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 169
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v3, "message_type"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v3, "error_type"

    const-string v4, "error_lack_of_permission"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v3, "error_message"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
