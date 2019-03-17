.class public Lcom/xiaomi/mistatistic/sdk/CustomSettings;
.super Ljava/lang/Object;
.source "CustomSettings.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    .line 23
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    return-void
.end method

.method public static isDataUploadingEnabled()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    return v0
.end method

.method public static isUseSystemStatService()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return v0
.end method

.method public static isUseSystemUploadingService()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return v0
.end method
