.class Lcom/miui/gallery/search/navigationpage/SuggestionTagView$1;
.super Landroid/database/DataSetObserver;
.source "SuggestionTagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/navigationpage/SuggestionTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/SuggestionTagView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/SuggestionTagView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/navigationpage/SuggestionTagView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$1;->this$0:Lcom/miui/gallery/search/navigationpage/SuggestionTagView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$1;->this$0:Lcom/miui/gallery/search/navigationpage/SuggestionTagView;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->access$000(Lcom/miui/gallery/search/navigationpage/SuggestionTagView;)V

    .line 31
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$1;->this$0:Lcom/miui/gallery/search/navigationpage/SuggestionTagView;

    invoke-static {v0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->access$000(Lcom/miui/gallery/search/navigationpage/SuggestionTagView;)V

    .line 36
    return-void
.end method
