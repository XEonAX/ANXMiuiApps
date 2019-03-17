.class public Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;
.super Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;
.source "BaseResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/movie/entity/MovieResource;",
        ">",
        "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mPlaceColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->mPlaceColors:[I

    .line 21
    return-void

    .line 23
    :array_0
    .array-data 4
        0x7f0201dc
        0x7f0201dd
        0x7f0201de
        0x7f0201df
        0x7f0201e0
        0x7f0201e1
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->mPlaceColors:[I

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter",
            "<TT;>.BaseResourceHolder;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>;"
    new-instance v0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;-><init>(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>;"
    const v0, 0x7f0400c0

    return v0
.end method
