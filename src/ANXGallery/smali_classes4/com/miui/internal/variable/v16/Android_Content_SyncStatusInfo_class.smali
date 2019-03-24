.class public Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;
.super Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;
.source "SourceFile"


# static fields
.field private static final lo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final lp:Lmiui/reflect/Field;

.field private static final lq:Lmiui/reflect/Field;

.field private static final lr:Lmiui/reflect/Field;

.field private static final ls:Lmiui/reflect/Field;

.field private static final lt:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    nop

    .line 23
    :try_start_0
    const-string v0, "android.content.SyncStatusInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.SyncStatusInfo"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lo:Ljava/lang/Class;

    .line 30
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lo:Ljava/lang/Class;

    const-string v1, "pending"

    const-string v2, "Z"

    .line 31
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lp:Lmiui/reflect/Field;

    .line 33
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lo:Ljava/lang/Class;

    const-string v1, "initialize"

    const-string v2, "Z"

    .line 34
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lq:Lmiui/reflect/Field;

    .line 36
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lo:Ljava/lang/Class;

    const-string v1, "lastSuccessTime"

    const-string v2, "J"

    .line 37
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lr:Lmiui/reflect/Field;

    .line 39
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lo:Ljava/lang/Class;

    const-string v1, "lastFailureTime"

    const-string v2, "J"

    .line 40
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->ls:Lmiui/reflect/Field;

    .line 42
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lo:Ljava/lang/Class;

    const-string v1, "getLastFailureMesgAsInt"

    const-string v2, "(I)I"

    .line 43
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lt:Lmiui/reflect/Method;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialize(Ljava/lang/Object;)Z
    .locals 2

    .line 58
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lq:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.SyncStatusInfo.initialize"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 p1, 0x0

    return p1
.end method

.method public getLastFailureMesgAsInt(Ljava/lang/Object;I)I
    .locals 5

    .line 88
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lt:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.SyncStatusInfo.getLastFailureMesgAsInt"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return p2
.end method

.method public getLastFailureTime(Ljava/lang/Object;)J
    .locals 2

    .line 78
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->ls:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.SyncStatusInfo.lastFailureTime"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastSuccessTime(Ljava/lang/Object;)J
    .locals 2

    .line 68
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lr:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.SyncStatusInfo.lastSuccessTime"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPending(Ljava/lang/Object;)Z
    .locals 2

    .line 48
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_SyncStatusInfo_class;->lp:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.SyncStatusInfo.pending"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const/4 p1, 0x0

    return p1
.end method
