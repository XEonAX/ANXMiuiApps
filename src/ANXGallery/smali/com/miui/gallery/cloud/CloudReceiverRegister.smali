.class public Lcom/miui/gallery/cloud/CloudReceiverRegister;
.super Ljava/lang/Object;
.source "CloudReceiverRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudReceiverRegister$SingletonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/CloudReceiverRegister$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/CloudReceiverRegister$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudReceiverRegister;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/CloudReceiverRegister;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/miui/gallery/cloud/CloudReceiverRegister$SingletonHolder;->access$100()Lcom/miui/gallery/cloud/CloudReceiverRegister;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAppCreate()V
    .locals 5

    .prologue
    .line 22
    new-instance v1, Lcom/miui/gallery/cloud/TimeSetReceiver;

    invoke-direct {v1}, Lcom/miui/gallery/cloud/TimeSetReceiver;-><init>()V

    .line 23
    .local v1, "timeSetReceiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "appContext":Landroid/content/Context;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.TIME_SET"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 28
    return-void
.end method
