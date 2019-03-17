.class Lcom/xiaomi/scanner/app/ScannerApplicationDelegate$1;
.super Ljava/lang/Object;
.source "ScannerApplicationDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;->preExcuteWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate$1;->this$0:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;->access$000()Lcom/xiaomi/scanner/app/ScannerApp;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->initialize(Lcom/xiaomi/scanner/app/ScannerApp;)V

    .line 50
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;->access$000()Lcom/xiaomi/scanner/app/ScannerApp;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->initialize(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->checkDeviceHasNavigationBar()Z

    .line 52
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    .line 53
    return-void
.end method
