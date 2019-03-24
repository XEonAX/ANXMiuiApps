.class public Lmiui/content/res/FixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "FixedSizeStringBuffer.java"


# static fields
.field private static final STRING_CAPACITY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FixedSizeStringBuffer"

.field private static sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/SoftReference<",
            "Lmiui/content/res/FixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMutex:Ljava/lang/Object;


# instance fields
.field private mBuf:[C

.field private mLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 53
    new-array v0, p1, [C

    iput-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    .line 54
    return-void
.end method

.method public static freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V
    .locals 3
    .param p0, "buffer"    # Lmiui/content/res/FixedSizeStringBuffer;

    .line 47
    sget-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBuffer()Lmiui/content/res/FixedSizeStringBuffer;
    .locals 6

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "ret":Lmiui/content/res/FixedSizeStringBuffer;
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 29
    :try_start_1
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 30
    .local v2, "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/FixedSizeStringBuffer;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .line 35
    .end local v2    # "cache":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lmiui/content/res/FixedSizeStringBuffer;>;"
    goto :goto_1

    .line 31
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    const-string v3, "FixedSizeStringBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sBufferPool remove() throw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    .line 38
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    if-nez v0, :cond_2

    .line 40
    new-instance v1, Lmiui/content/res/FixedSizeStringBuffer;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;-><init>(I)V

    move-object v0, v1

    .line 42
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 43
    return-object v0

    .line 38
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 77
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 80
    sub-int v0, p3, p2

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 82
    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 84
    :cond_0
    return-void
.end method

.method public assign(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public assign(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "end"    # I

    .line 69
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v0, v0

    if-gt p2, v0, :cond_0

    .line 70
    iput p2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 71
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 73
    :cond_0
    return-void
.end method

.method public move(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 61
    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 62
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 57
    iput p1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
