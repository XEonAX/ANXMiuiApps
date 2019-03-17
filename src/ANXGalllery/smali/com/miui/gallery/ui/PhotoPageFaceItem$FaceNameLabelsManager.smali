.class Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;
.super Ljava/lang/Object;
.source "PhotoPageFaceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFaceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceNameLabelsManager"
.end annotation


# instance fields
.field private mLables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLables:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLastFaces:Ljava/util/ArrayList;

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->viewAlbum(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->isVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;
    .param p1, "x1"    # Lcom/miui/gallery/model/CloudItem;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->bindViewAndData(Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;ZIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 310
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->onLayout(ZIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p2, "x2"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->showMenuDialog(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/model/BaseDataItem;)V

    return-void
.end method

.method private bindViewAndData(Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/model/CloudItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/model/CloudItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    const/4 v7, -0x2

    .line 317
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->removeFacelabel()V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/model/CloudItem;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 322
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->notChangedFaces(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/miui/gallery/model/CloudItem;->getOrientation()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mOrientation:I

    .line 326
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->removeFacelabel()V

    .line 327
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLastFaces:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 329
    .local v0, "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v2, "view":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v3, 0x7f120003

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 334
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 335
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 338
    invoke-virtual {v5}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0192

    .line 340
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 335
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f100164

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    const v3, 0x7f020118

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 344
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v1, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v3, v2, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/model/CloudItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    .end local v1    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 331
    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0c0582

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 366
    .end local v0    # "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .end local v2    # "view":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->removeFacelabel()V

    goto/16 :goto_0
.end method

.method private isVisible()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$1100(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notChangedFaces(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLastFaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 384
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLastFaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->equalMainInfoWith(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 389
    const/4 v1, 0x1

    .line 392
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 383
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 406
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v6}, Luk/co/senab/photoview/PhotoView;->getDrawableSize()Landroid/graphics/RectF;

    move-result-object v5

    .line 407
    .local v5, "size":Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 408
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 409
    .local v2, "label":Landroid/view/View;
    const v7, 0x7f120003

    .line 410
    invoke-virtual {v2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 411
    .local v0, "faceInfo":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget v9, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mOrientation:I

    invoke-static {v7, v8, v0, v9}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$900(FFLcom/miui/gallery/cloud/peopleface/PeopleFace;I)Landroid/graphics/RectF;

    move-result-object v1

    .line 412
    .local v1, "faceRect":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v7, v1}, Luk/co/senab/photoview/PhotoView;->getAbsoluteRect(Landroid/graphics/RectF;)Z

    .line 413
    iget v7, v1, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 415
    .local v3, "labelX":I
    iget v7, v1, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v4, v7, -0x14

    .line 418
    .local v4, "labelY":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    .line 419
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 417
    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 422
    .end local v0    # "faceInfo":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .end local v1    # "faceRect":Landroid/graphics/RectF;
    .end local v2    # "label":Landroid/view/View;
    .end local v3    # "labelX":I
    .end local v4    # "labelY":I
    :cond_0
    return-void
.end method

.method private removeFacelabel()V
    .locals 3

    .prologue
    .line 396
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 398
    .local v0, "label":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 400
    .end local v0    # "label":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->mLastFaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 403
    return-void
.end method

.method private showMenuDialog(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 8
    .param p1, "face"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 426
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 427
    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c057d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 428
    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c031a

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 431
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 432
    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager$2;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 455
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 456
    return-void
.end method

.method private viewAlbum(Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V
    .locals 5
    .param p1, "face"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    .line 461
    .local v1, "peopleId":Ljava/lang/String;
    iget-object v2, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 462
    .local v2, "peopleLocalId":Ljava/lang/String;
    const-string v3, "server_id_of_album"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v3, "local_id_of_album"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v3, "album_name"

    iget-object v4, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/activity/facebaby/FacePageActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 467
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 468
    return-void
.end method


# virtual methods
.method public final onMatrixChanged(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v1, 0x1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->onLayout(ZIIII)V

    .line 374
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->invalidate()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->removeFacelabel()V

    goto :goto_0
.end method
