.class public Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;
.super Ljava/lang/Object;
.source "ModuleBaseInfoManager.java"


# static fields
.field private static instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;


# instance fields
.field private mModuleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    invoke-direct {v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->instance:Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addModuleBase(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 39
    .local v0, "baseInfo":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 43
    .end local v0    # "baseInfo":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .locals 3
    .param p1, "moduleId"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 57
    .local v0, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 61
    .end local v0    # "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-object v0, v1

    goto :goto_0
.end method

.method public getModuleInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getModuleInfoListByWeight()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;>;"
    new-instance v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$2;-><init>(Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    return-object v0
.end method

.method public getModuleListBySortId()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;>;"
    new-instance v1, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager$1;-><init>(Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    return-object v0
.end method

.method public removeModuleBase(I)V
    .locals 3
    .param p1, "moduleId"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 48
    .local v0, "baseInfo":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->mModuleInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    .end local v0    # "baseInfo":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    :cond_1
    return-void
.end method
