.class public Lmiui/util/LongScreenshotUtils;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort;,
        Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_LONG_SCREENSHOT:Ljava/lang/String; = "com.miui.util.LongScreenshotUtils.LongScreenshot"

.field static final DELAY_FOR_BROADCAST_CALLBACK:I = 0xc8

.field static final DELAY_FOR_FINISH:I = 0x1f4

.field public static final EXTRA_BOTTOM_LOC:Ljava/lang/String; = "BottomLoc"

.field public static final EXTRA_IS_END:Ljava/lang/String; = "IsEnd"

.field public static final EXTRA_IS_LONG_SCREENSHOT:Ljava/lang/String; = "IsLongScreenshot"

.field public static final EXTRA_IS_SCREENSHOT:Ljava/lang/String; = "IsScreenshot"

.field public static final EXTRA_TOP_LOC:Ljava/lang/String; = "TopLoc"

.field public static final EXTRA_VIEW_BOTTOM:Ljava/lang/String; = "ViewBottom"

.field public static final EXTRA_VIEW_TOP:Ljava/lang/String; = "ViewTop"

.field public static final LONG_SCREENSHOT_CMD_DETECT:I = 0x1

.field public static final LONG_SCREENSHOT_CMD_FINISH:I = 0x4

.field public static final LONG_SCREENSHOT_CMD_START:I = 0x2

.field public static final LONG_SCREENSHOT_CMD_TAKED:I = 0x3

.field static final MAX_HEIGHT_FOR_SCREEN_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "LongScreenshotUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
