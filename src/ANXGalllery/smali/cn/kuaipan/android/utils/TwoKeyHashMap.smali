.class public Lcn/kuaipan/android/utils/TwoKeyHashMap;
.super Ljava/util/AbstractMap;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;,
        Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private arrSize:I

.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private modCount:I

.field private size:I

.field threshold:I

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>(IF)V

    .line 55
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "initialLoadFactor"    # F

    .prologue
    .line 73
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->threshold:I

    .line 74
    if-gez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialCapacity should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialLoadFactor should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iput p2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->loadFactor:F

    .line 81
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    .line 82
    add-int/lit8 p1, p1, -0x1

    .line 84
    :cond_2
    if-lez p1, :cond_3

    .end local p1    # "initialCapacity":I
    :goto_0
    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    .line 85
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    int-to-float v0, v0

    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->threshold:I

    .line 86
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 87
    return-void

    .line 84
    .restart local p1    # "initialCapacity":I
    :cond_3
    const/4 p1, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 34
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    return v0
.end method

.method static synthetic access$010(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 34
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    return v0
.end method

.method static synthetic access$100(Lcn/kuaipan/android/utils/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuaipan/android/utils/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 34
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    return v0
.end method

.method static synthetic access$308(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 34
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    return v0
.end method

.method static synthetic access$400(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method private final findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .locals 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 460
    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget v4, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    aget-object v0, v3, v4

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 463
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 464
    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    iget v4, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    rem-int v2, v3, v4

    .line 465
    .local v2, "index":I
    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v0, v3, v2

    .line 467
    .local v0, "e":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 468
    iget v3, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->hash:I

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    :cond_2
    iget-object v0, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_1

    .line 473
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    const/4 v5, 0x0

    .line 478
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 479
    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    .line 480
    .local v2, "index":I
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v6, v6, v2

    if-eqz v6, :cond_0

    .line 481
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v4, v6, v2

    .line 482
    .local v4, "ret":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aput-object v5, v6, v2

    .line 483
    iget v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    .line 484
    iget v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    .line 510
    .end local v4    # "ret":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    .line 487
    goto :goto_0

    .line 490
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int v1, v6, v7

    .line 491
    .local v1, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    iget v7, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    rem-int v2, v6, v7

    .line 493
    .restart local v2    # "index":I
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v0, v6, v2

    .line 494
    .local v0, "e":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    move-object v3, v0

    .line 495
    .local v3, "prev":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    .line 496
    iget v6, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->hash:I

    if-ne v1, v6, :cond_3

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 497
    if-ne v3, v0, :cond_2

    .line 498
    iget-object v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v6, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aput-object v6, v5, v2

    .line 502
    :goto_2
    iget v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    .line 503
    iget v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    move-object v4, v0

    .line 504
    goto :goto_0

    .line 500
    :cond_2
    iget-object v5, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v5, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_2

    .line 507
    :cond_3
    move-object v3, v0

    .line 508
    iget-object v0, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 510
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    const/4 v3, 0x0

    .line 113
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    .line 114
    iput v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    .line 115
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .locals 6
    .param p1, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TK;TV;",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;)",
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    .local p2, "key1":Ljava/lang/Object;, "TE;"
    .local p3, "key2":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    .local p5, "next":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)V

    return-object v0
.end method

.method createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    return-object v0
.end method

.method createValueCollectionIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->findEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    .line 228
    .local v0, "e":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TE;"
    .local p2, "key2":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 139
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 140
    iget v10, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    .line 141
    .local v10, "index":I
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    if-nez v0, :cond_1

    .line 142
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    aput-object v0, v6, v10

    .line 143
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    .line 144
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    .line 173
    :cond_0
    :goto_0
    return-object v2

    .line 147
    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    iget-object v11, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 148
    .local v11, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v0, v0, v10

    iput-object p3, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    move-object v2, v11

    .line 149
    goto :goto_0

    .line 153
    .end local v10    # "index":I
    .end local v11    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v4, v0, v1

    .line 154
    .local v4, "hash":I
    const v0, 0x7fffffff

    and-int/2addr v0, v4

    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    rem-int v10, v0, v1

    .line 155
    .restart local v10    # "index":I
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v9, v0, v10

    .line 157
    .local v9, "e":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-eqz v9, :cond_4

    .line 158
    iget v0, v9, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->hash:I

    if-ne v4, v0, :cond_3

    invoke-virtual {v9}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v11, v9, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    .line 160
    .restart local v11    # "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p3, v9, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    move-object v2, v11

    .line 161
    goto :goto_0

    .line 163
    .end local v11    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v9, v9, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_1

    .line 166
    :cond_4
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v8, v1, v10

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v1

    aput-object v1, v0, v10

    .line 167
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    .line 168
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->modCount:I

    .line 170
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->threshold:I

    if-le v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->rehash()V

    goto :goto_0
.end method

.method rehash()V
    .locals 9

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    const v8, 0x7fffffff

    .line 181
    iget v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 182
    .local v3, "newArrSize":I
    if-gez v3, :cond_0

    .line 183
    const v3, 0x7ffffffe

    .line 185
    :cond_0
    add-int/lit8 v6, v3, 0x1

    new-array v2, v6, [Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 187
    .local v2, "newArr":[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 188
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aget-object v0, v6, v1

    .line 189
    .local v0, "entry":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 190
    iget-object v5, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 192
    .local v5, "next":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget v6, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->hash:I

    and-int/2addr v6, v8

    rem-int v4, v6, v3

    .line 193
    .local v4, "newIndex":I
    aget-object v6, v2, v4

    iput-object v6, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->next:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 194
    aput-object v0, v2, v4

    .line 196
    move-object v0, v5

    .line 197
    goto :goto_1

    .line 187
    .end local v4    # "newIndex":I
    .end local v5    # "next":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "entry":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :cond_2
    iget-object v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget v7, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    aget-object v6, v6, v7

    aput-object v6, v2, v3

    .line 200
    iput v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    .line 204
    iget v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    if-ne v6, v8, :cond_3

    .line 205
    iget v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->loadFactor:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    iput v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->loadFactor:F

    .line 207
    :cond_3
    iget v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arrSize:I

    int-to-float v6, v6

    iget v7, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->threshold:I

    .line 208
    iput-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->arr:[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 209
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 245
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->values:Ljava/util/Collection;

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap;->values:Ljava/util/Collection;

    return-object v0
.end method
