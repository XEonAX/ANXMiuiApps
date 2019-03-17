.class public Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;
.super Ljava/lang/Object;
.source "MarkPeopleSuggestionPresenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMarkInfo:Landroid/os/Bundle;

.field private mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

.field private mPeopleSuggestion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field private mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;
    .param p3, "model"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;
    .param p4, "markInfo"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mStopped:Z

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    .line 30
    iput-object p3, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    .line 31
    iput-object p4, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->setMarkResult(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mStopped:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mPeopleSuggestion:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    return-object v0
.end method

.method private getMaxFaceCount(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "maxFaceCount":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/people/model/People;

    .line 168
    .local v1, "people":Lcom/miui/gallery/people/model/People;
    invoke-virtual {v1}, Lcom/miui/gallery/people/model/People;->getFaceCount()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 169
    goto :goto_0

    .line 171
    .end local v1    # "people":Lcom/miui/gallery/people/model/People;
    :cond_0
    return v0
.end method

.method private setMarkResult(ZZ)V
    .locals 6
    .param p1, "succeeded"    # Z
    .param p2, "fromLoadMore"    # Z

    .prologue
    .line 134
    iget-object v4, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    iget-object v5, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    invoke-interface {v4, v5, p1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;->setMarkResult(Landroid/os/Bundle;Z)V

    .line 136
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "mark_myself_load_more_mark"

    .line 141
    .local v0, "event":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 142
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mPeopleSuggestion:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 143
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "PeopleCount"

    iget-object v5, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mPeopleSuggestion:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v4, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mPeopleSuggestion:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->getMaxFaceCount(Ljava/util/ArrayList;)I

    move-result v1

    .line 147
    .local v1, "faceCount":I
    const/4 v4, 0x5

    if-gt v1, v4, :cond_4

    .line 148
    const-string v2, "1-5"

    .line 158
    .local v2, "faceDistribution":Ljava/lang/String;
    :goto_1
    const-string v4, "MaxFaceCount"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .end local v1    # "faceCount":I
    .end local v2    # "faceDistribution":Ljava/lang/String;
    :cond_0
    const-string v4, "people_mark"

    invoke-static {v4, v0, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    return-void

    .line 136
    .end local v0    # "event":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v0, "mark_myself_load_more_close"

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "mark_myself_dialog_mark"

    goto :goto_0

    :cond_3
    const-string v0, "mark_myself_dialog_close"

    goto :goto_0

    .line 149
    .restart local v0    # "event":Ljava/lang/String;
    .restart local v1    # "faceCount":I
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/16 v4, 0xa

    if-gt v1, v4, :cond_5

    .line 150
    const-string v2, "6-10"

    .restart local v2    # "faceDistribution":Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v2    # "faceDistribution":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x32

    if-gt v1, v4, :cond_6

    .line 152
    const-string v2, "11-50"

    .restart local v2    # "faceDistribution":Ljava/lang/String;
    goto :goto_1

    .line 153
    .end local v2    # "faceDistribution":Ljava/lang/String;
    :cond_6
    const/16 v4, 0x64

    if-gt v1, v4, :cond_7

    .line 154
    const-string v2, "51-100"

    .restart local v2    # "faceDistribution":Ljava/lang/String;
    goto :goto_1

    .line 156
    .end local v2    # "faceDistribution":Ljava/lang/String;
    :cond_7
    const-string v2, ">100"

    .restart local v2    # "faceDistribution":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public ignoreSuggestion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->isSuggestionDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->dismissSuggestionDialog()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c048a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c02a0

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v4, v4}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->setMarkResult(ZZ)V

    .line 119
    const-string v0, "people_mark"

    const-string v1, "mark_myself_dialog_close"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public loadMore()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->isSuggestionDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->dismissSuggestionDialog()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mPeopleSuggestion:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mPeopleSuggestion:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    const-string v2, "option_suggestion_limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    const-string v0, "people_mark"

    const-string v1, "mark_myself_dialog_close"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract;->buildMarkUriForMarkInfo(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->goToActivity(Landroid/net/Uri;)V

    .line 106
    const-string v0, "people_mark"

    const-string v1, "mark_myself_dialog_load_more"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markPeople(Lcom/miui/gallery/people/model/People;)V
    .locals 4
    .param p1, "people"    # Lcom/miui/gallery/people/model/People;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->dismissSuggestionDialog()V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    new-instance v3, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;-><init>(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)V

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;->markPeople(Landroid/content/Context;Lcom/miui/gallery/people/model/People;Landroid/os/Bundle;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;)V

    .line 91
    return-void
.end method

.method public setLoadMoreMarkResult(Z)V
    .locals 1
    .param p1, "succeeded"    # Z

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->setMarkResult(ZZ)V

    .line 131
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mStopped:Z

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;->needMark(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->isSuggestionDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mView:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    .line 38
    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->isSuggestionDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mModel:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mMarkInfo:Landroid/os/Bundle;

    new-instance v3, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;-><init>(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;->loadMarkSuggestion(Landroid/content/Context;Landroid/os/Bundle;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;)V

    .line 67
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->mStopped:Z

    .line 126
    return-void
.end method
