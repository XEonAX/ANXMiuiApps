.class public Lcom/xiaomi/scanner/camera/CameraServicesImpl;
.super Ljava/lang/Object;
.source "CameraServicesImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/CameraServices;


# static fields
.field private static mInstance:Lcom/xiaomi/scanner/camera/CameraServicesImpl;


# instance fields
.field private mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

.field private final mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaomi/scanner/settings/SettingsManager;

    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 27
    return-void
.end method

.method public static instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mInstance:Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mInstance:Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    .line 22
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mInstance:Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    return-object v0
.end method


# virtual methods
.method public getMotionManager()Lcom/xiaomi/scanner/camera/MotionManager;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/MotionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    return-object v0
.end method

.method public getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    return-object v0
.end method
