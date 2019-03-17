.class Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;
.super Ljava/lang/Object;
.source "ImageResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

.field final synthetic val$groupIndex:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/ImageResultAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;->this$0:Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    iput p2, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;->val$groupIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;->this$0:Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->access$000(Lcom/miui/gallery/search/resultpage/ImageResultAdapter;)Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;->this$0:Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->access$000(Lcom/miui/gallery/search/resultpage/ImageResultAdapter;)Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$1;->val$groupIndex:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;->onHeaderItemClicked(I)V

    .line 57
    :cond_0
    return-void
.end method
