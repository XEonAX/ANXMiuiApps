.class public Lmiui/net/http/HttpRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpRequestParams$FileWrapper;
    }
.end annotation


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String;


# instance fields
.field private Dn:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Do:Z

.field private yx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "UTF-8"

    sput-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->yx:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->Do:Z

    .line 56
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 5

    .line 64
    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;-><init>()V

    .line 65
    array-length v0, p1

    .line 66
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_5

    .line 70
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 71
    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 75
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/String;

    .line 76
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    .line 77
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 78
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;

    goto :goto_1

    .line 79
    :cond_0
    instance-of v4, v3, Ljava/io/File;

    if-eqz v4, :cond_1

    .line 80
    check-cast v3, Ljava/io/File;

    invoke-virtual {p0, v2, v3}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/io/File;)Lmiui/net/http/HttpRequestParams;

    goto :goto_1

    .line 81
    :cond_1
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 83
    check-cast v3, Ljava/util/List;

    .line 84
    invoke-virtual {p0, v2, v3}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/util/List;)Lmiui/net/http/HttpRequestParams;

    .line 85
    nop

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4
    return-void

    .line 67
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Supplied argument must be even"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cH()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 260
    iget-object v1, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 262
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 263
    new-instance v4, Landroid/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 265
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 266
    new-instance v5, Landroid/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    goto :goto_1

    .line 269
    :cond_1
    :goto_2
    goto :goto_0

    .line 270
    :cond_2
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/io/File;)Lmiui/net/http/HttpRequestParams;
    .locals 8

    .line 125
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/net/http/HttpRequestParams;->Do:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception p1

    .line 130
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 133
    :cond_0
    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 8

    .line 146
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/net/http/HttpRequestParams;->Do:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception p1

    .line 151
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 154
    :cond_0
    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 8

    .line 181
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 182
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/net/http/HttpRequestParams;->Do:Z

    .line 185
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 8

    .line 199
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 200
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/net/http/HttpRequestParams;->Do:Z

    .line 203
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 1

    .line 110
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 111
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/util/List;)Lmiui/net/http/HttpRequestParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/http/HttpRequestParams;"
        }
    .end annotation

    .line 165
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    return-object p0
.end method

.method public add(Ljava/util/Map;)Lmiui/net/http/HttpRequestParams;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/http/HttpRequestParams;"
        }
    .end annotation

    .line 213
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

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;

    .line 215
    goto :goto_0

    .line 216
    :cond_0
    return-object p0
.end method

.method public getParamString()Ljava/lang/String;
    .locals 5

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;->cH()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    :try_start_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lmiui/net/http/HttpRequestParams;->yx:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/http/HttpRequestParams;->yx:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_1

    .line 247
    :catch_0
    move-exception v2

    .line 248
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 250
    :goto_1
    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 1

    .line 226
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->Dn:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .locals 0

    .line 98
    if-nez p1, :cond_0

    sget-object p1, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lmiui/net/http/HttpRequestParams;->yx:Ljava/lang/String;

    .line 99
    return-object p0
.end method
