.class public final Lcom/miui/internal/server/CoreService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.miui.internal.action.BIND_SERVICE"

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "extra_service_name"


# instance fields
.field hC:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/CoreService;->hC:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 34
    const-string v0, "com.miui.internal.action.BIND_SERVICE"

    invoke-static {p1, v0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "extra_service_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    const-string v0, "DropBoxManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/server/CoreService;->hC:Landroid/os/IBinder;

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 29
    const/4 p1, 0x1

    return p1
.end method
