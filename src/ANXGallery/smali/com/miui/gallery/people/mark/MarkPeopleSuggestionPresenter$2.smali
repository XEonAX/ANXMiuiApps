.class Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;
.super Ljava/lang/Object;
.source "MarkPeopleSuggestionPresenter.java"

# interfaces
.implements Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$MarkPeopleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->markPeople(Lcom/miui/gallery/people/model/People;)V
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
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkPeopleFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$300(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$600(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->showMarkResult(ZLjava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$200(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;ZZ)V

    .line 89
    return-void
.end method

.method public onMarkPeopleSucceeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$300(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$600(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    invoke-static {v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$500(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c029f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionContract$View;->showMarkResult(ZLjava/lang/String;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter$2;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->access$200(Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;ZZ)V

    .line 81
    return-void
.end method
