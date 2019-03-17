.class Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private curr:I

.field private curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private found:Z

.field private returned_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private returned_index:I

.field private startModCount:I

.field final synthetic this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V
    .locals 1
    .param p1, "this$0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v0, -0x1

    .line 395
    iput-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    .line 391
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 396
    invoke-static {p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$300(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    .line 397
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v0, 0x1

    .line 400
    iget-boolean v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    if-eqz v1, :cond_0

    .line 414
    :goto_0
    return v0

    .line 403
    :cond_0
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v1, v1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 406
    :cond_1
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-nez v1, :cond_3

    .line 407
    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    :goto_1
    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v1

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    goto :goto_1

    .line 410
    :cond_2
    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 411
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v1

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 414
    :cond_3
    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-eqz v1, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$300(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v0, v1, :cond_0

    .line 419
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 425
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    .line 426
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 427
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 428
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v5, -0x1

    .line 432
    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    if-ne v2, v5, :cond_0

    .line 433
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 436
    :cond_0
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$300(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v2

    iget v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v2, v3, :cond_1

    .line 437
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 440
    :cond_1
    const/4 v1, 0x0

    .line 441
    .local v1, "p":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    aget-object v0, v2, v3

    .line 442
    .local v0, "e":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-eq v0, v2, :cond_2

    .line 443
    move-object v1, v0

    .line 444
    iget-object v0, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_0

    .line 446
    :cond_2
    if-eqz v1, :cond_3

    .line 447
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v2, v2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v2, v1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 451
    :goto_1
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$010(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    .line 452
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$308(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    .line 453
    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    .line 454
    iput v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 455
    return-void

    .line 449
    :cond_3
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    iget-object v4, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v4, v4, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aput-object v4, v2, v3

    goto :goto_1
.end method
