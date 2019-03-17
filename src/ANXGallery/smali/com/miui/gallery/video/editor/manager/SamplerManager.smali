.class public Lcom/miui/gallery/video/editor/manager/SamplerManager;
.super Ljava/lang/Object;
.source "SamplerManager.java"


# instance fields
.field private mFormat:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/manager/SamplerManager;->mFormat:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static create()Lcom/miui/gallery/video/editor/manager/SamplerManager;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "SamplerManager"

    const-string v1, "create smart effect\'s sampler"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/miui/gallery/video/editor/manager/SamplerManager;

    const-string v1, ""

    const-string v2, "(smart_effect)"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/manager/SamplerManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, "SamplerManager"

    const-string v1, "create sampler"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/miui/gallery/video/editor/manager/SamplerManager;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/manager/SamplerManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "SamplerManager"

    const-string v1, "record cat: %s, event: %s, params: %s"

    invoke-static {v0, v1, p1, p2, p3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/SamplerManager;->mFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    return-void
.end method
