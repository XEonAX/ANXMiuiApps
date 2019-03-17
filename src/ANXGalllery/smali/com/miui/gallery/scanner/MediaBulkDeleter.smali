.class public Lcom/miui/gallery/scanner/MediaBulkDeleter;
.super Ljava/lang/Object;
.source "MediaBulkDeleter.java"


# static fields
.field private static BULK_MAX:I


# instance fields
.field private mColumnName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWhereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x64

    sput v0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->BULK_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mUri:Landroid/net/Uri;

    .line 21
    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mColumnName:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereClause:Ljava/lang/StringBuilder;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/miui/gallery/scanner/MediaBulkDeleter;->BULK_MAX:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereArgs:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/miui/gallery/scanner/MediaBulkDeleter;->BULK_MAX:I

    if-le v0, v1, :cond_1

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaBulkDeleter;->flush(Landroid/content/Context;)V

    .line 35
    :cond_1
    return-void
.end method

.method public flush(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iget-object v3, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 39
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 40
    new-array v0, v2, [Ljava/lang/String;

    .line 41
    .local v0, "foo":[Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foo":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 42
    .restart local v0    # "foo":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mColumnName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereClause:Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "numrows":I
    const-string v3, "MediaBulkDeleter"

    const-string v4, "rows deleted: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v3, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereClause:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    iget-object v3, p0, Lcom/miui/gallery/scanner/MediaBulkDeleter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 48
    .end local v0    # "foo":[Ljava/lang/String;
    .end local v1    # "numrows":I
    :cond_0
    return-void
.end method
