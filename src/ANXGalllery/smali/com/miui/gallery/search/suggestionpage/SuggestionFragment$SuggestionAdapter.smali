.class Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$SuggestionAdapter;
.super Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;
.source "SuggestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewFactory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    .line 282
    return-void
.end method


# virtual methods
.method protected getHeaderCount(I)I
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 286
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getSuggestionConfig()Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    move-result-object v0

    .line 287
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$SuggestionAdapter;->getSection(I)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->shouldDrawSectionHeader(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
