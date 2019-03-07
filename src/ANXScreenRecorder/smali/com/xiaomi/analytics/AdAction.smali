.class public Lcom/xiaomi/analytics/AdAction;
.super Lcom/xiaomi/analytics/TrackAction;
.source "AdAction.java"


# static fields
.field protected static final AD_MONITOR:Ljava/lang/String; = "_ad_monitor_"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/xiaomi/analytics/TrackAction;-><init>()V

    .line 15
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/AdAction;->setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/AdAction;->setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "adCategory"    # Ljava/lang/String;
    .param p2, "actionType"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/xiaomi/analytics/TrackAction;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/AdAction;->setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 21
    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/AdAction;->setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 22
    return-void
.end method


# virtual methods
.method public addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/analytics/AdAction;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "adMonitor":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 32
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 37
    const-string v2, "_ad_monitor_"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/analytics/AdAction;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v0    # "adMonitor":Ljava/lang/StringBuilder;
    :cond_3
    return-object p0
.end method
