.class public Lcom/xiaomi/scanner/app/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "RemoteService"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/app/RemoteService;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;-><init>(Lcom/xiaomi/scanner/app/RemoteService;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/RemoteService;->mBinder:Landroid/os/IBinder;

    .line 32
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/xiaomi/scanner/app/RemoteService;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/app/RemoteService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method
