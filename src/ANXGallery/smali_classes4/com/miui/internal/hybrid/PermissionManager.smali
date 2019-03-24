.class public Lcom/miui/internal/hybrid/PermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eU:Lcom/miui/internal/hybrid/Config;

.field private fF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->fF:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/miui/internal/hybrid/PermissionManager;->eU:Lcom/miui/internal/hybrid/Config;

    .line 20
    return-void
.end method

.method private l(Ljava/lang/String;)Z
    .locals 8

    .line 24
    nop

    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 27
    nop

    .line 28
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string p1, "*"

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->eU:Lcom/miui/internal/hybrid/Config;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Config;->getPermissions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/hybrid/Permission;

    .line 35
    invoke-virtual {v3}, Lcom/miui/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 36
    nop

    .line 37
    const-string v5, "*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    const-string v4, "*"

    goto :goto_2

    .line 40
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 42
    :goto_2
    invoke-virtual {v3}, Lcom/miui/internal/hybrid/Permission;->isApplySubdomains()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 43
    const-string v3, "\\."

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45
    const/4 v5, 0x1

    array-length v6, v4

    array-length v7, v3

    if-lt v6, v7, :cond_4

    .line 46
    nop

    .line 47
    move v2, v5

    :goto_3
    array-length v6, v3

    if-gt v2, v6, :cond_3

    .line 48
    array-length v6, v4

    sub-int/2addr v6, v2

    aget-object v6, v4, v6

    array-length v7, v3

    sub-int/2addr v7, v2

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 49
    nop

    .line 50
    nop

    .line 54
    move v2, v1

    goto :goto_4

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 54
    :cond_3
    move v2, v5

    :cond_4
    :goto_4
    goto :goto_5

    .line 55
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    :goto_5
    if-eqz v2, :cond_6

    .line 58
    goto :goto_6

    .line 60
    :cond_6
    goto :goto_1

    .line 61
    :cond_7
    :goto_6
    return v2
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->fF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->fF:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/PermissionManager;->l(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/PermissionManager;->fF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
