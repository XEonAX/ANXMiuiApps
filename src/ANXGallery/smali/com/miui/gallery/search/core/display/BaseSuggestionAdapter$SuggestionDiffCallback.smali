.class Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;
.super Lcom/miui/gallery/search/core/display/QuickAdapterBase$InnerDiffCallback;
.source "BaseSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionDiffCallback"
.end annotation


# instance fields
.field private mNewSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

.field private mOldSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "oldSuggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p2, "newSuggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$InnerDiffCallback;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mOldSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 95
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mNewSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 96
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mOldSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mOldSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mNewSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mNewSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 101
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mOldSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mNewSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mOldSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;->mNewSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
