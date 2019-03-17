.class Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "QuickAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/display/QuickAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataDiffCallback"
.end annotation


# instance fields
.field mInnerDiffCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field mNewTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOldTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/util/DiffUtil$Callback;)V
    .locals 0
    .param p3, "innerDiffCallback"    # Landroid/support/v7/util/DiffUtil$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "oldTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "newTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mOldTypeList:Ljava/util/ArrayList;

    .line 563
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mNewTypeList:Ljava/util/ArrayList;

    .line 564
    iput-object p3, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mInnerDiffCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 565
    return-void
.end method

.method private getItemStartPosition(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 593
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 597
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 592
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    const/16 v1, 0x10

    .line 584
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mOldTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mNewTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mInnerDiffCallback:Landroid/support/v7/util/DiffUtil$Callback;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mOldTypeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->getItemStartPosition(Ljava/util/ArrayList;)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mNewTypeList:Ljava/util/ArrayList;

    .line 586
    invoke-direct {p0, v2}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->getItemStartPosition(Ljava/util/ArrayList;)I

    move-result v2

    sub-int v2, p2, v2

    .line 585
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v0

    .line 588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areItemsTheSame(II)Z
    .locals 2
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mOldTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mNewTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mNewTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;->mOldTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
