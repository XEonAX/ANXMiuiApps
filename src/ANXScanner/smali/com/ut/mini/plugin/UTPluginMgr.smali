.class public Lcom/ut/mini/plugin/UTPluginMgr;
.super Ljava/lang/Object;
.source "UTPluginMgr.java"

# interfaces
.implements Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/plugin/UTPluginMgr$a;
    }
.end annotation


# static fields
.field public static final PARTNERPLUGIN_UTPREF:Ljava/lang/String; = "com.ut.mini.perf.UTPerfPlugin"

.field private static a:Lcom/ut/mini/plugin/UTPluginMgr;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ut/mini/plugin/UTPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ut/mini/plugin/UTPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/ut/mini/plugin/UTPluginMgr;

    invoke-direct {v0}, Lcom/ut/mini/plugin/UTPluginMgr;-><init>()V

    sput-object v0, Lcom/ut/mini/plugin/UTPluginMgr;->a:Lcom/ut/mini/plugin/UTPluginMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->b:Landroid/os/HandlerThread;

    .line 26
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->o:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/ut/mini/plugin/UTPluginMgr$1;

    invoke-direct {v0, p0}, Lcom/ut/mini/plugin/UTPluginMgr$1;-><init>(Lcom/ut/mini/plugin/UTPluginMgr;)V

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->p:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V

    .line 49
    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UT-PLUGIN-ASYNC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->b:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/ut/mini/plugin/UTPluginMgr$2;

    iget-object v1, p0, Lcom/ut/mini/plugin/UTPluginMgr;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ut/mini/plugin/UTPluginMgr$2;-><init>(Lcom/ut/mini/plugin/UTPluginMgr;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method private a()Lcom/ut/mini/plugin/UTPluginContext;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/ut/mini/plugin/UTPluginContext;

    invoke-direct {v0}, Lcom/ut/mini/plugin/UTPluginContext;-><init>()V

    .line 161
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/plugin/UTPluginContext;->setContext(Landroid/content/Context;)V

    .line 162
    invoke-static {}, Lcom/alibaba/mtl/log/d/i;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {}, Lcom/alibaba/mtl/log/d/i;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/plugin/UTPluginContext;->setDebugLogFlag(Z)V

    .line 165
    :cond_0
    return-object v0
.end method

.method private declared-synchronized a(ILcom/ut/mini/plugin/UTPluginContextValueDispatchDelegate;)V
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/plugin/UTPlugin;

    .line 107
    invoke-virtual {v0}, Lcom/ut/mini/plugin/UTPlugin;->getPluginContext()Lcom/ut/mini/plugin/UTPluginContext;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/ut/mini/plugin/UTPluginContextValueDispatchDelegate;->onPluginContextValueChange(Lcom/ut/mini/plugin/UTPluginContext;)V

    .line 108
    invoke-virtual {v0, p1}, Lcom/ut/mini/plugin/UTPlugin;->onPluginContextValueUpdate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I[I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 195
    .line 196
    if-eqz p2, :cond_1

    .line 197
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p2, v1

    .line 198
    if-ne v3, p1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 197
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/ut/mini/plugin/UTPluginMgr;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/ut/mini/plugin/UTPluginMgr;->a:Lcom/ut/mini/plugin/UTPluginMgr;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispatchPluginMsg(ILjava/lang/Object;)Z
    .locals 7
    .param p1, "aMsgId"    # I
    .param p2, "aMsgObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/plugin/UTPluginMgr;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/ut/mini/plugin/UTPluginMgr;->L()V

    .line 210
    :cond_0
    const/4 v4, 0x0

    .line 211
    iget-object v1, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 212
    iget-object v1, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/plugin/UTPlugin;

    .line 213
    invoke-virtual {v1}, Lcom/ut/mini/plugin/UTPlugin;->returnRequiredMsgIds()[I

    move-result-object v2

    .line 214
    if-eqz v2, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/ut/mini/plugin/UTPluginMgr;->a(I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    if-eq p1, v3, :cond_1

    iget-object v2, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    .line 218
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    :cond_1
    :try_start_1
    instance-of v2, p2, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;

    if-eqz v2, :cond_3

    .line 221
    move-object v0, p2

    check-cast v0, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;

    move-object v2, v0

    .line 222
    invoke-virtual {v2, v1}, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->isMatchPlugin(Lcom/ut/mini/plugin/UTPlugin;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {v2, v1}, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->getDispatchObject(Lcom/ut/mini/plugin/UTPlugin;)Ljava/lang/Object;

    move-result-object v2

    .line 225
    invoke-virtual {v1, p1, v2}, Lcom/ut/mini/plugin/UTPlugin;->onPluginMsgArrivedFromSDK(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    move v4, v1

    .line 248
    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/ut/mini/plugin/UTPlugin;->onPluginMsgArrivedFromSDK(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v4

    .line 233
    goto :goto_2

    .line 236
    :cond_4
    new-instance v2, Lcom/ut/mini/plugin/UTPluginMgr$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/ut/mini/plugin/UTPluginMgr$a;-><init>(Lcom/ut/mini/plugin/UTPluginMgr$1;)V

    .line 237
    invoke-virtual {v2, p1}, Lcom/ut/mini/plugin/UTPluginMgr$a;->g(I)V

    .line 238
    invoke-virtual {v2, p2}, Lcom/ut/mini/plugin/UTPluginMgr$a;->c(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v2, v1}, Lcom/ut/mini/plugin/UTPluginMgr$a;->a(Lcom/ut/mini/plugin/UTPlugin;)V

    .line 241
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 242
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->what:I

    .line 243
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/ut/mini/plugin/UTPluginMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 245
    goto :goto_2

    .line 250
    :cond_5
    monitor-exit p0

    return v4

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method public isPartnerPluginExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aPluginClassPath"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 301
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 306
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 311
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 316
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 321
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 326
    return-void
.end method

.method public onSwitchBackground()V
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ut/mini/plugin/UTPluginMgr;->dispatchPluginMsg(ILjava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public onSwitchForeground()V
    .locals 2

    .prologue
    .line 290
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ut/mini/plugin/UTPluginMgr;->dispatchPluginMsg(ILjava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public declared-synchronized registerPlugin(Lcom/ut/mini/plugin/UTPlugin;Z)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/plugin/UTPlugin;
    .param p2, "aAsyncMode"    # Z

    .prologue
    .line 170
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/ut/mini/plugin/UTPluginMgr;->a()Lcom/ut/mini/plugin/UTPluginContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ut/mini/plugin/UTPlugin;->a(Lcom/ut/mini/plugin/UTPluginContext;)V

    .line 172
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    if-nez p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/ut/mini/plugin/UTPlugin;->onRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runPartnerPlugin()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 140
    instance-of v3, v1, Lcom/ut/mini/plugin/UTPlugin;

    if-eqz v3, :cond_0

    .line 141
    check-cast v1, Lcom/ut/mini/plugin/UTPlugin;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/ut/mini/plugin/UTPluginMgr;->registerPlugin(Lcom/ut/mini/plugin/UTPlugin;Z)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runPartnerPlugin[OK]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/ut/mini/plugin/UTPluginMgr;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method public declared-synchronized unregisterPlugin(Lcom/ut/mini/plugin/UTPlugin;)V
    .locals 1
    .param p1, "aPlugin"    # Lcom/ut/mini/plugin/UTPlugin;

    .prologue
    .line 182
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p1}, Lcom/ut/mini/plugin/UTPlugin;->onUnRegistered()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ut/mini/plugin/UTPlugin;->a(Lcom/ut/mini/plugin/UTPluginContext;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    .line 189
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMgr;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_1
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePluginContextValue(I)V
    .locals 1
    .param p1, "aPluginContextKey"    # I

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 115
    :pswitch_0
    new-instance v0, Lcom/ut/mini/plugin/UTPluginMgr$3;

    invoke-direct {v0, p0}, Lcom/ut/mini/plugin/UTPluginMgr$3;-><init>(Lcom/ut/mini/plugin/UTPluginMgr;)V

    invoke-direct {p0, p1, v0}, Lcom/ut/mini/plugin/UTPluginMgr;->a(ILcom/ut/mini/plugin/UTPluginContextValueDispatchDelegate;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
