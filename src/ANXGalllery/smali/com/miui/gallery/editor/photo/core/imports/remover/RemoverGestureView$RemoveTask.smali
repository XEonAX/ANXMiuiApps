.class Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;
.super Landroid/os/AsyncTask;
.source "RemoverGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mWeakRemoverGestureView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)V
    .locals 1
    .param p1, "removerGestureView"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .prologue
    .line 679
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 680
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->mWeakRemoverGestureView:Ljava/lang/ref/WeakReference;

    .line 681
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->mWeakRemoverGestureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .line 735
    .local v13, "view":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
    if-eqz v13, :cond_3

    .line 736
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v1

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->export(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;Ljava/util/List;)V

    .line 737
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 738
    .local v12, "rectF":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 739
    .local v11, "rect":Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 740
    .local v10, "bitmapWidth":I
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 741
    .local v9, "bitmapHeight":I
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v0

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Ljava/util/List;

    move-result-object v1

    invoke-static {v12, v10, v9, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->getMaskBounds(Landroid/graphics/RectF;IILcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;Ljava/util/List;)V

    .line 742
    invoke-virtual {v12, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 743
    const-string v0, "RemoverGestureView"

    const-string v1, "mask rect: %s, width: %s, height %s"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v11, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const/16 v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 757
    .end local v9    # "bitmapHeight":I
    .end local v10    # "bitmapWidth":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "rectF":Landroid/graphics/RectF;
    :goto_0
    return-object v0

    .line 748
    .restart local v9    # "bitmapHeight":I
    .restart local v10    # "bitmapWidth":I
    .restart local v11    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "rectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, v10, :cond_1

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt v0, v9, :cond_2

    .line 749
    :cond_1
    const/16 v0, -0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_2
    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    invoke-direct {v8}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;-><init>()V

    .line 752
    .local v8, "removerNNFData":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v0

    iput-object v8, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    .line 753
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 754
    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 753
    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->inpaintBmpData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIIILcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 757
    .end local v8    # "removerNNFData":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;
    .end local v9    # "bitmapHeight":I
    .end local v10    # "bitmapWidth":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "rectF":Landroid/graphics/RectF;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 676
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "res"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 696
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 697
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->mWeakRemoverGestureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .line 698
    .local v1, "view":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 699
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 700
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0xb

    if-ne v2, v3, :cond_2

    .line 701
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0415

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 702
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;->removeDone(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;)V

    .line 724
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->activated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 730
    :cond_1
    :goto_1
    return-void

    .line 703
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0xc

    if-ne v2, v3, :cond_3

    .line 704
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;->removeDone(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;)V

    goto :goto_0

    .line 705
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4

    .line 707
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;->removeDone(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;)V

    .line 708
    const-string v2, "RemoverGestureView"

    const-string v3, "remove sdk process error :%d"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 709
    :cond_4
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 710
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;-><init>()V

    .line 711
    .local v0, "newPaintData":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mCurves:Ljava/util/List;

    .line 712
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->set(Landroid/graphics/Matrix;)V

    .line 713
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 714
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawableBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 715
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->set(Landroid/graphics/Matrix;)V

    .line 716
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->set(Landroid/graphics/Matrix;)V

    .line 717
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 718
    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mViewBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 719
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    iput-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    .line 720
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;->removeDone(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;)V

    goto/16 :goto_0

    .line 727
    .end local v0    # "newPaintData":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    :cond_5
    invoke-static {v1, v5}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$802(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;Ljava/util/List;)Ljava/util/List;

    .line 728
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->invalidate()V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 676
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 685
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 686
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoveTask;->mWeakRemoverGestureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .line 687
    .local v0, "view":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
    if-eqz v0, :cond_0

    .line 688
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;->onRemoveStart()V

    .line 692
    :cond_0
    return-void
.end method
