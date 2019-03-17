.class public Lcom/miui/gallery/cloud/policy/SyncPolicyManager;
.super Ljava/lang/Object;
.source "SyncPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/policy/SyncPolicyManager$Singleton;
    }
.end annotation


# instance fields
.field private mPolicies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/cloud/syncstate/SyncType;",
            "Lcom/miui/gallery/cloud/policy/IPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->mPolicies:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v3

    const-string v4, "backup-policies"

    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;

    .line 29
    .local v0, "policies":Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;
    const-string v3, "SyncPolicyManager"

    const-string v4, "policies %s"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncType;->values()[Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 31
    .local v2, "type":Lcom/miui/gallery/cloud/syncstate/SyncType;
    new-instance v1, Lcom/miui/gallery/cloud/policy/PolicyImpl;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/cloud/policy/PolicyImpl;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncType;Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;)V

    .line 32
    .local v1, "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    invoke-interface {v1}, Lcom/miui/gallery/cloud/policy/IPolicy;->getType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->addPolicy(Lcom/miui/gallery/cloud/syncstate/SyncType;Lcom/miui/gallery/cloud/policy/IPolicy;)V

    .line 30
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 31
    .end local v1    # "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncType;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->getPolicy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    move-result-object v3

    goto :goto_1

    .line 34
    .end local v2    # "type":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/policy/SyncPolicyManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/policy/SyncPolicyManager$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/policy/SyncPolicyManager;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager$Singleton;->access$100()Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPolicy(Lcom/miui/gallery/cloud/syncstate/SyncType;Lcom/miui/gallery/cloud/policy/IPolicy;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/cloud/syncstate/SyncType;
    .param p2, "policy"    # Lcom/miui/gallery/cloud/policy/IPolicy;

    .prologue
    .line 37
    if-nez p2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->mPolicies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPolicy(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/policy/IPolicy;
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->mPolicies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/policy/IPolicy;

    return-object v0
.end method
