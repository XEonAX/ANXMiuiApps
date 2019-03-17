.class public Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "BackupPolicisStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$Policy;,
        Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;
    }
.end annotation


# instance fields
.field private mPolicies:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private transient mPoliciesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPoliciesMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPoliciesMap:Ljava/util/HashMap;

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPolicies:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    .line 129
    .local v0, "policy":Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPoliciesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    .end local v0    # "policy":Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPoliciesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 135
    :cond_2
    return-void
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPoliciesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy$PolicyWrapper;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupPolicisStrategy{mPolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;->mPolicies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
