.class public Lcom/miui/screenrecorder/compat/MiuiSettingsCompat$System;
.super Landroid/provider/SystemSettings$System;
.source "MiuiSettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/compat/MiuiSettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final HAS_SCREENSHOT_SOUND:Ljava/lang/String; = "has_screenshot_sound"

.field public static final HAS_SCREENSHOT_SOUND_DEFAULT:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/provider/SystemSettings$System;-><init>()V

    return-void
.end method
