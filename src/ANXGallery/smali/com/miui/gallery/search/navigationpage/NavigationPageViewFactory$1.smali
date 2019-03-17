.class Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$1;
.super Ljava/lang/Object;
.source "NavigationPageViewFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;->bindViewHolder(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/Suggestion;ILcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;

.field final synthetic val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;Lcom/miui/gallery/search/core/display/OnActionClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory;

    iput-object p2, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$1;->val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 187
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "from"

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "from_navigation_history"

    aput-object v3, v2, v4

    invoke-static {v5, v1, v2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationPageViewFactory$1;->val$listener:Lcom/miui/gallery/search/core/display/OnActionClickListener;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, v5, v0}, Lcom/miui/gallery/search/core/display/OnActionClickListener;->onClick(Landroid/view/View;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 191
    return-void
.end method
