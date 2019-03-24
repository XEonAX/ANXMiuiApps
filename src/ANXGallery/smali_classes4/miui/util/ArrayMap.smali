.class public final Lmiui/util/ArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final Hh:I = 0x4

.field static Hi:[Ljava/lang/Object; = null

.field static Hj:I = 0x0

.field static Hk:[Ljava/lang/Object; = null

.field static Hl:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ArrayMap"


# instance fields
.field Hm:[I

.field Hn:[Ljava/lang/Object;

.field Ho:I

.field Hp:Lmiui/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Lmiui/util/a;->Hx:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 215
    sget-object v0, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 217
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    if-nez p1, :cond_0

    .line 224
    sget-object p1, Lmiui/util/a;->Hx:[I

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 225
    sget-object p1, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->S(I)V

    .line 229
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 230
    return-void
.end method

.method public constructor <init>(Lmiui/util/ArrayMap;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lmiui/util/ArrayMap;-><init>()V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->putAll(Lmiui/util/ArrayMap;)V

    .line 240
    :cond_0
    return-void
.end method

.method private S(I)V
    .locals 5

    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 144
    const-class v3, Lmiui/util/ArrayMap;

    monitor-enter v3

    .line 145
    :try_start_0
    sget-object v4, Lmiui/util/ArrayMap;->Hk:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 146
    sget-object p1, Lmiui/util/ArrayMap;->Hk:[Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 148
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lmiui/util/ArrayMap;->Hk:[Ljava/lang/Object;

    .line 149
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 150
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 151
    sget p1, Lmiui/util/ArrayMap;->Hl:I

    sub-int/2addr p1, v2

    sput p1, Lmiui/util/ArrayMap;->Hl:I

    .line 154
    monitor-exit v3

    return-void

    .line 156
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 157
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 158
    const-class v3, Lmiui/util/ArrayMap;

    monitor-enter v3

    .line 159
    :try_start_1
    sget-object v4, Lmiui/util/ArrayMap;->Hi:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 160
    sget-object p1, Lmiui/util/ArrayMap;->Hi:[Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 162
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lmiui/util/ArrayMap;->Hi:[Ljava/lang/Object;

    .line 163
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 164
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 165
    sget p1, Lmiui/util/ArrayMap;->Hj:I

    sub-int/2addr p1, v2

    sput p1, Lmiui/util/ArrayMap;->Hj:I

    .line 168
    monitor-exit v3

    return-void

    .line 170
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 173
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 174
    shl-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 7

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/16 v5, 0x8

    array-length v6, p0

    if-ne v6, v5, :cond_2

    .line 179
    const-class v5, Lmiui/util/ArrayMap;

    monitor-enter v5

    .line 180
    :try_start_0
    sget v6, Lmiui/util/ArrayMap;->Hl:I

    if-ge v6, v3, :cond_1

    .line 181
    sget-object v3, Lmiui/util/ArrayMap;->Hk:[Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 182
    aput-object p0, p1, v4

    .line 183
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v4

    :goto_0
    if-lt p0, v1, :cond_0

    .line 184
    aput-object v0, p1, p0

    .line 183
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 186
    :cond_0
    sput-object p1, Lmiui/util/ArrayMap;->Hk:[Ljava/lang/Object;

    .line 187
    sget p0, Lmiui/util/ArrayMap;->Hl:I

    add-int/2addr p0, v4

    sput p0, Lmiui/util/ArrayMap;->Hl:I

    .line 191
    :cond_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 192
    :cond_2
    array-length v5, p0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 193
    const-class v5, Lmiui/util/ArrayMap;

    monitor-enter v5

    .line 194
    :try_start_1
    sget v6, Lmiui/util/ArrayMap;->Hj:I

    if-ge v6, v3, :cond_4

    .line 195
    sget-object v3, Lmiui/util/ArrayMap;->Hi:[Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 196
    aput-object p0, p1, v4

    .line 197
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v4

    :goto_1
    if-lt p0, v1, :cond_3

    .line 198
    aput-object v0, p1, p0

    .line 197
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 200
    :cond_3
    sput-object p1, Lmiui/util/ArrayMap;->Hi:[Ljava/lang/Object;

    .line 201
    sget p0, Lmiui/util/ArrayMap;->Hj:I

    add-int/2addr p0, v4

    sput p0, Lmiui/util/ArrayMap;->Hj:I

    .line 205
    :cond_4
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 207
    :cond_5
    :goto_2
    return-void
.end method

.method private dh()Lmiui/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hp:Lmiui/util/MapCollections;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lmiui/util/ArrayMap$1;

    invoke-direct {v0, p0}, Lmiui/util/ArrayMap$1;-><init>(Lmiui/util/ArrayMap;)V

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hp:Lmiui/util/MapCollections;

    .line 716
    :cond_0
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hp:Lmiui/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 446
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 447
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 448
    :goto_0
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hm:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 451
    if-lez v0, :cond_1

    iget-object v2, p0, Lmiui/util/ArrayMap;->Hm:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_1

    .line 452
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 454
    const-string v4, "ArrayMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New hash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is before end of array hash "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/ArrayMap;->Hm:[I

    aget v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void

    .line 460
    :cond_1
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 461
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hm:[I

    aput v1, v2, v0

    .line 462
    shl-int/lit8 v0, v0, 0x1

    .line 463
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 464
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aput-object p2, p1, v0

    .line 465
    return-void

    .line 449
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Array is full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 247
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 249
    sget-object v0, Lmiui/util/a;->Hx:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 250
    sget-object v0, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 253
    :cond_0
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 726
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->dg()I

    move-result p1

    if-ltz p1, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :goto_1
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method dg()I
    .locals 5

    .line 105
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v0, -0x1

    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hm:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmiui/util/a;->a([III)I

    move-result v1

    .line 115
    if-gez v1, :cond_1

    .line 116
    return v1

    .line 120
    :cond_1
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 121
    return v1

    .line 126
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hm:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 127
    iget-object v3, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    .line 126
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 132
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    .line 131
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 139
    :cond_6
    not-int v0, v2

    return v0
.end method

.method public ensureCapacity(I)V
    .locals 4

    .line 275
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 276
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 277
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 278
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->S(I)V

    .line 279
    iget p1, p0, Lmiui/util/ArrayMap;->Ho:I

    if-lez p1, :cond_0

    .line 280
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hm:[I

    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :cond_0
    iget p1, p0, Lmiui/util/ArrayMap;->Ho:I

    invoke-static {v0, v1, p1}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 285
    :cond_1
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Lmiui/util/ArrayMap;->dh()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dz()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 578
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 579
    return v0

    .line 581
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 582
    check-cast p1, Ljava/util/Map;

    .line 583
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 584
    return v2

    .line 588
    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iget v3, p0, Lmiui/util/ArrayMap;->Ho:I

    if-ge v1, v3, :cond_5

    .line 589
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 590
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 591
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 592
    if-nez v4, :cond_3

    .line 593
    if-nez v5, :cond_2

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 594
    :cond_2
    return v2

    .line 596
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    .line 597
    return v2

    .line 588
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_5
    nop

    .line 605
    return v0

    .line 602
    :catch_0
    move-exception p1

    .line 603
    return v2

    .line 600
    :catch_1
    move-exception p1

    .line 601
    return v2

    .line 607
    :cond_6
    return v2
.end method

.method public erase()V
    .locals 5

    .line 260
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    if-lez v0, :cond_1

    .line 261
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    shl-int/lit8 v0, v0, 0x1

    .line 262
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 263
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 264
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iput v2, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 268
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 337
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->dg()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    .line 338
    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 9

    .line 615
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 616
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 617
    nop

    .line 618
    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    move v6, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 619
    aget-object v7, v1, v5

    .line 620
    aget v8, v0, v3

    if-nez v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 618
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 622
    :cond_1
    return v6
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 5

    .line 67
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 70
    if-nez v0, :cond_0

    .line 71
    const/4 p1, -0x1

    return p1

    .line 74
    :cond_0
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hm:[I

    invoke-static {v1, v0, p2}, Lmiui/util/a;->a([III)I

    move-result v1

    .line 77
    if-gez v1, :cond_1

    .line 78
    return v1

    .line 82
    :cond_1
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    return v1

    .line 88
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hm:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 89
    iget-object v3, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 88
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 94
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 93
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 101
    :cond_6
    not-int p1, v2

    return p1
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 5

    .line 299
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    mul-int/lit8 v0, v0, 0x2

    .line 300
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 301
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 302
    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_3

    .line 303
    aget-object v3, v1, p1

    if-nez v3, :cond_0

    .line 304
    shr-int/2addr p1, v2

    return p1

    .line 302
    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 308
    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 309
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    shr-int/lit8 p1, v3, 0x1

    return p1

    .line 308
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 314
    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 377
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 787
    invoke-direct {p0}, Lmiui/util/ArrayMap;->dh()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dA()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 393
    nop

    .line 394
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->dg()I

    move-result v1

    .line 399
    move v2, v0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 397
    invoke-virtual {p0, p1, v1}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 399
    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    if-ltz v1, :cond_1

    .line 400
    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 401
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 402
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 403
    return-object v0

    .line 406
    :cond_1
    not-int v1, v1

    .line 407
    iget v3, p0, Lmiui/util/ArrayMap;->Ho:I

    iget-object v4, p0, Lmiui/util/ArrayMap;->Hm:[I

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 408
    iget v3, p0, Lmiui/util/ArrayMap;->Ho:I

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_2

    iget v3, p0, Lmiui/util/ArrayMap;->Ho:I

    iget v4, p0, Lmiui/util/ArrayMap;->Ho:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    goto :goto_1

    .line 409
    :cond_2
    iget v3, p0, Lmiui/util/ArrayMap;->Ho:I

    if-lt v3, v4, :cond_3

    .line 413
    move v4, v5

    goto :goto_1

    .line 409
    :cond_3
    nop

    .line 413
    :goto_1
    iget-object v3, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 414
    iget-object v5, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v4}, Lmiui/util/ArrayMap;->S(I)V

    .line 417
    iget-object v4, p0, Lmiui/util/ArrayMap;->Hm:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 419
    iget-object v4, p0, Lmiui/util/ArrayMap;->Hm:[I

    array-length v6, v3

    invoke-static {v3, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget-object v4, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    :cond_4
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    invoke-static {v3, v5, v0}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 426
    :cond_5
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    if-ge v1, v0, :cond_6

    .line 429
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hm:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v5, v1

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_6
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hm:[I

    aput v2, v0, v1

    .line 434
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    .line 435
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    .line 436
    iget p1, p0, Lmiui/util/ArrayMap;->Ho:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 437
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 735
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    .line 736
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method public putAll(Lmiui/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 472
    iget v0, p1, Lmiui/util/ArrayMap;->Ho:I

    .line 473
    iget v1, p0, Lmiui/util/ArrayMap;->Ho:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    .line 474
    iget v1, p0, Lmiui/util/ArrayMap;->Ho:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 475
    if-lez v0, :cond_1

    .line 476
    iget-object v1, p1, Lmiui/util/ArrayMap;->Hm:[I

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hm:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object p1, p1, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iput v0, p0, Lmiui/util/ArrayMap;->Ho:I

    goto :goto_1

    .line 481
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 482
    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_1
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 495
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->dg()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    .line 496
    :goto_0
    if-ltz p1, :cond_1

    .line 497
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 500
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 747
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    .line 510
    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_0

    .line 513
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hm:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    invoke-static {p1, v1, v2}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 514
    sget-object p1, Lmiui/util/a;->Hx:[I

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 515
    sget-object p1, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 516
    iput v3, p0, Lmiui/util/ArrayMap;->Ho:I

    goto/16 :goto_0

    .line 518
    :cond_0
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hm:[I

    const/16 v5, 0x8

    array-length v2, v2

    if-le v2, v5, :cond_4

    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    iget-object v6, p0, Lmiui/util/ArrayMap;->Hm:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v2, v6, :cond_4

    .line 522
    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    if-le v2, v5, :cond_1

    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    iget v5, p0, Lmiui/util/ArrayMap;->Ho:I

    shr-int/2addr v5, v4

    add-int/2addr v5, v2

    nop

    .line 527
    :cond_1
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hm:[I

    .line 528
    iget-object v6, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    .line 529
    invoke-direct {p0, v5}, Lmiui/util/ArrayMap;->S(I)V

    .line 531
    iget v5, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v5, v4

    iput v5, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 532
    if-lez p1, :cond_2

    .line 534
    iget-object v5, p0, Lmiui/util/ArrayMap;->Hm:[I

    invoke-static {v2, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v5, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    invoke-static {v6, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    :cond_2
    iget v3, p0, Lmiui/util/ArrayMap;->Ho:I

    if-ge p1, v3, :cond_3

    .line 540
    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->Hm:[I

    iget v7, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v7, p1

    invoke-static {v2, v3, v5, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    shl-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v5, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v5, p1

    shl-int/lit8 p1, v5, 0x1

    invoke-static {v6, v2, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    :cond_3
    goto :goto_0

    .line 545
    :cond_4
    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v2, v4

    iput v2, p0, Lmiui/util/ArrayMap;->Ho:I

    .line 546
    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    if-ge p1, v2, :cond_5

    .line 549
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hm:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->Hm:[I

    iget v6, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v6, p1

    invoke-static {v2, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/2addr v3, v4

    iget-object v5, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArrayMap;->Ho:I

    sub-int/2addr v6, p1

    shl-int/lit8 p1, v6, 0x1

    invoke-static {v2, v3, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    :cond_5
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArrayMap;->Ho:I

    shl-int/2addr v1, v4

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 554
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArrayMap;->Ho:I

    shl-int/2addr v1, v4

    add-int/2addr v1, v4

    aput-object v2, p1, v1

    .line 557
    :goto_0
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 757
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 366
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 367
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 368
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 369
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 565
    iget v0, p0, Lmiui/util/ArrayMap;->Ho:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 634
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "{}"

    return-object v0

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/ArrayMap;->Ho:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 639
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmiui/util/ArrayMap;->Ho:I

    if-ge v1, v2, :cond_4

    .line 641
    if-lez v1, :cond_1

    .line 642
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_1
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 645
    if-eq v2, p0, :cond_2

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 648
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 652
    if-eq v2, p0, :cond_3

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 655
    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hn:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Lmiui/util/ArrayMap;->dh()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dB()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
