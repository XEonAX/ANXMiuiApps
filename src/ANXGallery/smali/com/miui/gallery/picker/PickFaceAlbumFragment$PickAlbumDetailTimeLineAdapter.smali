.class Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;
.super Lcom/miui/gallery/adapter/FacePageAdapter;
.source "PickFaceAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickFaceAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickAlbumDetailTimeLineAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/PickFaceAlbumFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    .line 181
    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/FacePageAdapter;-><init>(Landroid/content/Context;)V

    .line 182
    return-void
.end method


# virtual methods
.method public doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/FacePageAdapter;->doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-virtual {v0, p1, p3}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->bindCheckState(Landroid/view/View;Landroid/database/Cursor;)V

    .line 188
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickFaceAlbumFragment$PickAlbumDetailTimeLineAdapter;->this$0:Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickFaceAlbumFragment;->access$400(Lcom/miui/gallery/picker/PickFaceAlbumFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/miui/gallery/picker/helper/PickerItemHolder;->bindView(ILandroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V

    .line 189
    return-void
.end method
