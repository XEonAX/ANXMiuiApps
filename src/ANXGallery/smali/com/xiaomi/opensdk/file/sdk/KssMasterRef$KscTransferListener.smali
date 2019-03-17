.class Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
.super Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;
.source "KssMasterRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KscTransferListener"
.end annotation


# instance fields
.field public mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

.field final synthetic this$0:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 0
    .param p2, "miCloudFileListener"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->this$0:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    invoke-direct {p0}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .line 216
    return-void
.end method


# virtual methods
.method public onDataReceived(JJ)V
    .locals 1
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;->onDataReceived(JJ)V

    .line 230
    :cond_0
    return-void
.end method

.method public onDataSended(JJ)V
    .locals 1
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;->onDataSended(JJ)V

    .line 223
    :cond_0
    return-void
.end method
