.class Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "GallerySettingsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GallerySettingDownloadRequest"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 133
    const/16 v0, 0x3e9

    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$Setting;->getSyncUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;->deliverResponse([Ljava/lang/Object;)V

    .line 139
    return-void
.end method
