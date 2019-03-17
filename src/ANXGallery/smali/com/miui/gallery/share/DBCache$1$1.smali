.class Lcom/miui/gallery/share/DBCache$1$1;
.super Ljava/lang/Object;
.source "DBCache.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/DBCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/share/DBCache$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/DBCache$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/share/DBCache$1;

    .prologue
    .line 59
    .local p0, "this":Lcom/miui/gallery/share/DBCache$1$1;, "Lcom/miui/gallery/share/DBCache$1$1;"
    iput-object p1, p0, Lcom/miui/gallery/share/DBCache$1$1;->this$1:Lcom/miui/gallery/share/DBCache$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/miui/gallery/share/DBCache$1$1;, "Lcom/miui/gallery/share/DBCache$1$1;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 64
    .local v2, "start":J
    iget-object v1, p0, Lcom/miui/gallery/share/DBCache$1$1;->this$1:Lcom/miui/gallery/share/DBCache$1;

    iget-object v1, v1, Lcom/miui/gallery/share/DBCache$1;->this$0:Lcom/miui/gallery/share/DBCache;

    invoke-virtual {v1}, Lcom/miui/gallery/share/DBCache;->loadInBackground()Ljava/util/Map;

    move-result-object v0

    .line 65
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/miui/gallery/share/DBCache$1$1;, "Lcom/miui/gallery/share/DBCache$1$1;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/DBCache$1$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
