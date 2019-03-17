.class public Lcom/xiaomi/metoknlp/a/a;
.super Ljava/lang/Object;
.source "NLPBuild.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/Class;

.field private static n:Ljava/lang/reflect/Field;

.field private static o:Ljava/lang/reflect/Field;

.field private static p:Ljava/lang/reflect/Field;

.field private static q:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 12
    const-string v2, "NLPBuild"

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->TAG:Ljava/lang/String;

    .line 13
    sput-boolean v0, Lcom/xiaomi/metoknlp/a/a;->DEBUG:Z

    .line 24
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->k:Ljava/lang/String;

    .line 25
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->l:Ljava/lang/String;

    .line 28
    :try_start_0
    const-string v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    .line 29
    sget-object v2, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    const-string v3, "IS_CTA_BUILD"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->n:Ljava/lang/reflect/Field;

    .line 30
    sget-object v2, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    const-string v3, "IS_ALPHA_BUILD"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->o:Ljava/lang/reflect/Field;

    .line 31
    sget-object v2, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    const-string v3, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->p:Ljava/lang/reflect/Field;

    .line 32
    sget-object v2, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    const-string v3, "IS_STABLE_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/metoknlp/a/a;->q:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    :goto_0
    if-eqz v0, :cond_0

    .line 41
    sput-object v4, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    .line 42
    sput-object v4, Lcom/xiaomi/metoknlp/a/a;->n:Ljava/lang/reflect/Field;

    .line 43
    sput-object v4, Lcom/xiaomi/metoknlp/a/a;->o:Ljava/lang/reflect/Field;

    .line 44
    sput-object v4, Lcom/xiaomi/metoknlp/a/a;->p:Ljava/lang/reflect/Field;

    .line 45
    sput-object v4, Lcom/xiaomi/metoknlp/a/a;->q:Ljava/lang/reflect/Field;

    .line 47
    :cond_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    move v0, v1

    .line 39
    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    move v0, v1

    .line 39
    goto :goto_0

    .line 37
    :catch_2
    move-exception v0

    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public static q()Z
    .locals 3

    .prologue
    .line 50
    sget-boolean v0, Lcom/xiaomi/metoknlp/a/a;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/metoknlp/a/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->k:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3rdROM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()Z
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->o:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 84
    :try_start_0
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->o:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    sget-boolean v1, Lcom/xiaomi/metoknlp/a/a;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is alpha version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t()Z
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->p:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->p:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    sget-boolean v1, Lcom/xiaomi/metoknlp/a/a;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is dev version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u()Z
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/xiaomi/metoknlp/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->q:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    sget-object v0, Lcom/xiaomi/metoknlp/a/a;->q:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->m:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    sget-boolean v1, Lcom/xiaomi/metoknlp/a/a;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/xiaomi/metoknlp/a/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is stable version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
