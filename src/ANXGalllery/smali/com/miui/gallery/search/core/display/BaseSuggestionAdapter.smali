.class public Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;
.super Lcom/miui/gallery/search/core/display/QuickAdapterBase;
.source "BaseSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;",
        ">",
        "Lcom/miui/gallery/search/core/display/QuickAdapterBase",
        "<",
        "Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

.field private mFrom:Ljava/lang/String;

.field protected mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field protected mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected final mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

.field protected final mViewTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewTypeReverseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewFactory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    new-instance v0, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewFactory"    # Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "actionClickListener"    # Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 34
    iput-object p3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mFrom:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeReverseMap:Ljava/util/HashMap;

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "viewType":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeReverseMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeReverseMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    .end local v0    # "viewType":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected bindActionClickListener(Landroid/view/View;ILcom/miui/gallery/search/core/suggestion/SuggestionCursor;ILjava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "actionType"    # I
    .param p3, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .param p4, "childIndex"    # I
    .param p5, "from"    # Ljava/lang/String;

    .prologue
    .line 129
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    new-instance v0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$1;-><init>(Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;ILandroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method protected bindInnerItemViewHolder(Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 168
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0, p2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getClickView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mFrom:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->bindActionClickListener(Landroid/view/View;ILcom/miui/gallery/search/core/suggestion/SuggestionCursor;ILjava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->getActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;

    move-result-object v5

    move v3, p2

    move-object v4, p1

    .line 173
    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 175
    return-void
.end method

.method public changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TS;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    .local p2, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Z)V

    .line 58
    return-void
.end method

.method public changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Z)V
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "useDiffUtils"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "TS;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    .local p2, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;, "TS;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    if-ne v1, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-eqz p3, :cond_2

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 66
    .local v0, "oldSuggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 67
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 69
    new-instance v1, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-direct {v1, v0, v2}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter$SuggestionDiffCallback;-><init>(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->notifyDataChanged(Landroid/support/v7/util/DiffUtil$Callback;)V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->close()V

    goto :goto_0

    .line 75
    .end local v0    # "oldSuggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->close()V

    .line 79
    :cond_3
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .line 80
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 81
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method protected createInnerItemViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 160
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeReverseMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeReverseMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->createViewHolder(Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    return-object v0
.end method

.method protected getInnerItemViewCount()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getInnerItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 150
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1, p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    invoke-interface {v1, v2, v3, p1}, Lcom/miui/gallery/search/core/display/SuggestionViewFactory;->getViewType(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "viewType":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown viewType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected getSuggestionCursor()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mSuggestionCursor:Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->getInnerItemViewCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 202
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    return-void
.end method

.method public setActionClickListener(Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 0
    .param p1, "actionClickListener"    # Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .prologue
    .line 53
    .local p0, "this":Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;, "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter<TS;>;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    .line 54
    return-void
.end method
