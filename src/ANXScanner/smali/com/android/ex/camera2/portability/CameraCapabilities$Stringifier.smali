.class public Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stringifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toApiCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "enumCase"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toEnumCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "apiCase"    # Ljava/lang/String;

    .prologue
    .line 337
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 390
    if-nez p1, :cond_0

    .line 391
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 396
    :goto_0
    return-object v1

    .line 394
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 361
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 366
    :goto_0
    return-object v1

    .line 364
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 420
    if-nez p1, :cond_0

    .line 421
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 426
    :goto_0
    return-object v1

    .line 424
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;
    .locals 1
    .param p1, "flash"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .prologue
    .line 378
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;
    .locals 1
    .param p1, "focus"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;
    .locals 1
    .param p1, "scene"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;
    .locals 1
    .param p1, "wb"    # Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whiteBalanceFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    aget-object v1, v1, v2

    .line 457
    :goto_0
    return-object v1

    .line 455
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method
