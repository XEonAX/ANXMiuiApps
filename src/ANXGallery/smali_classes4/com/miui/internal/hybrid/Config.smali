.class public Lcom/miui/internal/hybrid/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eD:Lcom/miui/internal/hybrid/Security;

.field private eE:Ljava/lang/String;

.field private eF:Ljava/lang/String;

.field private eG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/hybrid/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private eH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/hybrid/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Config;->eG:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Config;->eH:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/Config;->eI:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFeature(Lcom/miui/internal/hybrid/Feature;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eG:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Feature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public addPermission(Lcom/miui/internal/hybrid/Permission;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public clearFeatures()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    return-void
.end method

.method public clearPermissions()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    return-void
.end method

.method public clearPreferences()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eF:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Lcom/miui/internal/hybrid/Feature;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/hybrid/Feature;

    return-object p1
.end method

.method public getFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/hybrid/Feature;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eG:Ljava/util/Map;

    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lcom/miui/internal/hybrid/Permission;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/hybrid/Permission;

    return-object p1
.end method

.method public getPermissions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/hybrid/Permission;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eI:Ljava/util/Map;

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPreferences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eH:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurity()Lcom/miui/internal/hybrid/Security;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eD:Lcom/miui/internal/hybrid/Security;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eE:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->eF:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFeatures(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/hybrid/Feature;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->eG:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/hybrid/Permission;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->eI:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/internal/hybrid/Config;->eH:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public setPreferences(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->eH:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public setSecurity(Lcom/miui/internal/hybrid/Security;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->eD:Lcom/miui/internal/hybrid/Security;

    .line 25
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/internal/hybrid/Config;->eE:Ljava/lang/String;

    .line 33
    return-void
.end method
