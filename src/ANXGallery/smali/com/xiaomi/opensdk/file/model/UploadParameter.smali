.class public Lcom/xiaomi/opensdk/file/model/UploadParameter;
.super Ljava/lang/Object;
.source "UploadParameter.java"


# instance fields
.field private mKssUploadString:Ljava/lang/String;

.field private mUploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setKssUploadString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKssUploadString"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mKssUploadString:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUploadId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mUploadId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mKssUploadString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "storage":Lorg/json/JSONObject;
    return-object v0
.end method
