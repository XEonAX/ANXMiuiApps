.class Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;
.super Ljava/lang/Object;
.source "MarkMyselfSuggestionModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->handle(Landroid/database/Cursor;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/people/model/People;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;

.field final synthetic val$defaultName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->this$1:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;

    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->val$defaultName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/people/model/People;Lcom/miui/gallery/people/model/People;)I
    .locals 4
    .param p1, "o1"    # Lcom/miui/gallery/people/model/People;
    .param p2, "o2"    # Lcom/miui/gallery/people/model/People;

    .prologue
    .line 135
    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->this$1:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;

    iget-object v2, v2, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->this$0:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    iget-object v3, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->val$defaultName:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->access$000(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;Lcom/miui/gallery/people/model/People;Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "p1":I
    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->this$1:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;

    iget-object v2, v2, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1;->this$0:Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;

    iget-object v3, p0, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->val$defaultName:Ljava/lang/String;

    invoke-static {v2, p2, v3}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;->access$000(Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask;Lcom/miui/gallery/people/model/People;Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "p2":I
    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/gallery/people/model/People;->getFaceCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/gallery/people/model/People;->getFaceCount()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    sub-int v2, v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 132
    check-cast p1, Lcom/miui/gallery/people/model/People;

    check-cast p2, Lcom/miui/gallery/people/model/People;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/people/mark/MarkMyselfSuggestionModel$LoadPeopleTask$1$1;->compare(Lcom/miui/gallery/people/model/People;Lcom/miui/gallery/people/model/People;)I

    move-result v0

    return v0
.end method
