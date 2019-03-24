.class public Lmiui/core/CompatibleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dv:Lmiui/core/Manifest;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p2, p3, p4}, Lmiui/core/CompatibleManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/Manifest;

    move-result-object p1

    iput-object p1, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    .line 36
    iput-object p3, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/core/Manifest;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    .line 30
    invoke-virtual {p2}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/Manifest;
    .locals 0

    .line 73
    invoke-static {p1, p2}, Lmiui/core/ManifestParser;->createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/Manifest;
    .locals 2

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 78
    invoke-static {p1, p2, p3}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p1

    return-object p1
.end method

.method private a(Lmiui/module/Dependency$Level;I)Z
    .locals 4

    .line 64
    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMaxLevel()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-nez v0, :cond_1

    .line 66
    const-string v1, "miuisdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but needs ["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMaxLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    return v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 86
    iget-object v0, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    invoke-virtual {v0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Module;->getLevel()I

    move-result v0

    return v0
.end method

.method public isCompatible()Z
    .locals 7

    .line 40
    iget-object v0, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    invoke-virtual {v0}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v0

    sget v1, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    invoke-direct {p0, v0, v1}, Lmiui/core/CompatibleManager;->a(Lmiui/module/Dependency$Level;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "miuisdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not compatible with sdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lmiui/core/CompatibleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 46
    const-string v0, "miuisdk"

    const-string v1, "package manager is not ready yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v2

    .line 49
    :cond_1
    iget-object v3, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    invoke-virtual {v3}, Lmiui/core/Manifest;->getDependencies()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    iget-object v5, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    invoke-virtual {v5, v4}, Lmiui/core/Manifest;->getDependency(Ljava/lang/String;)Lmiui/module/Dependency;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lmiui/module/Dependency;->getType()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0, v0, v4}, Lmiui/core/CompatibleManager;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/Manifest;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v5

    invoke-virtual {v6}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/module/Module;->getLevel()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lmiui/core/CompatibleManager;->a(Lmiui/module/Dependency$Level;I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 59
    :cond_3
    goto :goto_0

    .line 56
    :cond_4
    :goto_1
    const-string v0, "miuisdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/core/CompatibleManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not compatible with module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v1

    .line 60
    :cond_5
    return v2
.end method

.method public isCurrent()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lmiui/core/CompatibleManager;->dv:Lmiui/core/Manifest;

    invoke-virtual {v0}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Dependency;->getLevel()Lmiui/module/Dependency$Level;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/module/Dependency$Level;->getTargetLevel()I

    move-result v0

    sget v1, Lcom/miui/internal/util/PackageConstants;->CURRENT_SDK_LEVEL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
