.class public final Lmiui/util/ArraySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
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

.field private static final TAG:Ljava/lang/String; = "ArraySet"


# instance fields
.field Hm:[I

.field Hn:[Ljava/lang/Object;

.field Ho:I

.field Hp:Lmiui/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TE;TE;>;"
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

    iput-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 215
    sget-object v0, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->Ho:I

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

    iput-object p1, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 225
    sget-object p1, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lmiui/util/ArraySet;->S(I)V

    .line 229
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/ArraySet;->Ho:I

    .line 230
    return-void
.end method

.method public constructor <init>(Lmiui/util/ArraySet;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lmiui/util/ArraySet;-><init>()V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lmiui/util/ArraySet;->addAll(Ljava/util/Collection;)Z

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
    const-class v3, Lmiui/util/ArraySet;

    monitor-enter v3

    .line 145
    :try_start_0
    sget-object v4, Lmiui/util/ArraySet;->Hk:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 146
    sget-object p1, Lmiui/util/ArraySet;->Hk:[Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 148
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lmiui/util/ArraySet;->Hk:[Ljava/lang/Object;

    .line 149
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 150
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 151
    sget p1, Lmiui/util/ArraySet;->Hl:I

    sub-int/2addr p1, v2

    sput p1, Lmiui/util/ArraySet;->Hl:I

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
    const-class v3, Lmiui/util/ArraySet;

    monitor-enter v3

    .line 159
    :try_start_1
    sget-object v4, Lmiui/util/ArraySet;->Hi:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 160
    sget-object p1, Lmiui/util/ArraySet;->Hi:[Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 162
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lmiui/util/ArraySet;->Hi:[Ljava/lang/Object;

    .line 163
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 164
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 165
    sget p1, Lmiui/util/ArraySet;->Hj:I

    sub-int/2addr p1, v2

    sput p1, Lmiui/util/ArraySet;->Hj:I

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

    iput-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 174
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 175
    return-void
.end method

.method static synthetic a(Lmiui/util/ArraySet;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lmiui/util/ArraySet;->dg()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/ArraySet;Ljava/lang/Object;I)I
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    return p0
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
    const-class v5, Lmiui/util/ArraySet;

    monitor-enter v5

    .line 180
    :try_start_0
    sget v6, Lmiui/util/ArraySet;->Hl:I

    if-ge v6, v3, :cond_1

    .line 181
    sget-object v3, Lmiui/util/ArraySet;->Hk:[Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 182
    aput-object p0, p1, v4

    .line 183
    sub-int/2addr p2, v4

    :goto_0
    if-lt p2, v1, :cond_0

    .line 184
    aput-object v0, p1, p2

    .line 183
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 186
    :cond_0
    sput-object p1, Lmiui/util/ArraySet;->Hk:[Ljava/lang/Object;

    .line 187
    sget p0, Lmiui/util/ArraySet;->Hl:I

    add-int/2addr p0, v4

    sput p0, Lmiui/util/ArraySet;->Hl:I

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
    const-class v5, Lmiui/util/ArraySet;

    monitor-enter v5

    .line 194
    :try_start_1
    sget v6, Lmiui/util/ArraySet;->Hj:I

    if-ge v6, v3, :cond_4

    .line 195
    sget-object v3, Lmiui/util/ArraySet;->Hi:[Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 196
    aput-object p0, p1, v4

    .line 197
    sub-int/2addr p2, v4

    :goto_1
    if-lt p2, v1, :cond_3

    .line 198
    aput-object v0, p1, p2

    .line 197
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 200
    :cond_3
    sput-object p1, Lmiui/util/ArraySet;->Hi:[Ljava/lang/Object;

    .line 201
    sget p0, Lmiui/util/ArraySet;->Hj:I

    add-int/2addr p0, v4

    sput p0, Lmiui/util/ArraySet;->Hj:I

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

.method private dg()I
    .locals 4

    .line 105
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v0, -0x1

    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lmiui/util/ArraySet;->Hm:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmiui/util/a;->a([III)I

    move-result v1

    .line 115
    if-gez v1, :cond_1

    .line 116
    return v1

    .line 120
    :cond_1
    iget-object v2, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 121
    return v1

    .line 126
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 127
    iget-object v3, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v3, v3, v2

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

    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 132
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v0, v0, v1

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

.method private dh()Lmiui/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lmiui/util/ArraySet;->Hp:Lmiui/util/MapCollections;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Lmiui/util/ArraySet$1;

    invoke-direct {v0, p0}, Lmiui/util/ArraySet$1;-><init>(Lmiui/util/ArraySet;)V

    iput-object v0, p0, Lmiui/util/ArraySet;->Hp:Lmiui/util/MapCollections;

    .line 611
    :cond_0
    iget-object v0, p0, Lmiui/util/ArraySet;->Hp:Lmiui/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 4

    .line 67
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    .line 70
    if-nez v0, :cond_0

    .line 71
    const/4 p1, -0x1

    return p1

    .line 74
    :cond_0
    iget-object v1, p0, Lmiui/util/ArraySet;->Hm:[I

    invoke-static {v1, v0, p2}, Lmiui/util/a;->a([III)I

    move-result v1

    .line 77
    if-gez v1, :cond_1

    .line 78
    return v1

    .line 82
    :cond_1
    iget-object v2, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v2, v2, v1

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

    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 89
    iget-object v3, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v3, v3, v2

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

    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 94
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v0, v0, v1

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


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 315
    nop

    .line 316
    invoke-direct {p0}, Lmiui/util/ArraySet;->dg()I

    move-result v1

    .line 321
    move v2, v0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 319
    invoke-direct {p0, p1, v1}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 321
    move v8, v2

    move v2, v1

    move v1, v8

    :goto_0
    if-ltz v1, :cond_1

    .line 322
    return v0

    .line 325
    :cond_1
    not-int v1, v1

    .line 326
    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    iget-object v4, p0, Lmiui/util/ArraySet;->Hm:[I

    const/4 v5, 0x1

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 327
    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v4, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    iget v4, p0, Lmiui/util/ArraySet;->Ho:I

    shr-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_1

    .line 328
    :cond_2
    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    if-lt v3, v4, :cond_3

    .line 332
    move v4, v6

    goto :goto_1

    .line 328
    :cond_3
    nop

    .line 332
    :goto_1
    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 333
    iget-object v6, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 334
    invoke-direct {p0, v4}, Lmiui/util/ArraySet;->S(I)V

    .line 336
    iget-object v4, p0, Lmiui/util/ArraySet;->Hm:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 338
    iget-object v4, p0, Lmiui/util/ArraySet;->Hm:[I

    array-length v7, v3

    invoke-static {v3, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget-object v4, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_4
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-static {v3, v6, v0}, Lmiui/util/ArraySet;->a([I[Ljava/lang/Object;I)V

    .line 345
    :cond_5
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    if-ge v1, v0, :cond_6

    .line 348
    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_6
    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    aput v2, v0, v1

    .line 353
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 354
    iget p1, p0, Lmiui/util/ArraySet;->Ho:I

    add-int/2addr p1, v5

    iput p1, p0, Lmiui/util/ArraySet;->Ho:I

    .line 355
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 632
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->ensureCapacity(I)V

    .line 633
    nop

    .line 634
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 635
    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 636
    goto :goto_0

    .line 637
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 3

    .line 248
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArraySet;->a([I[Ljava/lang/Object;I)V

    .line 250
    sget-object v0, Lmiui/util/a;->Hx:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 251
    sget-object v0, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->Ho:I

    .line 254
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 281
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lmiui/util/ArraySet;->dg()I

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

    invoke-direct {p0, p1, v2}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :goto_1
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 621
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 622
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    const/4 p1, 0x0

    return p1

    .line 627
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 4

    .line 261
    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 262
    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 263
    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 264
    invoke-direct {p0, p1}, Lmiui/util/ArraySet;->S(I)V

    .line 265
    iget p1, p0, Lmiui/util/ArraySet;->Ho:I

    if-lez p1, :cond_0

    .line 266
    iget-object p1, p0, Lmiui/util/ArraySet;->Hm:[I

    iget v2, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    :cond_0
    iget p1, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-static {v0, v1, p1}, Lmiui/util/ArraySet;->a([I[Ljava/lang/Object;I)V

    .line 271
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 488
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 489
    return v0

    .line 491
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 492
    check-cast p1, Ljava/util/Set;

    .line 493
    invoke-virtual {p0}, Lmiui/util/ArraySet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 494
    return v2

    .line 498
    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    if-ge v1, v3, :cond_3

    .line 499
    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 500
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    .line 501
    return v2

    .line 498
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_3
    nop

    .line 509
    return v0

    .line 506
    :catch_0
    move-exception p1

    .line 507
    return v2

    .line 504
    :catch_1
    move-exception p1

    .line 505
    return v2

    .line 511
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 519
    iget-object v0, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 520
    nop

    .line 521
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 522
    aget v4, v0, v2

    add-int/2addr v3, v4

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 298
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Lmiui/util/ArraySet;->dh()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dA()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lmiui/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 363
    iget v0, p1, Lmiui/util/ArraySet;->Ho:I

    .line 364
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->ensureCapacity(I)V

    .line 365
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 366
    if-lez v0, :cond_1

    .line 367
    iget-object v1, p1, Lmiui/util/ArraySet;->Hm:[I

    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget-object p1, p1, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    iput v0, p0, Lmiui/util/ArraySet;->Ho:I

    goto :goto_1

    .line 372
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 373
    invoke-virtual {p1, v2}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 386
    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/util/ArraySet;->dg()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    .line 387
    :goto_0
    if-ltz p1, :cond_1

    .line 388
    invoke-virtual {p0, p1}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 389
    const/4 p1, 0x1

    return p1

    .line 391
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 642
    nop

    .line 643
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 644
    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 645
    goto :goto_0

    .line 646
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 401
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 404
    iget-object p1, p0, Lmiui/util/ArraySet;->Hm:[I

    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-static {p1, v1, v3}, Lmiui/util/ArraySet;->a([I[Ljava/lang/Object;I)V

    .line 405
    sget-object p1, Lmiui/util/a;->Hx:[I

    iput-object p1, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 406
    sget-object p1, Lmiui/util/a;->Hz:[Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 407
    iput v2, p0, Lmiui/util/ArraySet;->Ho:I

    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lmiui/util/ArraySet;->Hm:[I

    const/16 v4, 0x8

    array-length v1, v1

    if-le v1, v4, :cond_4

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    iget-object v5, p0, Lmiui/util/ArraySet;->Hm:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_4

    .line 413
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    iget v4, p0, Lmiui/util/ArraySet;->Ho:I

    shr-int/2addr v4, v3

    add-int/2addr v4, v1

    nop

    .line 417
    :cond_1
    iget-object v1, p0, Lmiui/util/ArraySet;->Hm:[I

    .line 418
    iget-object v5, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    .line 419
    invoke-direct {p0, v4}, Lmiui/util/ArraySet;->S(I)V

    .line 421
    iget v4, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v4, v3

    iput v4, p0, Lmiui/util/ArraySet;->Ho:I

    .line 422
    if-lez p1, :cond_2

    .line 425
    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    invoke-static {v1, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget-object v3, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    invoke-static {v5, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    :cond_2
    iget v2, p0, Lmiui/util/ArraySet;->Ho:I

    if-ge p1, v2, :cond_3

    .line 431
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    iget v4, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v3, p1

    invoke-static {v5, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :cond_3
    goto :goto_0

    .line 435
    :cond_4
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v1, v3

    iput v1, p0, Lmiui/util/ArraySet;->Ho:I

    .line 436
    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    if-ge p1, v1, :cond_5

    .line 439
    iget-object v1, p0, Lmiui/util/ArraySet;->Hm:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lmiui/util/ArraySet;->Hm:[I

    iget v4, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v4, p0, Lmiui/util/ArraySet;->Ho:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    :cond_5
    iget-object p1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 445
    :goto_0
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 651
    nop

    .line 652
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 653
    iget-object v3, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 655
    nop

    .line 652
    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 658
    :cond_1
    return v2
.end method

.method public size()I
    .locals 1

    .line 453
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 458
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 465
    array-length v0, p1

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    if-ge v0, v1, :cond_0

    .line 466
    nop

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 468
    nop

    .line 470
    :cond_0
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    array-length v0, p1

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    if-le v0, v1, :cond_1

    .line 472
    iget v0, p0, Lmiui/util/ArraySet;->Ho:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 474
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 536
    invoke-virtual {p0}, Lmiui/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "{}"

    return-object v0

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/ArraySet;->Ho:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 541
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmiui/util/ArraySet;->Ho:I

    if-ge v1, v2, :cond_3

    .line 543
    if-lez v1, :cond_1

    .line 544
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 547
    if-eq v2, p0, :cond_2

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 550
    :cond_2
    const-string v2, "(this Set)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lmiui/util/ArraySet;->Hn:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
