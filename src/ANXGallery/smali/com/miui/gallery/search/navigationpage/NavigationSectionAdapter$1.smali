.class Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;
.super Ljava/lang/Object;
.source "NavigationSectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

.field final synthetic val$convertPosition:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    iput p2, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->val$convertPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "from"

    aput-object v3, v2, v5

    const-string v3, "sectionType"

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    iget-object v4, v4, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mFrom:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    iget-object v4, v4, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mSection:Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .line 81
    invoke-interface {v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionTypeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 79
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->mActionClickListener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    iget v3, p0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter$1;->val$convertPosition:I

    .line 83
    invoke-virtual {v2, v3}, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;->getItem(I)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v2

    .line 82
    invoke-interface {v1, p1, v5, v2, v0}, Lcom/miui/gallery/search/core/display/OnActionClickListener;->onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method
