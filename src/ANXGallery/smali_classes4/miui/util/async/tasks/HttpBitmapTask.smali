.class public Lmiui/util/async/tasks/HttpBitmapTask;
.super Lmiui/util/async/tasks/HttpTask;
.source "SourceFile"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/tasks/HttpTask<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# instance fields
.field private Lw:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 32
    sget-object v2, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/HttpBitmapTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 6

    .line 42
    sget-object v2, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/HttpBitmapTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/http/HttpSession;",
            "Lmiui/util/async/tasks/HttpTask$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/HttpBitmapTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/http/HttpSession;",
            "Lmiui/util/async/tasks/HttpTask$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    iput-object p5, p0, Lmiui/util/async/tasks/HttpBitmapTask;->Lw:Landroid/graphics/BitmapFactory$Options;

    .line 70
    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpBitmapTask;->request()Lmiui/net/http/HttpResponse;

    move-result-object v0

    .line 94
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 96
    :try_start_0
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/util/async/tasks/HttpBitmapTask;->Lw:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->release()V

    .line 99
    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 96
    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->release()V

    .line 99
    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpBitmapTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 1

    .line 79
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1

    .line 82
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
