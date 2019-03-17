.class public Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
.super Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;
.source "EditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;,
        Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter",
        "<",
        "Lcom/miui/gallery/movie/entity/ImageEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_ADD:Lcom/miui/gallery/movie/entity/ImageEntity;


# instance fields
.field private mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mOnActionListener:Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/miui/gallery/movie/entity/ImageEntity;

    const-string v1, "ITEM_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/movie/entity/ImageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->ITEM_ADD:Lcom/miui/gallery/movie/entity/ImageEntity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;-><init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mSelectedItemPosition:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->doScaleAnimal(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mOnActionListener:Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->swapSelectItem(II)V

    return-void
.end method

.method private doScaleAnimal(Landroid/view/View;Z)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isIncrease"    # Z

    .prologue
    const v4, 0x3fab851f    # 1.34f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 246
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 247
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    aput v3, v7, v8

    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    aput v3, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 248
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    if-eqz p2, :cond_1

    :goto_1
    aput v4, v6, v9

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 249
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 250
    new-array v3, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    aput-object v2, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 251
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 254
    return-void

    .end local v1    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    move v3, v5

    .line 247
    goto :goto_0

    .restart local v1    # "x":Landroid/animation/PropertyValuesHolder;
    :cond_1
    move v4, v5

    .line 248
    goto :goto_1
.end method

.method private swapSelectItem(II)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 230
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mSelectedItemPosition:I

    if-ne v0, p1, :cond_1

    .line 231
    iput p2, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mSelectedItemPosition:I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mSelectedItemPosition:I

    if-ne v0, p2, :cond_0

    .line 233
    iput p1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mSelectedItemPosition:I

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-object v0
.end method

.method protected bridge synthetic getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$EditHolder;-><init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemData(I)Lcom/miui/gallery/movie/entity/ImageEntity;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 56
    if-gez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 60
    sget-object v0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->ITEM_ADD:Lcom/miui/gallery/movie/entity/ImageEntity;

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/entity/ImageEntity;

    goto :goto_0
.end method

.method public bridge synthetic getItemData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getItemData(I)Lcom/miui/gallery/movie/entity/ImageEntity;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0400bf

    return v0
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isAddItem(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getItemData(I)Lcom/miui/gallery/movie/entity/ImageEntity;

    move-result-object v0

    .line 67
    .local v0, "itemData":Lcom/miui/gallery/movie/entity/ImageEntity;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/gallery/movie/entity/ImageEntity;->image:Ljava/lang/String;

    const-string v2, "ITEM_ADD"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnActionListener(Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;)V
    .locals 0
    .param p1, "onActionListener"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->mOnActionListener:Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;

    .line 239
    return-void
.end method
