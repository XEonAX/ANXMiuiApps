.class public Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter$HeaderHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FilterHeadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderHolder"
.end annotation


# instance fields
.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "itemView":Landroid/view/View;
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter$HeaderHolder;->mTitle:Landroid/widget/TextView;

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;)V
    .locals 2
    .param p1, "category"    # Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter$HeaderHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
