.class public Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;
.super Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;
.source "ResultPageViewFactory.java"


# static fields
.field private static sViewTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTagItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->sViewTypes:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->sViewTypes:Ljava/util/Map;

    const-string v1, "result_tag_item"

    const v2, 0x7f04011c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "result_tag_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->mTagItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->getDisplayImageOptionsForViewType(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLayoutIdForViewType(Ljava/lang/String;)I
    .locals 1
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->sViewTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSuggestionViewTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->sViewTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p3, "childPosition"    # I

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    if-gez p3, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "result_tag_item"

    goto :goto_0
.end method

.method protected initDisplayImageOptions(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/display/AbstractSuggestionViewFactory;->initDisplayImageOptions(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    new-instance v1, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;-><init>(I)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/ResultPageViewFactory;->mTagItemDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 38
    return-void
.end method
