.class public abstract Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;
.super Ljava/lang/Object;
.source "PagerGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/PagerGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAdapter"
.end annotation


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract bindData(ILandroid/view/View;)V
.end method

.method public abstract freshView(Landroid/view/View;)V
.end method

.method public abstract getColumnsCount()I
.end method

.method public abstract getCount()I
.end method

.method public abstract getRowsCount()I
.end method

.method public abstract getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 144
    return-void
.end method

.method public abstract onPageChanged()V
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
