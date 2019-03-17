.class Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;
.super Ljava/lang/Object;
.source "MarkMyselfSuggestionModel.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
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
.field final synthetic this$0:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->this$0:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
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
    .line 100
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v7, "reportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 104
    .local v8, "resultType":I
    const/4 v4, 0x0

    .line 106
    .local v4, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, "myselfGroupCount":I
    const/4 v1, 0x0

    .line 108
    .local v1, "defaultNameCount":I
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 109
    iget-object v10, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/miui/gallery/model/PeopleContactInfo;->getDefaultNameForMyself(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "defaultName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .restart local v4    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationType(Landroid/database/Cursor;)I

    move-result v6

    .line 113
    .local v6, "relationType":I
    sget-object v10, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v10}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v10

    if-eq v6, v10, :cond_2

    .line 115
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->toPeople(Landroid/database/Cursor;)Lcom/miui/gallery/people/model/People;

    move-result-object v3

    .line 116
    .local v3, "people":Lcom/miui/gallery/people/model/People;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v10, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v10}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v10

    if-ne v6, v10, :cond_1

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 120
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery/people/model/People;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 124
    .end local v3    # "people":Lcom/miui/gallery/people/model/People;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 126
    const/4 v10, 0x1

    if-ne v2, v10, :cond_6

    .line 128
    const/4 v8, 0x2

    .line 129
    const-string/jumbo v10, "suggestType"

    const-string v11, "No need mark"

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v0    # "defaultName":Ljava/lang/String;
    .end local v6    # "relationType":I
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 152
    :cond_4
    const-string/jumbo v10, "suggestType"

    const-string v11, "No people"

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_5
    const-string v10, "people_mark"

    const-string v11, "mark_myself_triggered"

    invoke-static {v10, v11, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    new-instance v10, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    .line 130
    .restart local v0    # "defaultName":Ljava/lang/String;
    .restart local v6    # "relationType":I
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 131
    const/4 v8, 0x1

    .line 132
    new-instance v10, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;

    invoke-direct {v10, p0, v0}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;-><init>(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;Ljava/lang/String;)V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    iget-object v10, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->this$0:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    invoke-static {v10}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->access$100(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "option_suggestion_limit"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 143
    .local v9, "suggestionLimit":I
    if-lez v9, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v9, :cond_7

    .line 144
    new-instance v5, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v4    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    .local v5, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    move-object v4, v5

    .line 146
    .end local v5    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    .restart local v4    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    :cond_7
    const-string/jumbo v10, "suggestType"

    const-string v11, "Normal"

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v10, "peopleOfMyself"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v10, "peopleNameOfMe"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->handle(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
