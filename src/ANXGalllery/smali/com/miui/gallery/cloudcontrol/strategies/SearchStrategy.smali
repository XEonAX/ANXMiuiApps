.class public Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "SearchStrategy.java"


# instance fields
.field private mAIAlbum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "search-data"
    .end annotation
.end field

.field private mAIAlbumEnabled:Z

.field private mSearchBar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "search-box"
    .end annotation
.end field

.field private mSearchBarEnabled:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "searchBarEnabled"    # Z
    .param p2, "AIAlbumEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 10
    sget-object v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .line 11
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mSearchBar:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .line 13
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbum:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mSearchBarEnabled:Z

    .line 17
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbumEnabled:Z

    .line 20
    iput-boolean p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mSearchBarEnabled:Z

    .line 21
    iput-boolean p2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbumEnabled:Z

    .line 22
    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 42
    .local v0, "searchStatus":Z
    :goto_0
    new-instance v1, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    invoke-direct {v1, v0, v0}, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;-><init>(ZZ)V

    return-object v1

    .line 40
    .end local v0    # "searchStatus":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbumEnabled:Z

    .line 27
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbumEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mSearchBar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mSearchBarEnabled:Z

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAIAlbumEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mAIAlbumEnabled:Z

    return v0
.end method

.method public isSearchBarEnabled()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->mSearchBarEnabled:Z

    return v0
.end method
