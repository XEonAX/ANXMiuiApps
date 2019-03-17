.class public Lcom/miui/gallery/scanner/MediaBulkInserter;
.super Ljava/lang/Object;
.source "MediaBulkInserter.java"


# instance fields
.field protected mBulkCount:I

.field private mUri:Landroid/net/Uri;

.field protected mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mBulkCount:I

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mUri:Landroid/net/Uri;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mBulkCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mValues:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public flush(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 37
    new-array v1, v0, [Landroid/content/ContentValues;

    .line 38
    .local v1, "values":[Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 39
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 41
    .end local v1    # "values":[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public insert(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 26
    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/scanner/MediaBulkInserter;->mBulkCount:I

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void
.end method
