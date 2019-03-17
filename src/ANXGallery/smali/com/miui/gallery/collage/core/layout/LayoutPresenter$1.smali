.class Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;
.super Ljava/lang/Object;
.source "LayoutPresenter.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/layout/LayoutDataLoader$DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/layout/LayoutPresenter;->onCreateDataLoader(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)Lcom/miui/gallery/collage/app/common/IDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

.field final synthetic val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/layout/LayoutPresenter;Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;->this$0:Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoad(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "layout":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;>;"
    iget-object v2, p0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;->this$0:Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    invoke-static {v2}, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;->access$000(Lcom/miui/gallery/collage/core/layout/LayoutPresenter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 77
    .local v1, "key":I
    iget-object v2, p0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;->this$0:Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    invoke-static {v2}, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;->access$000(Lcom/miui/gallery/collage/core/layout/LayoutPresenter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "key":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-interface {v2}, Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;->onDataLoad()V

    .line 82
    :cond_1
    return-void
.end method
