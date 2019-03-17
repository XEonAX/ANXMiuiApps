.class public Lcom/miui/gallery/search/core/display/DefaultActionClickListener;
.super Ljava/lang/Object;
.source "DefaultActionClickListener.java"

# interfaces
.implements Lcom/miui/gallery/search/core/display/OnActionClickListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private extractFrom(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    const-string v4, "search_event_keys"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "eventKeys":[Ljava/lang/String;
    const-string v4, "search_event_values"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "eventValues":[Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v4, v0

    array-length v5, v1

    if-ne v4, v5, :cond_0

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 78
    const-string v4, "from"

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    aget-object v3, v1, v2

    goto :goto_0

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private recordHistoryIfNeeded(Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;)V
    .locals 1
    .param p1, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getHistoryConfig()Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;->shouldRecordHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/gallery/search/history/SearchHistoryService;->addHistory(Landroid/content/Context;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "actionType"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-direct {p0, p4}, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->extractFrom(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "from":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 56
    .end local v1    # "from":Ljava/lang/String;
    .end local p3    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 33
    .restart local v1    # "from":Ljava/lang/String;
    .restart local p3    # "data":Ljava/lang/Object;
    :pswitch_0
    const/4 v3, 0x0

    .line 34
    .local v3, "uriString":Ljava/lang/String;
    instance-of v4, p3, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    if-eqz v4, :cond_2

    move-object v4, p3

    .line 35
    check-cast v4, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->recordHistoryIfNeeded(Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;)V

    .line 36
    check-cast p3, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .end local p3    # "data":Ljava/lang/Object;
    invoke-interface {p3}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v3

    .line 41
    :cond_0
    :goto_1
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {p0, v4, v2, p4}, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DefaultActionClickListener"

    const-string v6, "Action uri parse failed for extra [%s] from %s"

    if-nez p4, :cond_3

    const-string v4, "null"

    .line 45
    :goto_2
    if-nez v1, :cond_1

    const-string v1, "null"

    .line 44
    .end local v1    # "from":Ljava/lang/String;
    :cond_1
    invoke-static {v5, v6, v4, v1}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "from":Ljava/lang/String;
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 45
    .end local p3    # "data":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "uriString":Ljava/lang/String;
    .restart local p3    # "data":Ljava/lang/Object;
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/search/core/display/DefaultActionClickListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/gallery/search/history/SearchHistoryService;->clearHistory(Landroid/content/Context;)V

    .line 52
    const-string v4, "clear_search_history"

    invoke-static {v1, v4}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
