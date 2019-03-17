.class public Lcn/kuaipan/android/http/KscSpeedMonitor;
.super Ljava/lang/Object;
.source "KscSpeedMonitor.java"


# instance fields
.field private final mHost:Ljava/lang/String;

.field private mLatestUpdate:J

.field private final mManager:Lcn/kuaipan/android/http/KscSpeedManager;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/KscSpeedManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "speedManager"    # Lcn/kuaipan/android/http/KscSpeedManager;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mManager:Lcn/kuaipan/android/http/KscSpeedManager;

    .line 12
    iput-object p2, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mHost:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcn/kuaipan/android/http/KscSpeedManager;->current()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mLatestUpdate:J

    .line 14
    return-void
.end method


# virtual methods
.method public recode(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 26
    iget-object v0, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mManager:Lcn/kuaipan/android/http/KscSpeedManager;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcn/kuaipan/android/http/KscSpeedManager;->current()J

    move-result-wide v4

    .line 28
    .local v4, "current":J
    iget-object v0, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mManager:Lcn/kuaipan/android/http/KscSpeedManager;

    iget-object v1, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mHost:Ljava/lang/String;

    iget-wide v2, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mLatestUpdate:J

    long-to-float v6, p1

    invoke-virtual/range {v0 .. v6}, Lcn/kuaipan/android/http/KscSpeedManager;->recoder(Ljava/lang/String;JJF)V

    .line 29
    iput-wide v4, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mLatestUpdate:J

    .line 31
    .end local v4    # "current":J
    :cond_0
    return-void
.end method

.method public recode(JJJ)V
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "size"    # J

    .prologue
    .line 17
    iget-object v0, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mManager:Lcn/kuaipan/android/http/KscSpeedManager;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mManager:Lcn/kuaipan/android/http/KscSpeedManager;

    iget-object v1, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mHost:Ljava/lang/String;

    long-to-float v6, p5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcn/kuaipan/android/http/KscSpeedManager;->recoder(Ljava/lang/String;JJF)V

    .line 19
    iget-wide v0, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mLatestUpdate:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 20
    iput-wide p3, p0, Lcn/kuaipan/android/http/KscSpeedMonitor;->mLatestUpdate:J

    .line 23
    :cond_0
    return-void
.end method
