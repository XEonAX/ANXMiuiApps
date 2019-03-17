.class Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;
.super Ljava/lang/Object;
.source "AlbumDetailFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doAddPhotos([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iput-object p2, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationSelected(I)V
    .locals 8
    .param p1, "ops"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    packed-switch p1, :pswitch_data_0

    .line 383
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-wide v2, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->val$ids:[J

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V

    .line 385
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-static {v0, v6}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$100(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)V

    .line 388
    :goto_0
    :pswitch_0
    return-void

    .line 377
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    iget-wide v2, v0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->mAlbumId:J

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->val$ids:[J

    move v6, v5

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->show(Landroid/app/Activity;J[JIZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)V

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragmentBase$1;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragmentBase;

    invoke-static {v0, v5}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->access$100(Lcom/miui/gallery/ui/AlbumDetailFragmentBase;Z)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
