.class public Lcom/android/ex/camera2/portability/CameraAgentFactory;
.super Ljava/lang/Object;
.source "CameraAgentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    }
.end annotation


# static fields
.field private static final API_LEVEL_OVERRIDE_API1:Ljava/lang/String; = "1"

.field private static final API_LEVEL_OVERRIDE_API2:Ljava/lang/String; = "2"

.field private static final API_LEVEL_OVERRIDE_DEFAULT:Ljava/lang/String; = "0"

.field private static final API_LEVEL_OVERRIDE_KEY:Ljava/lang/String; = "camera2.portability.force_api"

.field private static final API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

.field private static final FIRST_SDK_WITH_API_2:I = 0x15

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidCameraAgentClientCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamAgntFact"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 46
    const-string v0, "camera2.portability.force_api"

    const-string v1, "0"

    .line 47
    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "api"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 111
    const-class v1, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p1

    .line 113
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p1, v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;-><init>()V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 116
    const/4 v0, 0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    .line 120
    :goto_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 118
    :cond_0
    :try_start_1
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 122
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne v0, v2, :cond_2

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable on this device"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable in this library"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 71
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    goto :goto_0
.end method

.method public static declared-synchronized recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V
    .locals 3
    .param p0, "api"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 139
    const-class v1, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    .line 141
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p0, v0, :cond_1

    .line 142
    sget v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit v1

    return-void

    .line 147
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne v0, v2, :cond_2

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable on this device"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 150
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Camera API_2 unavailable in this library"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2
    .param p0, "choice"    # Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .prologue
    .line 76
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "API level overridden by system property: forced to 1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 92
    :cond_0
    :goto_0
    return-object p0

    .line 79
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "API level overridden by system property: forced to 2"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    goto :goto_0

    .line 84
    :cond_2
    if-nez p0, :cond_3

    .line 85
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "null API level request, so assuming AUTO"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 88
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p0, v0, :cond_0

    .line 89
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    goto :goto_0
.end method
