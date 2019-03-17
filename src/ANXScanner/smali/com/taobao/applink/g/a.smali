.class public Lcom/taobao/applink/g/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/taobao/applink/h/d;


# direct methods
.method public static declared-synchronized a()Lcom/taobao/applink/h/d;
    .locals 2

    const-class v0, Lcom/taobao/applink/g/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taobao/applink/g/a;->a:Lcom/taobao/applink/h/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/taobao/applink/h/d;)V
    .locals 2

    const-class v0, Lcom/taobao/applink/g/a;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/taobao/applink/g/a;->a:Lcom/taobao/applink/h/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
