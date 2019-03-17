.class public Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;
.super Ljava/lang/Object;
.source "ExtraPhotoWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;
    }
.end annotation


# static fields
.field private static sWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;


# instance fields
.field private mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

.field private mHasBindService:Z

.field private mStartCallback:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mHasBindService:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mHasBindService:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->callbackStarted(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Lcom/miui/extraphoto/sdk/IExtraPhotoService;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mStartCallback:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;
    .param p1, "x1"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mStartCallback:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$1;-><init>(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method private callbackStarted(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 98
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$3;-><init>(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Z)V

    .line 116
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->sWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-direct {v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->sWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .line 41
    :cond_0
    sget-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->sWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "ExtraPhotoWrapper"

    const-string v1, "service has been initialized"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mStartCallback:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->bindService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private releaseEcho()V
    .locals 3

    .prologue
    .line 276
    const-string v1, "ExtraPhotoWrapper"

    const-string v2, "releaseEcho"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v1}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->releaseEcho()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private transFunc2Id(Lcom/miui/extraphoto/sdk/ExtraFunc;)I
    .locals 2
    .param p1, "func"    # Lcom/miui/extraphoto/sdk/ExtraFunc;

    .prologue
    .line 193
    sget-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$4;->$SwitchMap$com$miui$extraphoto$sdk$ExtraFunc:[I

    invoke-virtual {p1}, Lcom/miui/extraphoto/sdk/ExtraFunc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 195
    :pswitch_0
    const v0, 0x7f120004

    goto :goto_0

    .line 197
    :pswitch_1
    const v0, 0x7f120019

    goto :goto_0

    .line 199
    :pswitch_2
    const v0, 0x7f120005

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$2;-><init>(Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public echo(Ljava/lang/String;Lcom/miui/extraphoto/sdk/BaseEchoListener;Z)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;
    .param p3, "atFirst"    # Z

    .prologue
    .line 221
    const-string v1, "ExtraPhotoWrapper"

    const-string v2, "echo %s, %s, %s"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, p1, p2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->echo(Ljava/lang/String;Lcom/miui/extraphoto/sdk/IEchoListener;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isExtraCamera()Z
    .locals 5

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v2, :cond_0

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v2}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->isExtraCamera()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 150
    :cond_0
    :goto_0
    const-string v2, "ExtraPhotoWrapper"

    const-string v3, "isExtraCamera %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ExtraPhotoWrapper"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExtraPhotoWrapper"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isExtraPhoto(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v2, :cond_0

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v2, p1}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->isExtraPhoto(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 165
    :cond_0
    :goto_0
    const-string v2, "ExtraPhotoWrapper"

    const-string v3, "isExtraPhoto %s, %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ExtraPhotoWrapper"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExtraPhotoWrapper"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public needEcho(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v2, :cond_0

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v2, p1}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->needEcho(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 216
    :cond_0
    :goto_0
    const-string v2, "ExtraPhotoWrapper"

    const-string v3, "needEcho %s, %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ExtraPhotoWrapper"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExtraPhotoWrapper"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 125
    const-string v0, "ExtraPhotoWrapper"

    const-string v1, "onServiceConnected %s"

    invoke-static {v0, v1, p2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-static {p2}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->callbackStarted(Z)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->callbackStarted(Z)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 136
    const-string v0, "ExtraPhotoWrapper"

    const-string v1, "onServiceDisconnected %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public resolveExtraFuncs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v5, :cond_1

    .line 173
    :try_start_0
    iget-object v5, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v5}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->resolveExtraFuncs()Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "funcs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/sdk/ExtraFunc;>;"
    if-eqz v2, :cond_1

    .line 175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/extraphoto/sdk/ExtraFunc;

    .line 176
    .local v1, "func":Lcom/miui/extraphoto/sdk/ExtraFunc;
    invoke-direct {p0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->transFunc2Id(Lcom/miui/extraphoto/sdk/ExtraFunc;)I

    move-result v3

    .line 177
    .local v3, "id":I
    if-lez v3, :cond_0

    .line 178
    const-string v6, "ExtraPhotoWrapper"

    const-string v7, "resolveExtraFuncs %s"

    invoke-virtual {v1}, Lcom/miui/extraphoto/sdk/ExtraFunc;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 183
    .end local v1    # "func":Lcom/miui/extraphoto/sdk/ExtraFunc;
    .end local v2    # "funcs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/sdk/ExtraFunc;>;"
    .end local v3    # "id":I
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "ExtraPhotoWrapper"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-object v4

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ExtraPhotoWrapper"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public start(Landroid/content/Context;Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    .prologue
    .line 262
    const-string v0, "ExtraPhotoWrapper"

    const-string v1, "resumeEcho"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->init(Landroid/content/Context;Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;)V

    .line 264
    return-void
.end method

.method public stop(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 268
    const-string v0, "ExtraPhotoWrapper"

    const-string v1, "pauseEcho"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->releaseEcho()V

    .line 270
    iput-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mStartCallback:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;

    .line 271
    iput-object v2, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    .line 272
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->unbindService(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method public unregisterEchoListener(Lcom/miui/extraphoto/sdk/BaseEchoListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/miui/extraphoto/sdk/BaseEchoListener;

    .prologue
    .line 235
    const-string v1, "ExtraPhotoWrapper"

    const-string/jumbo v2, "unregisterEchoListener %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->mDualService:Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    invoke-interface {v1, p1}, Lcom/miui/extraphoto/sdk/IExtraPhotoService;->unregisterEchoListener(Lcom/miui/extraphoto/sdk/IEchoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraPhotoWrapper"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
