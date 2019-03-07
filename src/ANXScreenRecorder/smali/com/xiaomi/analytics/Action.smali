.class public abstract Lcom/xiaomi/analytics/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field protected static final ACTION:Ljava/lang/String; = "_action_"

.field protected static final CATEGORY:Ljava/lang/String; = "_category_"

.field protected static final EVENT_ID:Ljava/lang/String; = "_event_id_"

.field protected static final LABEL:Ljava/lang/String; = "_label_"

.field private static final TAG:Ljava/lang/String; = "Action"

.field protected static final VALUE:Ljava/lang/String; = "_value_"

.field private static sKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContent:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    .line 28
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-void
.end method

.method private ensureKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is built-in, please pick another key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method addContent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addContent int value e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addContent(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addContent long value e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addContent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addContent Object value e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addContent(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Action"

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "addContent e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected addEventId(Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "_event_id_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-object p0
.end method

.method addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addExtra e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;I)V

    .line 49
    return-object p0
.end method

.method public addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;J)V

    .line 55
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/analytics/Action;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-object p0
.end method

.method final getContent()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method final getExtra()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method
