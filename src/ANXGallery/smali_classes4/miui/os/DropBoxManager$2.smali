.class Lmiui/os/DropBoxManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/os/DropBoxManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DV:Lmiui/os/DropBoxManager;


# direct methods
.method constructor <init>(Lmiui/os/DropBoxManager;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lmiui/os/DropBoxManager$2;->DV:Lmiui/os/DropBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 281
    invoke-static {p2}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/server/IDropBoxManagerService;

    move-result-object p1

    .line 283
    :try_start_0
    iget-object p2, p0, Lmiui/os/DropBoxManager$2;->DV:Lmiui/os/DropBoxManager;

    invoke-static {p2}, Lmiui/os/DropBoxManager;->a(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    if-eqz p2, :cond_0

    .line 286
    :try_start_1
    invoke-interface {p1, p2}, Lcom/miui/internal/server/IDropBoxManagerService;->add(Lmiui/os/DropBoxManager$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    invoke-virtual {p2}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 289
    nop

    .line 290
    iget-object p2, p0, Lmiui/os/DropBoxManager$2;->DV:Lmiui/os/DropBoxManager;

    invoke-static {p2}, Lmiui/os/DropBoxManager;->a(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/os/DropBoxManager$Entry;

    goto :goto_0

    .line 288
    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lmiui/os/DropBoxManager$Entry;->close()V

    throw p1

    .line 292
    :cond_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 295
    goto :goto_1

    .line 293
    :catch_0
    move-exception p1

    .line 294
    const-string p2, "DropBoxManager"

    const-string v0, "Call remote method \'add\' failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 300
    return-void
.end method
