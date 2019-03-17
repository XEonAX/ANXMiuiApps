.class public Lcom/xiaomi/scanner/module/ModuleManagerImpl;
.super Ljava/lang/Object;
.source "ModuleManagerImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleManager;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mDefaultModuleId:I

.field private mModuleControllerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredModuleAgents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ModuleManagerImpl"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mModuleControllerMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getModule(ILcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "app"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mModuleControllerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    .line 66
    .local v0, "controller":Lcom/xiaomi/scanner/module/ModuleController;
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    move-result-object v1

    invoke-interface {v1, p2, p2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;->createModule(Landroid/content/Context;Lcom/xiaomi/scanner/app/AppController;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mModuleControllerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    .locals 4
    .param p1, "moduleId"    # I

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "moduleAgent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 54
    .local v0, "baseInfo":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "moduleAgent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    .line 57
    .restart local v1    # "moduleAgent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    :cond_0
    if-nez v1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    iget v3, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "moduleAgent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    .line 60
    .restart local v1    # "moduleAgent":Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;
    :cond_1
    return-object v1
.end method

.method public registerModule(Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;)V
    .locals 4
    .param p1, "agent"    # Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Registering a null ModuleAgent."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_0
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;->createModuleBaseInfo()Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 24
    .local v0, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ModuleManager: The module ID can not be -1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 29
    sget-object v1, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sort ID is registered already:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_2
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->addModuleBase(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;)V

    .line 33
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterModule(I)Z
    .locals 3
    .param p1, "moduleId"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 39
    .local v0, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    if-nez v0, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1

    .line 42
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->removeModuleBase(I)V

    .line 43
    iget-object v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mRegisteredModuleAgents:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getSortId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 44
    iget v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    if-ne p1, v1, :cond_1

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;->mDefaultModuleId:I

    .line 47
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
