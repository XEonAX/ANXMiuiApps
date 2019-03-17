.class Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;
.super Ljava/lang/Object;
.source "LocalSingleSectionSuggestionSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->sortSuggestions(Ljava/util/List;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->this$0:Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;

    iput-object p2, p0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/search/core/suggestion/Suggestion;Lcom/miui/gallery/search/core/suggestion/Suggestion;)I
    .locals 3
    .param p1, "o1"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p2, "o2"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->this$0:Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;

    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->val$queryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->sort(Lcom/miui/gallery/search/core/suggestion/Suggestion;Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    check-cast p2, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;->compare(Lcom/miui/gallery/search/core/suggestion/Suggestion;Lcom/miui/gallery/search/core/suggestion/Suggestion;)I

    move-result v0

    return v0
.end method
