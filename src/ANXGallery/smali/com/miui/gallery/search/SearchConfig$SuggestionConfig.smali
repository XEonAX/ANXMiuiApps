.class public Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
.super Ljava/lang/Object;
.source "SearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionConfig"
.end annotation


# instance fields
.field private mQueryExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShouldJumpWhenSingleSug:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mShouldJumpWhenSingleSug:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mShouldJumpWhenSingleSug:Z

    .line 191
    return-void
.end method


# virtual methods
.method public addQueryExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "originPeopleName"    # Ljava/lang/String;
    .param p3, "peopleServerID"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    .line 255
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 256
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "peopleName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "peopleId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public countToRecall(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z
    .locals 2
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 223
    sget-object v0, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 227
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getQueryExtras(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    iget-object v5, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object v4

    .line 268
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v2, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "keyword":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 271
    iget-object v6, p0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;->mQueryExtras:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 277
    .local v1, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List;>;"
    const-string v5, "extraInfo"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :try_start_0
    invoke-static {v1}, Lcom/miui/gallery/util/GsonUtils;->toJson(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SearchConfig"

    const-string v6, "Failed to transform to json [%s]"

    invoke-static {v5, v6, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shouldDrawSectionHeader(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z
    .locals 2
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 239
    sget-object v0, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 244
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public supportShortcut(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z
    .locals 2
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 208
    sget-object v0, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 213
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
