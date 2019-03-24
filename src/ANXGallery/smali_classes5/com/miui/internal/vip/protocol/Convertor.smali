.class public Lcom/miui/internal/vip/protocol/Convertor;
.super Ljava/lang/Object;
.source "Convertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toVipAchievement([Lcom/miui/internal/vip/protocol/Achievement;)Ljava/util/List;
    .locals 9
    .param p0, "list"    # [Lcom/miui/internal/vip/protocol/Achievement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/internal/vip/protocol/Achievement;",
            ")",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 23
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v1, "retList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    const/4 v2, 0x0

    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    .line 25
    .local v5, "src":Lcom/miui/internal/vip/protocol/Achievement;
    new-instance v6, Lmiui/vip/VipAchievement;

    invoke-direct {v6}, Lmiui/vip/VipAchievement;-><init>()V

    .line 26
    .local v6, "info":Lmiui/vip/VipAchievement;
    iget-wide v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->badgeId:J

    iput-wide v7, v6, Lmiui/vip/VipAchievement;->id:J

    .line 27
    iget-object v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v7, v7, Lcom/miui/internal/vip/protocol/ExtInfo;->iconUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    iput-object v7, v6, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    .line 28
    iget v7, v5, Lcom/miui/internal/vip/protocol/Achievement;->owned:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    iput-boolean v8, v6, Lmiui/vip/VipAchievement;->isOwned:Z

    .line 29
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .end local v5    # "src":Lcom/miui/internal/vip/protocol/Achievement;
    .end local v6    # "info":Lmiui/vip/VipAchievement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_3
    return-object v1

    .line 21
    .end local v1    # "retList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static toVipBanner([Lcom/miui/internal/vip/protocol/Banner;)Ljava/util/List;
    .locals 7
    .param p0, "srcList"    # [Lcom/miui/internal/vip/protocol/Banner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/internal/vip/protocol/Banner;",
            ")",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;"
        }
    .end annotation

    .line 35
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 40
    .local v3, "banner":Lcom/miui/internal/vip/protocol/Banner;
    new-instance v4, Lmiui/vip/VipBanner;

    invoke-direct {v4}, Lmiui/vip/VipBanner;-><init>()V

    .line 41
    .local v4, "vipBanner":Lmiui/vip/VipBanner;
    iget-wide v5, v3, Lcom/miui/internal/vip/protocol/Banner;->bannerId:J

    iput-wide v5, v4, Lmiui/vip/VipBanner;->id:J

    .line 42
    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->icon:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    .line 43
    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->name:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->name:Ljava/lang/String;

    .line 44
    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->info:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->info:Ljava/lang/String;

    .line 45
    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtInfo;->action:Lcom/miui/internal/vip/protocol/ExtAction;

    if-eqz v5, :cond_1

    .line 46
    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtInfo;->action:Lcom/miui/internal/vip/protocol/ExtAction;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtAction;->activity:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->action:Ljava/lang/String;

    .line 47
    iget-object v5, v3, Lcom/miui/internal/vip/protocol/Banner;->clientExtension:Lcom/miui/internal/vip/protocol/ExtInfo;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtInfo;->action:Lcom/miui/internal/vip/protocol/ExtAction;

    iget-object v5, v5, Lcom/miui/internal/vip/protocol/ExtAction;->extra:Ljava/lang/String;

    iput-object v5, v4, Lmiui/vip/VipBanner;->extraParams:Ljava/lang/String;

    .line 49
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v3    # "banner":Lcom/miui/internal/vip/protocol/Banner;
    .end local v4    # "vipBanner":Lmiui/vip/VipBanner;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    return-object v0

    .line 36
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toVipUserInfo(I)Lmiui/vip/VipUserInfo;
    .locals 1
    .param p0, "level"    # I

    .line 14
    new-instance v0, Lmiui/vip/VipUserInfo;

    invoke-direct {v0}, Lmiui/vip/VipUserInfo;-><init>()V

    .line 15
    .local v0, "user":Lmiui/vip/VipUserInfo;
    iput p0, v0, Lmiui/vip/VipUserInfo;->level:I

    .line 16
    return-object v0
.end method
