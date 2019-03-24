.class public Lcom/miui/internal/analytics/EventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "event_id"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final COLUMN_PARAM:Ljava/lang/String; = "param"

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DEFAULT_MAXSAVE:I = 0x7

.field public static final TYPE_EVENT:I = 0x2

.field public static final TYPE_LOG:I = 0x1

.field public static final TYPE_TRACKPAGEVIEW:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static enableWrite(Landroid/content/Context;)Z
    .locals 2

    .line 32
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_DEVELOPMENT_VERSION:Z

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "upload_log_pref"

    invoke-static {p0, v1, v0}, Lmiui/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 35
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDay(J)I
    .locals 2

    .line 39
    const-wide/32 v0, 0x5265c00

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
