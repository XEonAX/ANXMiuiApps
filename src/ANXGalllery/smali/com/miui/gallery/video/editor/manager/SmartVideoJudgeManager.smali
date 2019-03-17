.class public Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;
.super Ljava/lang/Object;
.source "SmartVideoJudgeManager.java"


# static fields
.field private static sLoaded:Z

.field private static final sWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 11
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "dipper"

    aput-object v3, v2, v1

    const-string/jumbo v3, "ursa"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "equuleus"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "perseus"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "sirius"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "lavender"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "cepheus"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "violet"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "onc"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "grus"

    aput-object v4, v2, v3

    sput-object v2, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->sWhiteList:[Ljava/lang/String;

    .line 20
    sput-boolean v1, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->sLoaded:Z

    .line 21
    sget-object v2, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->sWhiteList:[Ljava/lang/String;

    array-length v3, v2

    .local v0, "product":Ljava/lang/String;
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 22
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    sput-boolean v5, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->sLoaded:Z

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->sLoaded:Z

    return v0
.end method
