.class public Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract;
.super Ljava/lang/Object;
.source "MarkPeopleSuggestionContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;,
        Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;,
        Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;,
        Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;
    }
.end annotation


# direct methods
.method public static buildMarkInfoForMarkMyself(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "markMyselfOptions":Landroid/os/Bundle;
    const-string v1, "option_mark_relation"

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 112
    invoke-static {v2}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "option_suggestion_limit"

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    return-object v0
.end method

.method public static buildMarkUriForMarkInfo(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 3
    .param p0, "markInfo"    # Landroid/os/Bundle;

    .prologue
    .line 119
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_PEOPLE_LIST_PAGE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "markMode"

    const-string/jumbo v2, "true"

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "markRelation"

    const-string v2, "option_mark_relation"

    .line 122
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
