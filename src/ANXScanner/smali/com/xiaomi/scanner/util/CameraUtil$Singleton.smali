.class Lcom/xiaomi/scanner/util/CameraUtil$Singleton;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaomi/scanner/util/CameraUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/xiaomi/scanner/util/CameraUtil;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/util/CameraUtil;-><init>(Landroid/content/Context;Lcom/xiaomi/scanner/util/CameraUtil$1;)V

    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil$Singleton;->INSTANCE:Lcom/xiaomi/scanner/util/CameraUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/util/CameraUtil;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil$Singleton;->INSTANCE:Lcom/xiaomi/scanner/util/CameraUtil;

    return-object v0
.end method
