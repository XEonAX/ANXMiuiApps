.class public Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;
.super Ljava/lang/Object;
.source "MarkMyselfSuggestionModel.java"

# interfaces
.implements Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;,
        Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private isMarkingMyself(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "markInfo"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string v1, "option_mark_relation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "markRelation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 72
    invoke-virtual {v2}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadMarkSuggestion(Landroid/content/Context;Landroid/os/Bundle;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "markInfo"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;->isMarkingMyself(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-interface {p3}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;->onPeopleSuggestionLoadFailed()V

    goto :goto_0
.end method

.method public markPeople(Landroid/content/Context;Lcom/miui/gallery/people/model/People;Landroid/os/Bundle;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "people"    # Lcom/miui/gallery/people/model/People;
    .param p3, "markInfo"    # Landroid/os/Bundle;
    .param p4, "callback"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

    .prologue
    .line 48
    invoke-direct {p0, p3}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;->isMarkingMyself(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;

    invoke-direct {v0, p1, p2, p4}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;-><init>(Landroid/content/Context;Lcom/miui/gallery/people/model/People;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;->onMarkPeopleFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public needMark(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "markInfo"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;->isMarkingMyself(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->getMarkMyselfTriggeredCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFirstSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMarkSuggestionTriggered(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "markInfo"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;->isMarkingMyself(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->onMarkMyselfTriggered()V

    .line 60
    :cond_0
    return-void
.end method

.method public setMarkResult(Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "markInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;->isMarkingMyself(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p2}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->setMarkMyselfResult(Z)V

    .line 67
    :cond_0
    return-void
.end method
