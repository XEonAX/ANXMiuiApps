.class public Lcom/xiaomi/scanner/debug/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static mInstance:Lcom/xiaomi/scanner/debug/LogHelper;


# instance fields
.field private mDebugMode:Z


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v5, p0, Lcom/xiaomi/scanner/debug/LogHelper;->mDebugMode:Z

    .line 10
    const-string v0, "android.os.SystemProperties"

    .line 11
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    const-string v1, "getBoolean"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "miuiscanner_debug"

    aput-object v4, v3, v5

    .line 12
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/debug/LogHelper;->mDebugMode:Z

    .line 14
    return-void
.end method

.method public static instance()Lcom/xiaomi/scanner/debug/LogHelper;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/xiaomi/scanner/debug/LogHelper;->mInstance:Lcom/xiaomi/scanner/debug/LogHelper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/LogHelper;

    invoke-direct {v0}, Lcom/xiaomi/scanner/debug/LogHelper;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/debug/LogHelper;->mInstance:Lcom/xiaomi/scanner/debug/LogHelper;

    .line 20
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/debug/LogHelper;->mInstance:Lcom/xiaomi/scanner/debug/LogHelper;

    return-object v0
.end method


# virtual methods
.method public getOverrideLevel()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/xiaomi/scanner/debug/LogHelper;->mDebugMode:Z

    return v0
.end method
