.class public final Lcom/miui/gallery/card/CardSyncInfo$Builder;
.super Ljava/lang/Object;
.source "CardSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/CardSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private coverMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private duplicateKey:Ljava/lang/String;

.field private extraInfo:Ljava/lang/String;

.field private mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private scenarioId:I

.field private sortTime:J

.field private status:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/CardSyncInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$1;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/gallery/card/CardSyncInfo$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/CardSyncInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->scenarioId:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->status:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->duplicateKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->coverMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->allMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/card/CardSyncInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/card/CardSyncInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/card/CardSyncInfo$Builder;

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->sortTime:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/miui/gallery/card/CardSyncInfo;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/miui/gallery/card/CardSyncInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/card/CardSyncInfo;-><init>(Lcom/miui/gallery/card/CardSyncInfo$Builder;Lcom/miui/gallery/card/CardSyncInfo$1;)V

    return-object v0
.end method

.method public setAllMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/gallery/card/CardSyncInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "allMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->allMediaList:Ljava/util/List;

    .line 153
    return-object p0
.end method

.method public setCoverMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/gallery/card/CardSyncInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "coverMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->coverMediaList:Ljava/util/List;

    .line 142
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->description:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setDuplicateKey(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->duplicateKey:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setExtraInfo(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->extraInfo:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setMediaList(Ljava/util/List;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/gallery/card/CardSyncInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->mediaList:Ljava/util/List;

    .line 148
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->name:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setScenarioId(I)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->scenarioId:I

    .line 117
    return-object p0
.end method

.method public setSortTime(J)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 1
    .param p1, "sortTime"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->sortTime:J

    .line 163
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/miui/gallery/card/CardSyncInfo$Builder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/card/CardSyncInfo$Builder;->status:Ljava/lang/String;

    .line 132
    return-object p0
.end method
