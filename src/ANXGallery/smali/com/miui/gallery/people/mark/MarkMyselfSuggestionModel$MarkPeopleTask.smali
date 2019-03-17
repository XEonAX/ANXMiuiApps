.class Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;
.super Landroid/os/AsyncTask;
.source "MarkMyselfSuggestionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkPeopleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkPeople:Lcom/miui/gallery/people/model/People;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/people/model/People;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "markPeople"    # Lcom/miui/gallery/people/model/People;
    .param p3, "callback"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 194
    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mMarkPeople:Lcom/miui/gallery/people/model/People;

    .line 195
    iput-object p3, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

    .line 196
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 201
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mMarkPeople:Lcom/miui/gallery/people/model/People;

    invoke-virtual {v1}, Lcom/miui/gallery/people/model/People;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->moveFaceToMyselfGroup(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 207
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

    if-eqz v1, :cond_1

    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

    const v2, 0x7f0c029d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;->onMarkPeopleFailed(Ljava/lang/String;)V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;

    invoke-interface {v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;->onMarkPeopleSucceeded()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$MarkPeopleTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
