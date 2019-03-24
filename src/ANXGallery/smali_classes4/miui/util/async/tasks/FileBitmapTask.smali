.class public Lmiui/util/async/tasks/FileBitmapTask;
.super Lmiui/util/async/Task;
.source "SourceFile"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# static fields
.field static final Lx:Ljava/util/concurrent/Semaphore;


# instance fields
.field private Lw:Landroid/graphics/BitmapFactory$Options;

.field private Ly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/util/async/tasks/FileBitmapTask;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 52
    iput-object p1, p0, Lmiui/util/async/tasks/FileBitmapTask;->Ly:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lmiui/util/async/tasks/FileBitmapTask;->Lw:Landroid/graphics/BitmapFactory$Options;

    .line 54
    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 70
    :try_start_0
    iget-object v0, p0, Lmiui/util/async/tasks/FileBitmapTask;->Ly:Ljava/lang/String;

    iget-object v1, p0, Lmiui/util/async/tasks/FileBitmapTask;->Lw:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 70
    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->Lx:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lmiui/util/async/tasks/FileBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lmiui/util/async/tasks/FileBitmapTask;->Ly:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmiui/util/async/tasks/FileBitmapTask;->Ly:Ljava/lang/String;

    return-object v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 1

    .line 83
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1

    .line 86
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
