.class Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;
.super Ljava/lang/Object;
.source "PosterPresenter.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/poster/PosterDataLoader$DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/poster/PosterPresenter;->onCreateDataLoader(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)Lcom/miui/gallery/collage/app/common/IDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/poster/PosterPresenter;

.field final synthetic val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/poster/PosterPresenter;Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoad(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ">;>;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "layoutForPoster":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;>;"
    .local p2, "poster":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;>;"
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-static {v2}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->access$000(Lcom/miui/gallery/collage/core/poster/PosterPresenter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 72
    .local v1, "key":I
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-static {v2}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->access$000(Lcom/miui/gallery/collage/core/poster/PosterPresenter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "key":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-static {v2}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->access$100(Lcom/miui/gallery/collage/core/poster/PosterPresenter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 76
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 77
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 78
    .restart local v1    # "key":I
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->this$0:Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-static {v2}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->access$100(Lcom/miui/gallery/collage/core/poster/PosterPresenter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v1    # "key":I
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/collage/core/poster/PosterPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-interface {v2}, Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;->onDataLoad()V

    .line 83
    :cond_2
    return-void
.end method
