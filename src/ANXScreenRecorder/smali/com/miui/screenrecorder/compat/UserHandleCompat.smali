.class public Lcom/miui/screenrecorder/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final MU_ENABLED:Z = true

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/miui/screenrecorder/compat/UserHandleCompat;->getAllUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/compat/UserHandleCompat;->ALL:Landroid/os/UserHandle;

    .line 18
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/miui/screenrecorder/compat/UserHandleCompat;->getAllUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/compat/UserHandleCompat;->CURRENT:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllUserHandle(I)Landroid/os/UserHandle;
    .locals 6
    .param p0, "num"    # I

    .prologue
    .line 26
    :try_start_0
    const-string v3, "android.os.UserHandle"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 28
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 44
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static final myUserId()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/miui/screenrecorder/compat/UserHandleCompat;->getUserId(I)I

    move-result v0

    return v0
.end method
