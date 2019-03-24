.class Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationUpdateActionResponse"
.end annotation


# static fields
.field public static final iV:I = 0x0

.field public static final iW:I = 0x1

.field public static final iX:I = 0x0

.field public static final iY:I = 0x1


# instance fields
.field public action:I

.field public description:Ljava/lang/String;

.field public iU:I

.field public iZ:Z

.field public ja:I

.field public jb:J

.field public jc:J

.field public jd:Ljava/lang/String;

.field public je:Ljava/lang/String;

.field public jf:Ljava/lang/String;

.field public jg:Ljava/lang/String;

.field public jh:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;-><init>()V

    .line 546
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->iZ:Z

    .line 547
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->description:Ljava/lang/String;

    .line 548
    iget-boolean v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->iZ:Z

    if-eqz v1, :cond_0

    .line 549
    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->action:I

    .line 551
    const-string v1, "info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 552
    const-string v1, "serviceType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->ja:I

    .line 553
    const-string v1, "patchType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->iU:I

    .line 554
    const-string v1, "oldVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jb:J

    .line 555
    const-string v1, "newVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jc:J

    .line 556
    const-string v1, "oldMd5Sum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jd:Ljava/lang/String;

    .line 557
    const-string v1, "newMd5Sum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->je:Ljava/lang/String;

    .line 558
    const-string v1, "md5Sum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jf:Ljava/lang/String;

    .line 559
    const-string v1, "fileURL"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jg:Ljava/lang/String;

    .line 560
    const-string v1, "fileSize"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->jh:J

    .line 563
    :cond_0
    return-object v0
.end method
