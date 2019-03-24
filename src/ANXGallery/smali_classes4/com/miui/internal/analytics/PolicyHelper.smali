.class public Lcom/miui/internal/analytics/PolicyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SPLITTER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "PolicyHelper"


# instance fields
.field private ap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/analytics/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder<",
            "Lcom/miui/internal/analytics/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->ap:Ljava/util/Map;

    .line 18
    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->aq:Lcom/miui/internal/analytics/ObjectBuilder;

    .line 22
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->aq:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/LastPolicy;

    const-string v2, "last"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 23
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->aq:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/NormalPolicy;

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 24
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->aq:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/CountPolicy;

    const-string v2, "count"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->ap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    return-void
.end method

.method public end()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->ap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->ap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Policy;

    invoke-virtual {v1}, Lcom/miui/internal/analytics/Policy;->end()V

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;
    .locals 4

    .line 33
    nop

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 36
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v2, v0

    if-lez v2, :cond_2

    .line 38
    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->ap:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Policy;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 40
    :goto_0
    if-nez v2, :cond_1

    .line 41
    iget-object v1, p0, Lcom/miui/internal/analytics/PolicyHelper;->aq:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v1, p1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Policy;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    if-eqz v1, :cond_2

    .line 43
    :try_start_2
    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->ap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lcom/miui/internal/analytics/Policy;->prepare()V
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 48
    :cond_1
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    .line 53
    move-object v1, v2

    goto :goto_1

    .line 51
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    goto :goto_3

    .line 51
    :catch_1
    move-exception p1

    .line 52
    :goto_2
    const-string v0, "PolicyHelper"

    const-string v2, "PatternSyntaxException catched when getPolicy"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_3
    :goto_3
    return-object v1
.end method
