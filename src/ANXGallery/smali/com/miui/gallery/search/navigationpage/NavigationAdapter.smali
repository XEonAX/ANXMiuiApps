.class public Lcom/miui/gallery/search/navigationpage/NavigationAdapter;
.super Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;
.source "NavigationAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewFactory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getSectionItemCount(I)I
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_WARNING:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne v0, v1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getSectionItemCount(I)I

    move-result v0

    goto :goto_0
.end method

.method protected useBatchContent(I)Z
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getNavigationConfig()Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    move-result-object v0

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->useBatchContent(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v0

    return v0
.end method
