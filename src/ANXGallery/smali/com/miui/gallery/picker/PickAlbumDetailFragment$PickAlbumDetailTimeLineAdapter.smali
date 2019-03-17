.class Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;
.super Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
.source "PickAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickAlbumDetailTimeLineAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .line 325
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_NONE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-direct {p0, p2, v0}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 326
    return-void
.end method


# virtual methods
.method public doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 330
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 331
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-virtual {v0, p1, p3}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->bindCheckState(Landroid/view/View;Landroid/database/Cursor;)V

    .line 332
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->access$800(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/miui/gallery/picker/helper/PickerItemHolder;->bindView(ILandroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V

    .line 333
    return-void
.end method
