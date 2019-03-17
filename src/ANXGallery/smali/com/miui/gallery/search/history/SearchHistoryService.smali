.class public Lcom/miui/gallery/search/history/SearchHistoryService;
.super Landroid/app/IntentService;
.source "SearchHistoryService.java"


# static fields
.field public static EXTRA_HISTORY_ITEM:Ljava/lang/String;

.field public static EXTRA_OPERATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "operation"

    sput-object v0, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_OPERATION:Ljava/lang/String;

    .line 22
    const-string v0, "history_item"

    sput-object v0, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_HISTORY_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "SearchHistoryService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static addHistory(Landroid/content/Context;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/search/history/SearchHistoryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_OPERATION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    sget-object v1, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_HISTORY_ITEM:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/gallery/search/history/SearchHistoryService;->toContentValues(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static clearHistory(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/search/history/SearchHistoryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_OPERATION:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method protected static toContentValues(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 35
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "title":Ljava/lang/String;
    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "actionUri":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "uriTitle":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    move-object v2, v3

    .line 45
    .end local v3    # "uriTitle":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 48
    const-string/jumbo v4, "subTitle"

    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    const-string v4, "actionUri"

    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 54
    const-string v4, "icon"

    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    return-object v1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 71
    sget-object v2, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_OPERATION:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, "operation":I
    packed-switch v1, :pswitch_data_0

    .line 91
    const-string v2, "SearchHistoryService"

    const-string v3, "Invalid history operation type: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    sget-object v2, Lcom/miui/gallery/search/history/SearchHistoryService;->EXTRA_HISTORY_ITEM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 75
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 76
    const-string v2, "SearchHistoryService"

    const-string v3, "No history item found for operation add"

    invoke-static {v2, v3}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/history/SearchHistoryService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/search/SearchContract$History;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 83
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/search/history/SearchHistoryService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/search/SearchContract$History;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
