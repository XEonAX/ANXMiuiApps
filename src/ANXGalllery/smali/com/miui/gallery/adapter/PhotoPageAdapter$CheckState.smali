.class Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
.super Ljava/lang/Object;
.source "PhotoPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/PhotoPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;
    }
.end annotation


# instance fields
.field private mSelectedIds:Landroid/util/SparseLongArray;

.field private mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V
    .locals 2
    .param p1, "source"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    .line 470
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-interface {p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    .line 471
    return-void
.end method


# virtual methods
.method public appendCheck(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 482
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 483
    return-void
.end method

.method public getSelectedPositions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    .line 510
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .local v1, "pos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 512
    iget-object v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    return-object v1
.end method

.method public isCheckedId(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 8

    .prologue
    .line 494
    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 495
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 496
    new-instance v5, Landroid/util/SparseLongArray;

    invoke-direct {v5, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 497
    .local v5, "temp":Landroid/util/SparseLongArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 498
    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    .line 499
    .local v2, "id":J
    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v7

    invoke-interface {v6, v2, v3, v7}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getItemPos(JI)I

    move-result v4

    .line 500
    .local v4, "newPos":I
    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    .line 501
    invoke-virtual {v5, v4, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v2    # "id":J
    .end local v4    # "newPos":I
    :cond_1
    iput-object v5, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    .line 506
    .end local v1    # "i":I
    .end local v5    # "temp":Landroid/util/SparseLongArray;
    :cond_2
    return-void
.end method

.method public setChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 474
    if-eqz p4, :cond_0

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->mSelectedIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    goto :goto_0
.end method
