.class public Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "ScreenRecorderApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/ScreenRecorderApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/ScreenRecorderApplication;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/ScreenRecorderApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/ScreenRecorderApplication;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;->this$0:Lcom/miui/screenrecorder/ScreenRecorderApplication;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 28
    # invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    # move-result v1
    
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isMonkeyMode:Z

    .line 29
    invoke-virtual {p0}, Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->init(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isAndroid24AndLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 34
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 35
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 37
    .end local v0    # "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    :cond_0
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->reset()V

    .line 38
    iget-object v1, p0, Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;->this$0:Lcom/miui/screenrecorder/ScreenRecorderApplication;

    invoke-static {v1}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->access$100(Lcom/miui/screenrecorder/ScreenRecorderApplication;)V

    .line 39
    return-void
.end method
