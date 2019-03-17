.class Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;
.super Ljava/lang/Object;
.source "MarkPeopleSuggestionPresenter.java"

# interfaces
.implements Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$LoadMarkSuggestionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoNeedMark()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$100(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$000(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;->onMarkSuggestionTriggered(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$200(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;ZZ)V

    .line 47
    return-void
.end method

.method public onPeopleSuggestionLoadFailed()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onPeopleSuggestionLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "peopleSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$300(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0, p1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$402(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$600(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .line 54
    invoke-static {v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$500(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    .line 55
    invoke-static {v2}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$500(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c029b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2, p1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->showSuggestionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$100(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$000(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$Model;->onMarkSuggestionTriggered(Landroid/os/Bundle;)V

    .line 59
    :cond_0
    return-void
.end method
