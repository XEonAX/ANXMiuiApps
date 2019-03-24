.class public final Lmiui/provider/ExtraNetwork$DataUsageDetail;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageDetail"
.end annotation


# instance fields
.field public monthTotal:J

.field public monthUsed:J

.field public monthWarning:J

.field public todayUsed:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0
    .param p1, "monthTotal"    # J
    .param p3, "monthUsed"    # J
    .param p5, "monthWarning"    # J
    .param p7, "todayUsed"    # J

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-wide p1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    .line 592
    iput-wide p3, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    .line 593
    iput-wide p5, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthWarning:J

    .line 594
    iput-wide p7, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    .line 595
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 599
    const-string v0, "monthTotal:%s, monthUsed:%s, monthWarning:%s, todayUsed:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthWarning:J

    .line 600
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 599
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
