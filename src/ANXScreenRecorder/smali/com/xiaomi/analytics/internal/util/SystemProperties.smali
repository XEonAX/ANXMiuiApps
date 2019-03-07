.class public Lcom/xiaomi/analytics/internal/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemProperties"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 10
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 12
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-object v1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemProperties"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "get e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p1

    .line 17
    goto :goto_0
.end method
