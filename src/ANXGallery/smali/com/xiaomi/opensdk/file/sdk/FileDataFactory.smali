.class public Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;
.super Ljava/lang/Object;
.source "FileDataFactory.java"

# interfaces
.implements Lcn/kuaipan/android/kss/IDataFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createUploadRequestResult(Ljava/lang/String;)Lcn/kuaipan/android/kss/IKssUploadRequestResult;
    .locals 1
    .param p1, "requestStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {p1}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->create(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    move-result-object v0

    return-object v0
.end method
