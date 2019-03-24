.class public final Lmiui/provider/ExtraNetwork$PackageDetail;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageDetail"
.end annotation


# instance fields
.field public isSupport:Z

.field public packageRemained:J

.field public packageTotal:J

.field public packageUsed:J

.field public slotNum:I


# direct methods
.method public constructor <init>(JJJIZ)V
    .locals 0
    .param p1, "packageTotal"    # J
    .param p3, "packageUsed"    # J
    .param p5, "packageRemained"    # J
    .param p7, "slotNum"    # I
    .param p8, "isSupport"    # Z

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput-wide p1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageTotal:J

    .line 643
    iput-wide p3, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageUsed:J

    .line 644
    iput-wide p5, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageRemained:J

    .line 645
    iput p7, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->slotNum:I

    .line 646
    iput-boolean p8, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->isSupport:Z

    .line 647
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 651
    const-string v0, "packageTotal:%s, packageUsed:%s, packageRemained:%s, slotNum:%s, isSupport:%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageTotal:J

    .line 652
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageRemained:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->slotNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->isSupport:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 651
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
