.class public abstract Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseHolder"
.end annotation


# instance fields
.field protected mSelected:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    const v0, 0x7f1201e0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 108
    const v0, 0x7f1201e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->mSelected:Landroid/view/View;

    .line 109
    return-void
.end method


# virtual methods
.method public abstract bindView(I)V
.end method

.method public bindView(ILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .prologue
    .line 114
    return-void
.end method
