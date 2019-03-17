.class public Lcom/xiaomi/scanner/app/ScannerApp;
.super Lmiui/external/Application;
.source "ScannerApp.java"


# static fields
.field private static sApplicationDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/xiaomi/scanner/app/ScannerApp;->sApplicationDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;-><init>(Lcom/xiaomi/scanner/app/ScannerApp;)V

    sput-object v0, Lcom/xiaomi/scanner/app/ScannerApp;->sApplicationDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    .line 14
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScannerApp;->sApplicationDelegate:Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    return-object v0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScannerApp;->onCreateApplicationDelegate()Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;

    move-result-object v0

    return-object v0
.end method
