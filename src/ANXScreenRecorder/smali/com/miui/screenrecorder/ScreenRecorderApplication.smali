.class public Lcom/miui/screenrecorder/ScreenRecorderApplication;
.super Lmiui/external/Application;
.source "ScreenRecorderApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/miui/screenrecorder/ScreenRecorderApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 15
    sput-object p0, Lcom/miui/screenrecorder/ScreenRecorderApplication;->sContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/ScreenRecorderApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/ScreenRecorderApplication;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->init()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/miui/screenrecorder/ScreenRecorderApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/screenrecorder/ScreenRecorderApplication$1;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/ScreenRecorderApplication$1;-><init>(Lcom/miui/screenrecorder/ScreenRecorderApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;-><init>(Lcom/miui/screenrecorder/ScreenRecorderApplication;)V

    return-object v0
.end method

.method public bridge synthetic onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->onCreateApplicationDelegate()Lcom/miui/screenrecorder/ScreenRecorderApplication$ApplicationDelegate;

    move-result-object v0

    return-object v0
.end method
