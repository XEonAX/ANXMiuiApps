.class public Lcom/kingsoft/iciba/powerwordocrjar/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static a:Ljava/lang/String;

.field private static b:Lcom/kingsoft/iciba/powerwordocrjar/h;


# instance fields
.field private c:Ljava/util/Vector;

.field private d:Z

.field private e:Lcom/kingsoft/iciba/powerwordocrjar/i;

.field private f:Ljava/util/concurrent/ConcurrentHashMap;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetManage"

    sput-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->g:Ljava/lang/Object;

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/i;

    invoke-direct {v0, p0}, Lcom/kingsoft/iciba/powerwordocrjar/i;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/h;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->e:Lcom/kingsoft/iciba/powerwordocrjar/i;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/kingsoft/iciba/powerwordocrjar/h;
    .locals 2

    const-class v1, Lcom/kingsoft/iciba/powerwordocrjar/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->b:Lcom/kingsoft/iciba/powerwordocrjar/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-direct {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;-><init>()V

    sput-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->b:Lcom/kingsoft/iciba/powerwordocrjar/h;

    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->b:Lcom/kingsoft/iciba/powerwordocrjar/h;

    iget-object v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->e:Lcom/kingsoft/iciba/powerwordocrjar/i;

    invoke-virtual {v0}, Lcom/kingsoft/iciba/powerwordocrjar/i;->start()V

    :cond_0
    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->b:Lcom/kingsoft/iciba/powerwordocrjar/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->c:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/j;)V

    return-void
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/String;IZ)V

    return-void
.end method

.method private a(Lcom/kingsoft/iciba/powerwordocrjar/j;)V
    .locals 5

    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->a:Ljava/lang/String;

    const-string v1, "onRequestFailed()  .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/j;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, ""

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/e;

    invoke-interface {v0, p1, v1}, Lcom/kingsoft/iciba/powerwordocrjar/e;->a(Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/String;IZ)V
    .locals 4

    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestFinished()  ..requestEntry._type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/kingsoft/iciba/powerwordocrjar/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestFinished()  ..registerMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/j;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/e;

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/iciba/powerwordocrjar/e;->a(Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/kingsoft/iciba/powerwordocrjar/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->d:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/kingsoft/iciba/powerwordocrjar/j;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->e:Lcom/kingsoft/iciba/powerwordocrjar/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/iciba/powerwordocrjar/i;->a(Lcom/kingsoft/iciba/powerwordocrjar/j;IZ)V

    return-void
.end method

.method public a(Ljava/lang/Integer;Lcom/kingsoft/iciba/powerwordocrjar/e;)V
    .locals 3

    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNet()  key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", net:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Integer;Lcom/kingsoft/iciba/powerwordocrjar/e;)V
    .locals 3

    sget-object v0, Lcom/kingsoft/iciba/powerwordocrjar/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterNet()  key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", net:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/e;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    return v0
.end method
