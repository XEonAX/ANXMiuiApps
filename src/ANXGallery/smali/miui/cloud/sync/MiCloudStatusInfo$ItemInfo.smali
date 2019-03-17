.class public Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/MiCloudStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field private mLocalizedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mUsed:J

.field final synthetic this$0:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lmiui/cloud/sync/MiCloudStatusInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "localizedName"    # Ljava/lang/String;
    .param p4, "used"    # J

    .prologue
    .line 271
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    .line 274
    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    .line 275
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemInfo{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalizedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsed=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
