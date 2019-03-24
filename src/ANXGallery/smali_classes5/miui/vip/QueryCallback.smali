.class public Lmiui/vip/QueryCallback;
.super Ljava/lang/Object;
.source "QueryCallback.java"


# instance fields
.field mMonitorTypes:J


# direct methods
.method public varargs constructor <init>([I)V
    .locals 4
    .param p1, "types"    # [I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    .line 25
    iget-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    .line 26
    invoke-virtual {p0, p1}, Lmiui/vip/QueryCallback;->addMonitorTypes([I)V

    .line 27
    return-void
.end method


# virtual methods
.method public varargs addMonitorTypes([I)V
    .locals 7
    .param p1, "types"    # [I

    .line 73
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 74
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 75
    .local v2, "type":I
    iget-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    int-to-long v5, v2

    or-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    .line 74
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public isMonitorType(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 89
    iget-wide v0, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAchievements(ILjava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 61
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    return-void
.end method

.method public onBanners(ILjava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 70
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    return-void
.end method

.method public onConnected(ZLmiui/vip/VipUserInfo;Ljava/util/List;)V
    .locals 0
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

    .line 43
    .local p3, "achievementList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    return-void
.end method

.method public onLevelByPhoneNumber(ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p3, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/vip/VipPhoneLevel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipPhoneLevel;>;"
    return-void
.end method

.method public onUserInfo(ILmiui/vip/VipUserInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "user"    # Lmiui/vip/VipUserInfo;
    .param p3, "errMsg"    # Ljava/lang/String;

    .line 36
    return-void
.end method

.method public varargs removeMonitorTypes([I)V
    .locals 7
    .param p1, "types"    # [I

    .line 81
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 83
    .local v2, "type":I
    iget-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    xor-int/lit8 v5, v2, -0x1

    int-to-long v5, v5

    and-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/vip/QueryCallback;->mMonitorTypes:J

    .line 82
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method
