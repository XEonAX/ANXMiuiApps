.class public Lcom/xiaomi/analytics/internal/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static HALF_DAY_IN_MS:I

.field public static ONE_DAY_IN_MS:I

.field public static ONE_HOUR_IN_MS:I

.field public static ONE_MINUTE_IN_MS:I

.field public static ONE_SECOND_IN_MS:I

.field public static ONE_WEEK_IN_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const v0, 0x240c8400

    sput v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_WEEK_IN_MS:I

    .line 5
    const v0, 0x5265c00

    sput v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_DAY_IN_MS:I

    .line 6
    const v0, 0x2932e00

    sput v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->HALF_DAY_IN_MS:I

    .line 7
    const v0, 0x36ee80

    sput v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_HOUR_IN_MS:I

    .line 8
    const v0, 0xea60

    sput v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_MINUTE_IN_MS:I

    .line 9
    const/16 v0, 0x3e8

    sput v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expired(JJ)Z
    .locals 2
    .param p0, "lastTime"    # J
    .param p2, "interval"    # J

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
