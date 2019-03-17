.class public Lcom/miui/gallery/search/SearchConfig;
.super Ljava/lang/Object;
.source "SearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/SearchConfig$NavigationConfig;,
        Lcom/miui/gallery/search/SearchConfig$ResultConfig;,
        Lcom/miui/gallery/search/SearchConfig$HistoryConfig;,
        Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    }
.end annotation


# static fields
.field private static sConfig:Lcom/miui/gallery/search/SearchConfig;


# instance fields
.field private mHistoryConfig:Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

.field private mNavigationConfig:Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

.field private mResultConfig:Lcom/miui/gallery/search/SearchConfig$ResultConfig;

.field private mSuggestionConfig:Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/SearchConfig;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public static get()Lcom/miui/gallery/search/SearchConfig;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/miui/gallery/search/SearchConfig;->sConfig:Lcom/miui/gallery/search/SearchConfig;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/miui/gallery/search/SearchConfig;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/miui/gallery/search/SearchConfig;->sConfig:Lcom/miui/gallery/search/SearchConfig;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/miui/gallery/search/SearchConfig;

    invoke-direct {v0}, Lcom/miui/gallery/search/SearchConfig;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/SearchConfig;->sConfig:Lcom/miui/gallery/search/SearchConfig;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/miui/gallery/search/SearchConfig;->sConfig:Lcom/miui/gallery/search/SearchConfig;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDefaultMoreItem(Landroid/content/Context;Lcom/miui/gallery/search/SearchConstants$SectionType;Z)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;
    .param p3, "fixed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "actionUri":Landroid/net/Uri;
    sget-object v2, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p2}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_1
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    invoke-direct {v1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>()V

    .line 118
    .local v1, "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    const v2, 0x7f0c0459

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionTitle(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setIntentActionURI(Ljava/lang/String;)V

    .line 120
    new-instance v2, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;

    const-string v3, "fixed"

    .line 121
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionExtras(Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;)V

    goto :goto_0

    .line 106
    .end local v1    # "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_TAG_LIST_PAGE:Landroid/net/Uri;

    .line 107
    goto :goto_1

    .line 109
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_LOCATION_LIST_PAGE:Landroid/net/Uri;

    .line 110
    goto :goto_1

    .line 112
    :pswitch_2
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_PEOPLE_LIST_PAGE:Landroid/net/Uri;

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHistoryConfig()Lcom/miui/gallery/search/SearchConfig$HistoryConfig;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mHistoryConfig:Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    return-object v0
.end method

.method public getNavigationConfig()Lcom/miui/gallery/search/SearchConfig$NavigationConfig;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mNavigationConfig:Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SearchConfig haven\'t been initiated yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mNavigationConfig:Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    return-object v0
.end method

.method public getResultConfig()Lcom/miui/gallery/search/SearchConfig$ResultConfig;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mResultConfig:Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    return-object v0
.end method

.method public getSuggestionConfig()Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mSuggestionConfig:Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    return-object v0
.end method

.method public getTitleForSection(Lcom/miui/gallery/search/SearchConstants$SectionType;)Ljava/lang/String;
    .locals 3
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 129
    sget-object v1, Lcom/miui/gallery/search/SearchConfig$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 158
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 131
    :pswitch_0
    const v0, 0x7f0c0455

    .line 160
    .local v0, "res":I
    :goto_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0c045c

    .line 135
    .restart local v0    # "res":I
    goto :goto_1

    .line 137
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0c045b

    .line 138
    .restart local v0    # "res":I
    goto :goto_1

    .line 140
    .end local v0    # "res":I
    :pswitch_3
    const v0, 0x7f0c0458

    .line 141
    .restart local v0    # "res":I
    goto :goto_1

    .line 143
    .end local v0    # "res":I
    :pswitch_4
    const v0, 0x7f0c045e

    .line 144
    .restart local v0    # "res":I
    goto :goto_1

    .line 146
    .end local v0    # "res":I
    :pswitch_5
    const v0, 0x7f0c045d

    .line 147
    .restart local v0    # "res":I
    goto :goto_1

    .line 149
    .end local v0    # "res":I
    :pswitch_6
    const v0, 0x7f0c045a

    .line 150
    .restart local v0    # "res":I
    goto :goto_1

    .line 152
    .end local v0    # "res":I
    :pswitch_7
    const v0, 0x7f0c0457

    .line 153
    .restart local v0    # "res":I
    goto :goto_1

    .line 155
    .end local v0    # "res":I
    :pswitch_8
    const v0, 0x7f0c0456

    .line 156
    .restart local v0    # "res":I
    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getVoiceAssistantSuggestion(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "suggestTextsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "suggestTexts":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "suggestTextsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .restart local v1    # "suggestTextsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 169
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mNavigationConfig:Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mNavigationConfig:Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mSuggestionConfig:Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mSuggestionConfig:Lcom/miui/gallery/search/SearchConfig$SuggestionConfig;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mHistoryConfig:Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    invoke-direct {v0, p1}, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mHistoryConfig:Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mResultConfig:Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    if-nez v0, :cond_3

    .line 66
    new-instance v0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/search/SearchConfig$ResultConfig;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/SearchConfig$1;)V

    iput-object v0, p0, Lcom/miui/gallery/search/SearchConfig;->mResultConfig:Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    .line 68
    :cond_3
    return-void
.end method

.method public showSection(Lcom/miui/gallery/search/SearchConstants$SectionType;)Z
    .locals 1
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 90
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_PEOPLE:Lcom/miui/gallery/search/SearchConstants$SectionType;

    if-ne p1, v0, :cond_0

    .line 91
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
