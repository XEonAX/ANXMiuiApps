.class public Lcom/alimama/tunion/a/a;
.super Ljava/lang/Object;
.source "ABTestMemCache.java"


# static fields
.field private static a:Lcom/alimama/tunion/a/a;


# instance fields
.field private b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x2800

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 28
    new-instance v1, Lcom/alimama/tunion/a/a$1;

    invoke-direct {v1, p0, v0}, Lcom/alimama/tunion/a/a$1;-><init>(Lcom/alimama/tunion/a/a;I)V

    iput-object v1, p0, Lcom/alimama/tunion/a/a;->b:Landroid/util/LruCache;

    .line 35
    :cond_0
    return-void
.end method

.method public static a()Lcom/alimama/tunion/a/a;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/alimama/tunion/a/a;->a:Lcom/alimama/tunion/a/a;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/alimama/tunion/a/a;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/alimama/tunion/a/a;->a:Lcom/alimama/tunion/a/a;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alimama/tunion/a/a;

    invoke-direct {v0}, Lcom/alimama/tunion/a/a;-><init>()V

    sput-object v0, Lcom/alimama/tunion/a/a;->a:Lcom/alimama/tunion/a/a;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/alimama/tunion/a/a;->a:Lcom/alimama/tunion/a/a;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alimama/tunion/a/a;->b:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alimama/tunion/a/a;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alimama/tunion/a/a;->b:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alimama/tunion/a/a;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method
