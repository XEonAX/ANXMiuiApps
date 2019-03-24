.class Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationUpdateResponse"
.end annotation


# static fields
.field private static final ji:Ljava/lang/String; = "ok"


# instance fields
.field public description:Ljava/lang/String;

.field public jj:Ljava/lang/String;

.field public jk:I

.field public jl:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 470
    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;-><init>()V

    .line 472
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jj:Ljava/lang/String;

    .line 473
    const-string v1, "ok"

    iget-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jk:I

    .line 475
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->description:Ljava/lang/String;

    .line 477
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 478
    const-string v1, "d101b17c77ff93cs"

    invoke-static {p0, v1}, Lcom/miui/internal/server/TelocationUpdateService;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->a(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jl:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    .line 484
    :cond_0
    return-object v0
.end method

.method public static q(Ljava/lang/String;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 440
    new-instance v0, Lmiui/util/async/tasks/HttpJsonObjectTask;

    new-instance v1, Lmiui/net/http/HttpSession;

    invoke-direct {v1}, Lmiui/net/http/HttpSession;-><init>()V

    invoke-direct {v0, v1, p0}, Lmiui/util/async/tasks/HttpJsonObjectTask;-><init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    .line 442
    invoke-virtual {v0}, Lmiui/util/async/tasks/HttpJsonObjectTask;->doLoad()Lorg/json/JSONObject;

    move-result-object p0

    .line 443
    invoke-static {p0}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->b(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ae()Z
    .locals 2

    .line 488
    const-string v0, "ok"

    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jl:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jl:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    iget-boolean v0, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->iZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->jl:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    iget v0, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->action:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
