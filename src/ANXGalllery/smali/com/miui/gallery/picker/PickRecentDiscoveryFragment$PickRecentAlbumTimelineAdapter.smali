.class Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;
.super Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
.source "PickRecentDiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickRecentAlbumTimelineAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    .line 176
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_NONE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-virtual {v0, p1, p3}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->bindCheckState(Landroid/view/View;Landroid/database/Cursor;)V

    .line 183
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment$PickRecentAlbumTimelineAdapter;->this$0:Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;->access$500(Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/miui/gallery/picker/helper/PickerItemHolder;->bindView(ILandroid/view/View;Landroid/widget/ListAdapter;Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;)V

    .line 184
    return-void
.end method
