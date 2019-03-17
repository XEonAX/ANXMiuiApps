.class public final Lmtopsdk/network/domain/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/network/domain/Request$1;,
        Lmtopsdk/network/domain/Request$Builder;
    }
.end annotation


# instance fields
.field private final bizId:I

.field private final body:Lmtopsdk/network/domain/RequestBody;

.field private final connectTimeoutMills:I

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final readTimeoutMills:I

.field private final retryTimes:I

.field private final seqNo:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmtopsdk/network/domain/Request$Builder;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$000(Lmtopsdk/network/domain/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$100(Lmtopsdk/network/domain/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$200(Lmtopsdk/network/domain/Request$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    .line 31
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$300(Lmtopsdk/network/domain/Request$Builder;)Lmtopsdk/network/domain/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    .line 32
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$400(Lmtopsdk/network/domain/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$500(Lmtopsdk/network/domain/Request$Builder;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    .line 34
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$600(Lmtopsdk/network/domain/Request$Builder;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    .line 35
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$700(Lmtopsdk/network/domain/Request$Builder;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    .line 36
    invoke-static {p1}, Lmtopsdk/network/domain/Request$Builder;->access$800(Lmtopsdk/network/domain/Request$Builder;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request;->bizId:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/network/domain/Request$Builder;Lmtopsdk/network/domain/Request$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lmtopsdk/network/domain/Request;-><init>(Lmtopsdk/network/domain/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lmtopsdk/network/domain/Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lmtopsdk/network/domain/Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/RequestBody;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    return-object v0
.end method

.method static synthetic access$1300(Lmtopsdk/network/domain/Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lmtopsdk/network/domain/Request;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    return v0
.end method

.method static synthetic access$1500(Lmtopsdk/network/domain/Request;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    return v0
.end method

.method static synthetic access$1600(Lmtopsdk/network/domain/Request;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    return v0
.end method

.method static synthetic access$1700(Lmtopsdk/network/domain/Request;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lmtopsdk/network/domain/Request;->bizId:I

    return v0
.end method


# virtual methods
.method public final bizId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lmtopsdk/network/domain/Request;->bizId:I

    return v0
.end method

.method public final body()Lmtopsdk/network/domain/RequestBody;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    return-object v0
.end method

.method public final connectTimeoutMills()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    return v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final isHttps()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder()Lmtopsdk/network/domain/Request$Builder;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lmtopsdk/network/domain/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/network/domain/Request$Builder;-><init>(Lmtopsdk/network/domain/Request;Lmtopsdk/network/domain/Request$1;)V

    return-object v0
.end method

.method public final readTimeoutMills()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    return v0
.end method

.method public final retryTimes()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    return v0
.end method

.method public final seqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{body="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", method=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seqNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectTimeoutMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readTimeoutMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    return-object v0
.end method
