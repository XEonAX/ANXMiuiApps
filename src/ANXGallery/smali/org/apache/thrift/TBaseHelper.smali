.class public final Lorg/apache/thrift/TBaseHelper;
.super Ljava/lang/Object;
.source "TBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/thrift/TBaseHelper$NestedStructureComparator;
    }
.end annotation


# static fields
.field private static final comparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/apache/thrift/TBaseHelper$NestedStructureComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/thrift/TBaseHelper$NestedStructureComparator;-><init>(Lorg/apache/thrift/TBaseHelper$1;)V

    sput-object v0, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static byteBufferToByteArray(Ljava/nio/ByteBuffer;[BI)I
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "target"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 264
    .local v0, "remaining":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 264
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    return v0
.end method

.method public static byteBufferToByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 247
    invoke-static {p0}, Lorg/apache/thrift/TBaseHelper;->wrapsFullArray(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 251
    .local v0, "target":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/thrift/TBaseHelper;->byteBufferToByteArray(Ljava/nio/ByteBuffer;[BI)I

    goto :goto_0
.end method

.method public static compareTo(BB)I
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 58
    if-ge p0, p1, :cond_0

    .line 59
    const/4 v0, -0x1

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    if-ge p1, p0, :cond_1

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(DD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 98
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 99
    const/4 v0, -0x1

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    cmpg-double v0, p2, p0

    if-gez v0, :cond_1

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 78
    if-ge p0, p1, :cond_0

    .line 79
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    if-ge p1, p0, :cond_1

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 88
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 89
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    cmp-long v0, p2, p0

    if-gez v0, :cond_1

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/Comparable;
    .param p1, "b"    # Ljava/lang/Comparable;

    .prologue
    .line 126
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static compareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compareTo(Ljava/util/List;Ljava/util/List;)I
    .locals 5
    .param p0, "a"    # Ljava/util/List;
    .param p1, "b"    # Ljava/util/List;

    .prologue
    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v1

    .line 131
    .local v1, "lastComparison":I
    if-eqz v1, :cond_0

    move v2, v1

    .line 140
    :goto_0
    return v2

    .line 134
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 135
    sget-object v2, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 136
    if-eqz v1, :cond_1

    move v2, v1

    .line 137
    goto :goto_0

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static compareTo(Ljava/util/Map;Ljava/util/Map;)I
    .locals 10
    .param p0, "a"    # Ljava/util/Map;
    .param p1, "b"    # Ljava/util/Map;

    .prologue
    .line 168
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v4

    .line 169
    .local v4, "lastComparison":I
    if-eqz v4, :cond_0

    move v7, v4

    .line 195
    :goto_0
    return v7

    .line 174
    :cond_0
    new-instance v5, Ljava/util/TreeMap;

    sget-object v7, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-direct {v5, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 175
    .local v5, "sortedA":Ljava/util/SortedMap;
    invoke-interface {v5, p0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 176
    invoke-interface {v5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    new-instance v6, Ljava/util/TreeMap;

    sget-object v7, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 178
    .local v6, "sortedB":Ljava/util/SortedMap;
    invoke-interface {v6, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 179
    invoke-interface {v6}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 182
    .local v3, "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    .local v0, "entryA":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    .local v1, "entryB":Ljava/util/Map$Entry;
    sget-object v7, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 186
    if-eqz v4, :cond_2

    move v7, v4

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    sget-object v7, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 190
    if-eqz v4, :cond_1

    move v7, v4

    .line 191
    goto :goto_0

    .line 195
    .end local v0    # "entryA":Ljava/util/Map$Entry;
    .end local v1    # "entryB":Ljava/util/Map$Entry;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static compareTo(Ljava/util/Set;Ljava/util/Set;)I
    .locals 8
    .param p0, "a"    # Ljava/util/Set;
    .param p1, "b"    # Ljava/util/Set;

    .prologue
    .line 144
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v5, v6}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v2

    .line 145
    .local v2, "lastComparison":I
    if-eqz v2, :cond_0

    move v5, v2

    .line 164
    :goto_0
    return v5

    .line 148
    :cond_0
    new-instance v3, Ljava/util/TreeSet;

    sget-object v5, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-direct {v3, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 149
    .local v3, "sortedA":Ljava/util/SortedSet;
    invoke-interface {v3, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 150
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 151
    .local v4, "sortedB":Ljava/util/SortedSet;
    invoke-interface {v4, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    .local v0, "iterA":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "iterB":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    sget-object v5, Lorg/apache/thrift/TBaseHelper;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 159
    if-eqz v2, :cond_1

    move v5, v2

    .line 160
    goto :goto_0

    .line 164
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static compareTo(SS)I
    .locals 1
    .param p0, "a"    # S
    .param p1, "b"    # S

    .prologue
    .line 68
    if-ge p0, p1, :cond_0

    .line 69
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    .line 70
    :cond_0
    if-ge p1, p0, :cond_1

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(ZZ)I
    .locals 2
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 54
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public static compareTo([B[B)I
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    .line 112
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v2

    .line 113
    .local v2, "sizeCompare":I
    if-eqz v2, :cond_0

    .line 122
    .end local v2    # "sizeCompare":I
    :goto_0
    return v2

    .line 116
    .restart local v2    # "sizeCompare":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 117
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    invoke-static {v3, v4}, Lorg/apache/thrift/TBaseHelper;->compareTo(BB)I

    move-result v0

    .line 118
    .local v0, "byteCompare":I
    if-eqz v0, :cond_1

    move v2, v0

    .line 119
    goto :goto_0

    .line 116
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "byteCompare":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static paddedByteString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 242
    or-int/lit16 v1, p0, 0x100

    and-int/lit16 v0, v1, 0x1ff

    .line 243
    .local v0, "extended":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightSize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 273
    invoke-static {p0}, Lorg/apache/thrift/TBaseHelper;->wrapsFullArray(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    .end local p0    # "in":Ljava/nio/ByteBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "in":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p0}, Lorg/apache/thrift/TBaseHelper;->byteBufferToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public static toString(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 226
    .local v1, "buf":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 227
    .local v0, "arrayOffset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 228
    .local v4, "origLimit":I
    sub-int v5, v4, v0

    const/16 v6, 0x80

    if-le v5, v6, :cond_1

    add-int/lit16 v3, v0, 0x80

    .line 230
    .local v3, "limit":I
    :goto_0
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 231
    if-le v2, v0, :cond_0

    .line 232
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    aget-byte v5, v1, v2

    invoke-static {v5}, Lorg/apache/thrift/TBaseHelper;->paddedByteString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "limit":I
    :cond_1
    move v3, v4

    .line 228
    goto :goto_0

    .line 236
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_2
    if-eq v4, v3, :cond_3

    .line 237
    const-string v5, "..."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3
    return-void
.end method

.method public static wrapsFullArray(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
