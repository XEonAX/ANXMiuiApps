.class public Lcom/miui/gallery/util/ActionURIHandler;
.super Ljava/lang/Object;
.source "ActionURIHandler.java"


# static fields
.field protected static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    .line 46
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "people"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "album"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string/jumbo v2, "trash_bin"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "secret_album"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "peoples"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "result"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "search"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "cloud_guide"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string/jumbo v2, "sync_switch"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "photo_movie"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "collage"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gallery.i.mi.com"

    const-string v2, "card_action"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method private static buildIntent(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    :cond_0
    return-object v0
.end method

.method public static handleUri(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public static handleUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v5, Lcom/miui/gallery/util/ActionURIHandler;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 94
    .local v0, "matchResult":I
    const-string v5, "query"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "queryText":Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventParams(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    .line 97
    .local v2, "searchEventParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ActionURIHandler;->openDirectly(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/JumpDialogFragment;->showAlbumPage(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 101
    if-eqz v2, :cond_0

    .line 102
    const-string v5, "screenshotAppName"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v5, "Uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v5, "queryText"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "client_jump_to_album_page"

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v5, "serverId"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "serverId":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/miui/gallery/ui/JumpDialogFragment;->showPeoplePage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 114
    if-eqz v2, :cond_0

    .line 115
    const-string v5, "serverIds"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v5, "queryText"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v5, "client_jump_to_people_page"

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 123
    .end local v3    # "serverId":Ljava/lang/String;
    :pswitch_2
    const-string v5, "Search"

    invoke-static {p0, v5}, Lcom/miui/gallery/util/IntentUtil;->gotoTrashBin(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    if-eqz v2, :cond_0

    .line 126
    const-string v5, "client_jump_to_trash_bin"

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 131
    :pswitch_3
    invoke-static {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->enterPrivateAlbum(Landroid/app/Activity;)V

    .line 133
    if-eqz v2, :cond_0

    .line 134
    const-string v5, "client_jump_to_secret_album"

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 139
    :pswitch_4
    const-string v5, "markMode"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    const/16 v5, 0x29

    invoke-static {p0, p1, p2, v5}, Lcom/miui/gallery/util/ActionURIHandler;->startActivityForResult(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 142
    if-eqz v2, :cond_0

    .line 143
    const-string/jumbo v5, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v5, "suggestion_open_mark_page"

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 147
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ActionURIHandler;->openDirectly(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 149
    if-eqz v2, :cond_0

    .line 150
    const-string/jumbo v5, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "client_jump_to_people_list_page"

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 157
    :pswitch_5
    sget-object v5, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->URL:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-static {p0, v5}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;)V

    goto/16 :goto_0

    .line 161
    :pswitch_6
    invoke-static {p0}, Lcom/miui/gallery/util/IntentUtil;->gotoTurnOnSyncSwitch(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 165
    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ActionURIHandler;->openDirectly(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 169
    :pswitch_8
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ActionURIHandler;->openDirectly(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 173
    :pswitch_9
    invoke-static {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->startPicker(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 177
    :pswitch_a
    invoke-static {p0}, Lcom/miui/gallery/collage/CollageActivity;->startPicker(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 181
    :pswitch_b
    const-string v5, "actionType"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "type":Ljava/lang/String;
    const-string v5, "album"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 183
    if-eqz p2, :cond_3

    .line 184
    const-string v5, "card_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/gallery/util/IntentUtil;->gotoStoryAlbum(Landroid/app/Activity;J)V

    goto/16 :goto_0

    .line 186
    :cond_3
    const-string v5, "ActionURIHandler"

    const-string v6, "go to strory album ,invalid extra"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_4
    const-string v5, "operation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 189
    const-string v5, "card_url"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/gallery/util/IntentUtil;->gotoOperationCard(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_5
    const-string v5, "ActionURIHandler"

    const-string/jumbo v6, "type %s can not delivery"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static openDirectly(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, "startActivityForResult":Z
    const/4 v2, 0x0

    .line 214
    .local v2, "requestCode":I
    if-eqz p2, :cond_0

    .line 215
    :try_start_0
    const-string/jumbo v4, "start_activity_for_result"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 216
    const-string/jumbo v4, "start_activity_for_result"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 217
    const-string v4, "request_code"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    const-string v4, "request_code"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ActionURIHandler;->buildIntent(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 224
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ActionURIHandler"

    const-string v5, "openDirectly %s occur error.\n"

    invoke-static {v4, v5, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static startActivityForResult(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "requestCode"    # I

    .prologue
    .line 203
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ActionURIHandler;->buildIntent(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActionURIHandler"

    const-string v3, "openDirectly %s occur error.\n"

    invoke-static {v2, v3, p1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
