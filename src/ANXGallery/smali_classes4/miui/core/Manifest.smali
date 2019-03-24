.class public Lmiui/core/Manifest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dH:Lmiui/module/Module;

.field private dT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/module/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private xD:Lmiui/module/Dependency;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmiui/core/Manifest;->dT:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lmiui/core/Manifest;->dT:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public clearDependencies()V
    .locals 1

    .line 64
    iget-object v0, p0, Lmiui/core/Manifest;->dT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    return-void
.end method

.method public getDependencies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/module/Dependency;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lmiui/core/Manifest;->dT:Ljava/util/Map;

    return-object v0
.end method

.method public getDependency(Ljava/lang/String;)Lmiui/module/Dependency;
    .locals 1

    .line 56
    iget-object v0, p0, Lmiui/core/Manifest;->dT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/module/Dependency;

    return-object p1
.end method

.method public getLevel()I
    .locals 1

    .line 28
    iget-object v0, p0, Lmiui/core/Manifest;->dH:Lmiui/module/Module;

    invoke-virtual {v0}, Lmiui/module/Module;->getLevel()I

    move-result v0

    return v0
.end method

.method public getModule()Lmiui/module/Module;
    .locals 1

    .line 32
    iget-object v0, p0, Lmiui/core/Manifest;->dH:Lmiui/module/Module;

    return-object v0
.end method

.method public getSdkDependency()Lmiui/module/Dependency;
    .locals 1

    .line 40
    iget-object v0, p0, Lmiui/core/Manifest;->xD:Lmiui/module/Dependency;

    return-object v0
.end method

.method public setDependencies(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/module/Dependency;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lmiui/core/Manifest;->dT:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public setModule(Lmiui/module/Module;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmiui/core/Manifest;->dH:Lmiui/module/Module;

    .line 37
    return-void
.end method

.method public setSdkDependency(Lmiui/module/Dependency;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lmiui/core/Manifest;->xD:Lmiui/module/Dependency;

    .line 45
    return-void
.end method
