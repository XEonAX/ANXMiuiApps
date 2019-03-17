.class public Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;
.super Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
.source "EditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditHolder"
.end annotation


# instance fields
.field protected mImageView:Lcom/meicam/sdk/NvsThumbnailView;

.field protected mImageViewAdd:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    .line 75
    invoke-direct {p0, p2}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;-><init>(Landroid/view/View;)V

    .line 76
    const v0, 0x7f1201e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsThumbnailView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageView:Lcom/meicam/sdk/NvsThumbnailView;

    .line 77
    const v0, 0x7f1201e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageViewAdd:Landroid/widget/ImageView;

    .line 78
    return-void
.end method


# virtual methods
.method public bindView(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->isAddItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageView:Lcom/meicam/sdk/NvsThumbnailView;

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsThumbnailView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageViewAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageView:Lcom/meicam/sdk/NvsThumbnailView;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsThumbnailView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageViewAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->mImageView:Lcom/meicam/sdk/NvsThumbnailView;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getItemData(I)Lcom/miui/gallery/movie/entity/ImageEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/ImageEntity;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsThumbnailView;->setMediaFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method
