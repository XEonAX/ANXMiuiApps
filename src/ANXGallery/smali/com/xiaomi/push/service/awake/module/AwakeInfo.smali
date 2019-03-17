.class public Lcom/xiaomi/push/service/awake/module/AwakeInfo;
.super Ljava/lang/Object;
.source "AwakeInfo.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAwakeInfo:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mTargetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAwakeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mAwakeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAction"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mAction:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setAwakeInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAwakeInfo"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mAwakeInfo:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mClassName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mClassName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTargetPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTargetPackageName"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->mTargetPackageName:Ljava/lang/String;

    .line 21
    return-void
.end method
