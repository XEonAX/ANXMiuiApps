.class public Lmiui/net/http/BaseRetryStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/net/http/RetryStrategy;


# static fields
.field private static CA:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_TIMEOUT:I = 0x2710


# instance fields
.field private CB:I

.field private CC:I

.field private final CE:I

.field private final CJ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/net/http/BaseRetryStrategy;->CA:Ljava/util/ArrayList;

    .line 40
    sget-object v0, Lmiui/net/http/BaseRetryStrategy;->CA:Ljava/util/ArrayList;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lmiui/net/http/BaseRetryStrategy;->CA:Ljava/util/ArrayList;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 68
    const/16 v0, 0x2710

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lmiui/net/http/BaseRetryStrategy;-><init>(IIF)V

    .line 69
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lmiui/net/http/BaseRetryStrategy;->CB:I

    .line 80
    iput p2, p0, Lmiui/net/http/BaseRetryStrategy;->CE:I

    .line 81
    iput p3, p0, Lmiui/net/http/BaseRetryStrategy;->CJ:F

    .line 82
    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .locals 1

    .line 91
    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->CC:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .line 86
    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->CB:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .locals 2

    .line 110
    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->CC:I

    iget v1, p0, Lmiui/net/http/BaseRetryStrategy;->CE:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isUnretryThrowable(Ljava/lang/Throwable;)Z
    .locals 2

    .line 122
    sget-object v0, Lmiui/net/http/BaseRetryStrategy;->CA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 p1, 0x1

    return p1

    .line 126
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public retry(Ljava/lang/Throwable;)Z
    .locals 4

    .line 96
    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->CC:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/net/http/BaseRetryStrategy;->CC:I

    .line 97
    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->CB:I

    int-to-float v0, v0

    iget v2, p0, Lmiui/net/http/BaseRetryStrategy;->CB:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/net/http/BaseRetryStrategy;->CJ:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lmiui/net/http/BaseRetryStrategy;->CB:I

    .line 99
    invoke-virtual {p0}, Lmiui/net/http/BaseRetryStrategy;->hasAttemptRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/net/http/BaseRetryStrategy;->isUnretryThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
