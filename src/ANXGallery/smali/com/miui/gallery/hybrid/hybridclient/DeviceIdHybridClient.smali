.class public Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient;
.super Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;
.source "DeviceIdHybridClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient$MiuiGalleryJSBridge;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getJavascriptInterfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;->getJavascriptInterfaces()Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .restart local v1    # "jsInterfacePairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;>;"
    :cond_0
    new-instance v0, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;

    const-string v2, "MiuiGalleryJSBridge"

    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient$MiuiGalleryJSBridge;

    invoke-direct {v3, p0}, Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient$MiuiGalleryJSBridge;-><init>(Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient;)V

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .local v0, "jsInterfacePair":Lcom/miui/gallery/hybrid/hybridclient/HybridClient$JsInterfacePair;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v1
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    return-object v0
.end method
