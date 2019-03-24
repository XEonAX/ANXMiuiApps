.class public Lcom/miui/internal/app/SystemApplication;
.super Landroid/app/Application;
.source "SystemApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 24
    return-void
.end method
