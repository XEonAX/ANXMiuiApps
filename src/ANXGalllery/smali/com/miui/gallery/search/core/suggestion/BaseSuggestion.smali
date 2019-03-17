.class public Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
.super Ljava/lang/Object;
.source "BaseSuggestion.java"

# interfaces
.implements Lcom/miui/gallery/search/core/suggestion/Suggestion;


# instance fields
.field protected mIcon:Ljava/lang/String;

.field protected mIntentActionURI:Ljava/lang/String;

.field protected mSubTitle:Ljava/lang/String;

.field protected mSuggestionExtras:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

.field protected mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;Lcom/miui/gallery/search/core/source/Source;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "intentActionURI"    # Ljava/lang/String;
    .param p5, "suggestionExtras"    # Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .param p6, "suggestionSource"    # Lcom/miui/gallery/search/core/source/Source;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mTitle:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIcon:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIntentActionURI:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSubTitle:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionExtras:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    .line 31
    iput-object p6, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 98
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .line 102
    .local v0, "other":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSubTitle:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIcon:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIntentActionURI:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionExtras:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MiscUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public getIntentActionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIntentActionURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionExtras:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    return-object v0
.end method

.method public getSuggestionIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

    return-object v0
.end method

.method public getSuggestionSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setIntentActionURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentActionURI"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIntentActionURI:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSuggestionExtras(Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;)V
    .locals 0
    .param p1, "suggestionExtras"    # Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionExtras:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    .line 86
    return-void
.end method

.method public setSuggestionIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIcon:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSuggestionSource(Lcom/miui/gallery/search/core/source/Source;)V
    .locals 0
    .param p1, "suggestionSource"    # Lcom/miui/gallery/search/core/source/Source;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionSource:Lcom/miui/gallery/search/core/source/Source;

    .line 77
    return-void
.end method

.method public setSuggestionSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSubTitle:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSuggestionTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mTitle:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseSuggestion [title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSubTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIntentActionURI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIntentActionURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSuggestionExtras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->mSuggestionExtras:Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
