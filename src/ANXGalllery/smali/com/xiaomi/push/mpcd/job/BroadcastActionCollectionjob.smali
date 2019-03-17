.class public Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "BroadcastActionCollectionjob.java"


# static fields
.field public static mChangedActions:Ljava/lang/String;

.field public static mRestartedActions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method private shrinkActionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "actionInfoType"    # Ljava/lang/String;
    .param p2, "actionStr"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    :cond_0
    const-string p2, ""

    .line 59
    .end local p2    # "actionStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 52
    .restart local p2    # "actionStr":Ljava/lang/String;
    :cond_2
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "actions":[Ljava/lang/String;
    array-length v2, v0

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 54
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0xa

    if-lt v1, v2, :cond_3

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move-object p2, p1

    .line 57
    goto :goto_0
.end method


# virtual methods
.method public collectInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    const-string v0, ""

    .line 27
    .local v0, "info":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/mpcd/Constants;->ACTION_PACKAGE_RESTARTED:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->shrinkActionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, ""

    sput-object v1, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    .line 32
    :cond_0
    sget-object v1, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/mpcd/Constants;->ACTION_PACKAGE_CHANGED:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->shrinkActionInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, ""

    sput-object v1, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    .line 37
    :cond_1
    return-object v0
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastAction:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xc

    return v0
.end method
