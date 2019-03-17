.class public Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
.super Ljava/lang/Object;
.source "ServerUnModifyAlbumsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerUnModifyAlbum"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mServerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->mServerId:J

    .line 75
    iput-object p3, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->mName:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->mServerId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerUnModifyAlbum{mServerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->mServerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
