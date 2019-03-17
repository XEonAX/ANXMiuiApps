.class Lcom/miui/gallery/search/navigationpage/NavigationFragment$2;
.super Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;
.source "NavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/navigationpage/NavigationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$2;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-direct {p0}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIndependentSection(Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    .locals 5
    .param p2, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "addedItemKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;->getIndependentSection(Ljava/util/HashSet;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    move-result-object v0

    .line 110
    .local v0, "iSection":Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    sget-object v1, Lcom/miui/gallery/search/navigationpage/NavigationFragment$5;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;->moveToMore()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v1

    if-nez v1, :cond_0

    .line 117
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v1

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 118
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v3

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/search/SearchConfig;->getDefaultMoreItem(Landroid/content/Context;Lcom/miui/gallery/search/SearchConstants$SectionType;Z)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;->setSectionMoreItem(Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
