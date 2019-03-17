.class public Lcom/miui/gallery/card/scenario/time/recent/YesterdayPartyScenario;
.super Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;
.source "YesterdayPartyScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const/16 v0, 0x73

    sget-object v1, Lcom/miui/gallery/card/scenario/ScenarioConstants;->TAGS_PARTY:[Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/recent/YesterdayScenario;-><init>(I[Ljava/lang/Integer;)V

    .line 20
    return-void
.end method


# virtual methods
.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0598

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
