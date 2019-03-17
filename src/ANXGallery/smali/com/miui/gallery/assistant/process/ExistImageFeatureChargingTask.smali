.class public Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;
.super Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;
.source "ExistImageFeatureChargingTask.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->process(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public process(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    const/16 v0, 0x9

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->processInternal(Lorg/json/JSONObject;II)V

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
