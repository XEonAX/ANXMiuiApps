.class public Lcom/xiaomi/analytics/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANALYTICS_APP_PACKAGE_NAME:Ljava/lang/String; = "com.miui.analytics"

.field public static final API_VER:Lcom/xiaomi/analytics/internal/Version;

.field public static final CONNECT_TIME_OUT_MILLIS:I

.field public static final INVALID_CORE_VER_STR:Ljava/lang/String; = "0.0.0"

.field public static final MIN_CORE_VER:Lcom/xiaomi/analytics/internal/Version;

.field public static final NULL_STRING:Ljava/lang/String; = ""

.field public static final PREFS_FILE:Ljava/lang/String; = "analytics_api"

.field public static final READ_TIME_OUT_MILLIS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    const-string v1, "1.9.3"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/Constants;->API_VER:Lcom/xiaomi/analytics/internal/Version;

    .line 9
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    const-string v1, "1.3.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/Constants;->MIN_CORE_VER:Lcom/xiaomi/analytics/internal/Version;

    .line 16
    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/analytics/internal/Constants;->CONNECT_TIME_OUT_MILLIS:I

    .line 17
    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_MINUTE_IN_MS:I

    sput v0, Lcom/xiaomi/analytics/internal/Constants;->READ_TIME_OUT_MILLIS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
