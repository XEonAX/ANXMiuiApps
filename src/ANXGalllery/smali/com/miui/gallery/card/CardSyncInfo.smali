.class public Lcom/miui/gallery/card/CardSyncInfo;
.super Ljava/lang/Object;
.source "CardSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/CardSyncInfo$Builder;,
        Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private duplicateKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duplicateKey"
    .end annotation
.end field

.field private extraInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraInfo"
    .end annotation
.end field

.field private mediaInfo:Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaInfo"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private scenarioId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scenarioId"
    .end annotation
.end field

.field private sortTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sortTime"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/gallery/card/CardSyncInfo$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$000(Lcom/miui/gallery/card/CardSyncInfo$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setScenarioId(I)V

    .line 39
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$100(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setName(Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$200(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setDescription(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$300(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setStatus(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$400(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setDuplicateKey(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;

    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$500(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$600(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$700(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setMediaInfo(Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;)V

    .line 44
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$800(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/CardSyncInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;->access$900(Lcom/miui/gallery/card/CardSyncInfo$Builder;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/CardSyncInfo;->setSortTime(J)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/CardSyncInfo$Builder;Lcom/miui/gallery/card/CardSyncInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/card/CardSyncInfo$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/CardSyncInfo;-><init>(Lcom/miui/gallery/card/CardSyncInfo$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/miui/gallery/card/CardSyncInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/CardSyncInfo$Builder;-><init>(Lcom/miui/gallery/card/CardSyncInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->description:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDuplicateKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "duplicateKey"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->duplicateKey:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->extraInfo:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMediaInfo(Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;)V
    .locals 0
    .param p1, "mediaInfo"    # Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->mediaInfo:Lcom/miui/gallery/card/CardSyncInfo$MediaInfoBean;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setScenarioId(I)V
    .locals 0
    .param p1, "scenarioId"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->scenarioId:I

    .line 54
    return-void
.end method

.method public setSortTime(J)V
    .locals 1
    .param p1, "sortTime"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->sortTime:J

    .line 82
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo;->status:Ljava/lang/String;

    .line 66
    return-void
.end method
