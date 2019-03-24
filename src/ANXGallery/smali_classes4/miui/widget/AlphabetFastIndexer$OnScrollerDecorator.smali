.class Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnScrollerDecorator"
.end annotation


# instance fields
.field private final OF:Landroid/widget/AbsListView$OnScrollListener;

.field private final OG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/widget/AlphabetFastIndexer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OG:Ljava/lang/ref/WeakReference;

    .line 493
    iput-object p2, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OF:Landroid/widget/AbsListView$OnScrollListener;

    .line 494
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 499
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->b(Lmiui/widget/AlphabetFastIndexer;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OF:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OF:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 506
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 510
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-static {v0, p2}, Lmiui/widget/AlphabetFastIndexer;->a(Lmiui/widget/AlphabetFastIndexer;I)I

    .line 514
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OF:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->OF:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 517
    :cond_1
    return-void
.end method
