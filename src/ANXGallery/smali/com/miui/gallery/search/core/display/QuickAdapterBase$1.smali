.class Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;
.super Ljava/lang/Object;
.source "QuickAdapterBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/display/QuickAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/display/QuickAdapterBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/display/QuickAdapterBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    .prologue
    .line 354
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;->this$0:Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;->this$0:Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;->this$0:Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    invoke-static {v1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->access$000(Lcom/miui/gallery/search/core/display/QuickAdapterBase;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->removeFooterView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;->this$0:Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->openLoadMore()V

    .line 360
    return-void
.end method
