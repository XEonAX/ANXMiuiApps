.class Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$1;
.super Ljava/lang/Object;
.source "PickAlbumDetailFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/picker/helper/AdapterHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->intialSelections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    return-object v0
.end method
