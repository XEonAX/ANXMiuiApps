.class public final Lcom/xiaomi/metoknlp/b;
.super Ljava/lang/Object;
.source "CloudClient.java"


# static fields
.field private static G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/metoknlp/b;->G:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-static {}, Lcom/xiaomi/metoknlp/a/f;->Z()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/xiaomi/metoknlp/b;->w()Ljava/lang/String;

    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/base/profile"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "metoknlpsdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/xiaomi/metoknlp/b;->x()Ljava/util/Map;

    move-result-object v2

    .line 32
    :try_start_0
    invoke-static {v1, v2}, Lcom/xiaomi/metoknlp/a/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static w()Ljava/lang/String;
    .locals 8

    .prologue
    .line 40
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->V()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->X()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->getMcc()I

    move-result v1

    .line 44
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->getMnc()I

    move-result v0

    .line 45
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_1
    if-ltz v1, :cond_2

    if-gez v0, :cond_3

    .line 50
    :cond_2
    const/16 v1, 0x3e7

    .line 51
    const/16 v0, 0x63

    .line 53
    :cond_3
    const-string v5, "%s__%s__%d__%d__%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static x()Ljava/util/Map;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {}, Lcom/xiaomi/metoknlp/b;->w()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    sget-object v3, Lcom/xiaomi/metoknlp/b;->G:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 60
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->getImei()Ljava/lang/String;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-static {v3}, Lcom/xiaomi/metoknlp/a/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    sput-object v3, Lcom/xiaomi/metoknlp/b;->G:Ljava/lang/String;

    .line 68
    :cond_2
    sget-object v3, Lcom/xiaomi/metoknlp/b;->G:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 72
    :cond_3
    const-string v0, "CCPVER"

    sget-object v3, Lcom/xiaomi/metoknlp/b;->G:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "CCPINF"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 74
    goto :goto_0
.end method
