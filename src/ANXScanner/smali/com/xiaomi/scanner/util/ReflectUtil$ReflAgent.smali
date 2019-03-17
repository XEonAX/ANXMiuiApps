.class public Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/ReflectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflAgent"
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;

.field private mObject:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 4
    .param p0, "clsStr"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v1, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    invoke-direct {v1}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;-><init>()V

    .line 25
    .local v1, "reflAgent":Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "ReflectUtil"

    const-string v3, "getClass error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getObject(Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    new-instance v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    invoke-direct {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;-><init>()V

    .line 34
    .local v0, "reflAgent":Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    if-eqz p0, :cond_0

    .line 35
    iput-object p0, v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public booleanResult()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public varargs callMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    invoke-static {v1, p1, p2, p3}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-object p0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReflectUtil"

    const-string v2, "callObjectMethod error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public varargs callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    invoke-static {v1, p1, p2, p3}, Lcom/xiaomi/scanner/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-object p0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReflectUtil"

    const-string v2, "callStaticObjectMethod error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getObjectFiled(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/util/ReflectUtil;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-object p0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReflectUtil"

    const-string v2, "getObjectFiled error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStaticFiled(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/util/ReflectUtil;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-object p0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReflectUtil"

    const-string v2, "getStaticObjectField error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public intResult()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 115
    :goto_0
    return v1

    .line 111
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ReflectUtil"

    const-string v3, "intResult error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public longResult()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 119
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-wide v2

    .line 123
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ReflectUtil"

    const-string v4, "longResult error"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resultObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setResultToSelf()Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    .line 89
    return-object p0
.end method

.method public stringResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
