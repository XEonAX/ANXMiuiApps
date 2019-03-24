.class Lmiui/vip/VipWebClient$3;
.super Lmiui/vip/QueryCallback;
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
.method varargs constructor <init>(Lmiui/vip/VipWebClient;[I)V
    .locals 0
    .param p1, "this$0"    # Lmiui/vip/VipWebClient;
    .param p2, "types"    # [I

    .line 216
    iput-object p1, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    invoke-direct {p0, p2}, Lmiui/vip/QueryCallback;-><init>([I)V

    return-void
.end method


# virtual methods
.method public onAchievements(ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p3, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 233
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    invoke-static {v0, p2}, Lmiui/vip/VipWebClient;->access$500(Lmiui/vip/VipWebClient;Ljava/util/List;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "serviceAvailable"    # Z
    .param p2, "user"    # Lmiui/vip/VipUserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lmiui/vip/VipUserInfo;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p3, "achievementList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    const-string v0, "VipWebClient.interceptRequest, onConnected, notify"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    invoke-static {v0, p2, p3}, Lmiui/vip/VipWebClient;->access$200(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    .line 222
    return-void
.end method

.method public onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "user"    # Lmiui/vip/VipUserInfo;
    .param p3, "errMsg"    # Ljava/lang/String;

    .line 226
    if-nez p1, :cond_0

    .line 227
    iget-object v0, p0, Lmiui/vip/VipWebClient$3;->this$0:Lmiui/vip/VipWebClient;

    invoke-static {v0, p2}, Lmiui/vip/VipWebClient;->access$400(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;)V

    .line 229
    :cond_0
    return-void
.end method
