.class Lmiui/vip/VipWebClient$2;
.super Landroid/content/BroadcastReceiver;
.source "VipWebClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipWebClient;


# direct methods
.method constructor <init>(Lmiui/vip/VipWebClient;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/vip/VipWebClient;

    .line 169
    iput-object p1, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string v1, "VipWebClient.mReceiver.onReceive, action = %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->hasAccount()Z

    move-result v1

    .line 176
    .local v1, "hasAccount":Z
    const-string v3, "VipWebClient.mReceiver.onReceive, login accounts changed, %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    if-eqz v1, :cond_0

    const-string v5, "remove"

    goto :goto_0

    :cond_0
    const-string v5, "add"

    :goto_0
    aput-object v5, v2, v4

    .line 176
    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v1, :cond_1

    .line 179
    iget-object v2, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lmiui/vip/VipWebClient;->access$200(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    .line 180
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v2

    iget-object v3, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    iget-object v3, v3, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v2, v3}, Lmiui/vip/VipService;->disconnect(Lmiui/vip/QueryCallback;)V

    goto :goto_1

    .line 182
    :cond_1
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v2

    iget-object v3, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    iget-object v3, v3, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v2, v3}, Lmiui/vip/VipService;->connect(Lmiui/vip/QueryCallback;)V

    .line 184
    .end local v1    # "hasAccount":Z
    :goto_1
    goto :goto_2

    .line 185
    :cond_2
    iget-object v1, p0, Lmiui/vip/VipWebClient$2;->this$0:Lmiui/vip/VipWebClient;

    invoke-static {v1}, Lmiui/vip/VipWebClient;->access$300(Lmiui/vip/VipWebClient;)V

    .line 187
    :goto_2
    return-void
.end method
