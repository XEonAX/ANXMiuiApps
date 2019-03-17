.class Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;
.super Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;
.source "SearchResultSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/SearchResultSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultDataSet"
.end annotation


# instance fields
.field private mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPositionMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 9
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "initPos"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    const-wide/16 v4, -0x1

    const-string v6, ""

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;-><init>(Landroid/database/Cursor;IIJLjava/lang/String;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mIds:Ljava/util/List;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mPositionMap:Landroid/util/SparseIntArray;

    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 66
    invoke-interface {p2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 67
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mPositionMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mIds:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 72
    .end local v7    # "i":I
    .end local v8    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mPositionMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mPositionMap:Landroid/util/SparseIntArray;

    .line 77
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->isValidate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/gallery/loader/SearchResultSetLoader$SearchResultDataSet;->mPositionMap:Landroid/util/SparseIntArray;

    .line 78
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
