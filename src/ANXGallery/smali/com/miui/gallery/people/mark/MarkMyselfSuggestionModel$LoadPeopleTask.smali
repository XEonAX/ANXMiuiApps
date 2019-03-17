.class Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;
.super Landroid/os/AsyncTask;
.source "MarkMyselfSuggestionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadPeopleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/people/model/People;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final RT_INVALID:I

.field private final RT_NORMAL:I

.field private final RT_NO_NEED_MARK:I

.field private mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

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

.field private mMarkInfo:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "markInfo"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->RT_INVALID:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->RT_NORMAL:I

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->RT_NO_NEED_MARK:I

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 83
    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mMarkInfo:Landroid/os/Bundle;

    .line 84
    iput-object p3, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;Lcom/miui/gallery/people/model/People;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;
    .param p1, "x1"    # Lcom/miui/gallery/people/model/People;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->getPeopleTypePriorityForMyself(Lcom/miui/gallery/people/model/People;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mMarkInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method private getPeopleTypePriorityForMyself(Lcom/miui/gallery/people/model/People;Ljava/lang/String;)I
    .locals 2
    .param p1, "people"    # Lcom/miui/gallery/people/model/People;
    .param p2, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {p1}, Lcom/miui/gallery/people/model/People;->getRelationType()I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelation(I)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    .line 178
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/people/model/People;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 94
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-object v3

    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;

    invoke-direct {v6, p0, v0}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;-><init>(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v3, v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;>;"
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;->onNoNeedMark()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    invoke-interface {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;->onPeopleSuggestionLoadFailed()V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->mCallback:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;->onPeopleSuggestionLoaded(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
