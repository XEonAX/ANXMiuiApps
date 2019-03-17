.class public Lcom/cdv/utils/NvAndroidDisplayListener;
.super Ljava/lang/Object;
.source "NvAndroidDisplayListener.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private m_id:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/utils/NvAndroidDisplayListener;->m_id:I

    .line 30
    iput p1, p0, Lcom/cdv/utils/NvAndroidDisplayListener;->m_id:I

    .line 31
    return-void
.end method

.method private static native notifyDisplayChanged(II)V
.end method


# virtual methods
.method public Register(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p1, :cond_0

    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 38
    :cond_0
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    move v0, v1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 45
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v2, "NvAndroidDisplayListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public Unregister(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 63
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 65
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto :goto_0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/cdv/utils/NvAndroidDisplayListener;->m_id:I

    invoke-static {v0, p1}, Lcom/cdv/utils/NvAndroidDisplayListener;->notifyDisplayChanged(II)V

    .line 77
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
