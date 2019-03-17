.class final Lcom/kingsoft/iciba/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/kingsoft/iciba/a/a/a;

.field private synthetic d:Lcom/kingsoft/iciba/a/e;


# direct methods
.method constructor <init>(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Ljava/util/ArrayList;Lcom/kingsoft/iciba/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/a/g;->d:Lcom/kingsoft/iciba/a/e;

    iput-object p2, p0, Lcom/kingsoft/iciba/a/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingsoft/iciba/a/g;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/kingsoft/iciba/a/g;->c:Lcom/kingsoft/iciba/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/kingsoft/iciba/a/g;->d:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/a/g;->d:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v0

    new-instance v2, Lcom/kingsoft/iciba/a/h;

    iget-object v3, p0, Lcom/kingsoft/iciba/a/g;->d:Lcom/kingsoft/iciba/a/e;

    iget-object v4, p0, Lcom/kingsoft/iciba/a/g;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/iciba/a/g;->b:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/kingsoft/iciba/a/g;->c:Lcom/kingsoft/iciba/a/a/a;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingsoft/iciba/a/h;-><init>(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Ljava/util/ArrayList;Lcom/kingsoft/iciba/a/a/a;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kingsoft/iciba/a/g;->d:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
