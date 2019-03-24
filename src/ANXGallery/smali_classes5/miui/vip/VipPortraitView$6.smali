.class Lmiui/vip/VipPortraitView$6;
.super Lcom/miui/internal/vip/VipInternalCallback;
.source "VipPortraitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method varargs constructor <init>(Lmiui/vip/VipPortraitView;[I)V
    .locals 0
    .param p1, "this$0"    # Lmiui/vip/VipPortraitView;
    .param p2, "types"    # [I

    .line 182
    iput-object p1, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0, p2}, Lcom/miui/internal/vip/VipInternalCallback;-><init>([I)V

    return-void
.end method


# virtual methods
.method public onAchievements(ILjava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 194
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v0, v0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    iget-object v1, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v1, v1, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    invoke-static {v0, p2, v1}, Lmiui/vip/VipPortraitView;->access$100(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$200(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onBanners(ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p3, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 225
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v0, v0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    iget-object v1, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iget-object v1, v1, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    invoke-static {v0, p2, v1}, Lmiui/vip/VipPortraitView;->access$100(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$400(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$500(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V
    .locals 5
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

    .line 201
    .local p3, "achievements":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    const-string v0, "VipPortraitView.onConnected, serviceAvailable = %s, user = %s, achievements = %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 202
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 201
    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    iput-boolean p1, v0, Lmiui/vip/VipPortraitView;->mServiceAvailable:Z

    .line 204
    if-eqz p1, :cond_3

    .line 205
    const-string v0, "VipPortraitView.onConnected, before setAchievements"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {p3}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0, p3}, Lmiui/vip/VipPortraitView;->access$200(Lmiui/vip/VipPortraitView;Ljava/util/List;)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->queryAchievements()V

    .line 211
    :goto_1
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->queryBanners()V

    .line 212
    const-string v0, "VipPortraitView.onConnected, before setVipLevel"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    if-eqz p2, :cond_2

    .line 214
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$000(Lmiui/vip/VipPortraitView;Lmiui/vip/VipUserInfo;)V

    goto :goto_2

    .line 216
    :cond_2
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->queryUserVipInfo()V

    goto :goto_2

    .line 219
    :cond_3
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0}, Lmiui/vip/VipPortraitView;->access$300(Lmiui/vip/VipPortraitView;)V

    .line 221
    :goto_2
    return-void
.end method

.method public onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "user"    # Lmiui/vip/VipUserInfo;
    .param p3, "errMsg"    # Ljava/lang/String;

    .line 186
    const-string v0, "VipPortraitView.onUserInfo, code = %d, user = %s, errMsg = %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    if-nez p1, :cond_0

    .line 188
    iget-object v0, p0, Lmiui/vip/VipPortraitView$6;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v0, p2}, Lmiui/vip/VipPortraitView;->access$000(Lmiui/vip/VipPortraitView;Lmiui/vip/VipUserInfo;)V

    .line 190
    :cond_0
    return-void
.end method
