.class public Lcom/nexstreaming/app/common/nexasset/store/VendorList;
.super Ljava/lang/Object;
.source "VendorList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;
    }
.end annotation


# static fields
.field private static final KineMasterPackageName:Ljava/lang/String; = "com.nexstreaming.app.kinemasterfree"

.field private static final LOG_TAG:Ljava/lang/String; = "VendorList"

.field private static final assetStoreAppGlobalPackageName:Ljava/lang/String; = "com.nexstreaming.app.vasset.global"

.field private static final assetStoreAppServiceName:Ljava/lang/String; = ".AssetStoreService"

.field private static final assetStoreAppTestPackageName:Ljava/lang/String; = "com.nexstreaming.assetstore.test1"

.field private static instance:Lcom/nexstreaming/app/common/nexasset/store/VendorList;


# instance fields
.field private m_builtinVendors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builtinVendor()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v1, "NexStreaming"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.vasset.global"

    const-string v4, "com.nexstreaming.app.vasset.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "LGE"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.vasset.global"

    const-string v4, "com.nexstreaming.app.vasset.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "ZTE"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.zte.china"

    const-string v4, "com.nexstreaming.app.assetstore.zte.china.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "ZTEGlobal"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.zte.global"

    const-string v4, "com.nexstreaming.app.assetstore.zte.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "TINNO"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.tinno.china"

    const-string v4, "com.nexstreaming.app.assetstore.tinno.china.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "TINNOGlobal"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.tinno.global"

    const-string v4, "com.nexstreaming.app.assetstore.tinno.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "SEERSTECH"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.seerstech.global"

    const-string v4, "com.nexstreaming.app.assetstore.seerstech.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "APPChina"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.sp.china"

    const-string v4, "com.nexstreaming.app.assetstore.sp.china.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "APPGlobal"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.sp.global"

    const-string v4, "com.nexstreaming.app.assetstore.sp.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "XIAOMI"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.xiaomi.china"

    const-string v4, "com.nexstreaming.app.assetstore.xiaomi.china.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "XIAOMIGlobal"

    new-instance v2, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    const-string v3, "com.nexstreaming.app.assetstore.xiaomi.global"

    const-string v4, "com.nexstreaming.app.assetstore.xiaomi.global.AssetStoreService"

    const-string v5, "com.nexstreaming.app.kinemasterfree"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method public static getInstance()Lcom/nexstreaming/app/common/nexasset/store/VendorList;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->instance:Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->instance:Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    .line 26
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->instance:Lcom/nexstreaming/app/common/nexasset/store/VendorList;

    return-object v0
.end method


# virtual methods
.method public getAssetStoreAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->init()V

    .line 78
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->m_builtinVendors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    .line 79
    if-nez v0, :cond_0

    .line 80
    const-string v0, "com.nexstreaming.app.vasset.global"

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;->getAssetStoreAppPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAssetStoreAppServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->init()V

    .line 87
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->m_builtinVendors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    .line 88
    if-nez v0, :cond_0

    .line 89
    const-string v0, "com.nexstreaming.app.vasset.global.AssetStoreService"

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;->getAssetStoreAppServiceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKineMasterPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->init()V

    .line 96
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->m_builtinVendors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;

    .line 97
    if-nez v0, :cond_0

    .line 98
    const-string v0, "com.nexstreaming.app.kinemasterfree"

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/store/VendorList$vendor;->getKineMasterPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->m_builtinVendors:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->builtinVendor()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/store/VendorList;->m_builtinVendors:Ljava/util/Map;

    .line 74
    :cond_0
    return-void
.end method
