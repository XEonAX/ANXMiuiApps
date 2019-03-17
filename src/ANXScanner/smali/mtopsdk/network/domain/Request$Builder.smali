.class public Lmtopsdk/network/domain/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/domain/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bizId:I

.field private body:Lmtopsdk/network/domain/RequestBody;

.field private connectTimeoutMills:I

.field private headers:Ljava/util/Map;
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

.field private method:Ljava/lang/String;

.field private readTimeoutMills:I

.field private retryTimes:I

.field private seqNo:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x3a98

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 112
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    .line 117
    const-string v0, "GET"

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    .line 119
    return-void
.end method

.method private constructor <init>(Lmtopsdk/network/domain/Request;)V
    .locals 1

    .prologue
    const/16 v0, 0x3a98

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 112
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    .line 122
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1000(Lmtopsdk/network/domain/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1100(Lmtopsdk/network/domain/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1200(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->body:Lmtopsdk/network/domain/RequestBody;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    .line 126
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1300(Lmtopsdk/network/domain/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->seqNo:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1400(Lmtopsdk/network/domain/Request;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 128
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1500(Lmtopsdk/network/domain/Request;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    .line 129
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1600(Lmtopsdk/network/domain/Request;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->retryTimes:I

    .line 130
    invoke-static {p1}, Lmtopsdk/network/domain/Request;->access$1700(Lmtopsdk/network/domain/Request;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->bizId:I

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/network/domain/Request;Lmtopsdk/network/domain/Request$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lmtopsdk/network/domain/Request$Builder;-><init>(Lmtopsdk/network/domain/Request;)V

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/network/domain/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmtopsdk/network/domain/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmtopsdk/network/domain/Request$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lmtopsdk/network/domain/Request$Builder;)Lmtopsdk/network/domain/RequestBody;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->body:Lmtopsdk/network/domain/RequestBody;

    return-object v0
.end method

.method static synthetic access$400(Lmtopsdk/network/domain/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lmtopsdk/network/domain/Request$Builder;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    return v0
.end method

.method static synthetic access$600(Lmtopsdk/network/domain/Request$Builder;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    return v0
.end method

.method static synthetic access$700(Lmtopsdk/network/domain/Request$Builder;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lmtopsdk/network/domain/Request$Builder;->retryTimes:I

    return v0
.end method

.method static synthetic access$800(Lmtopsdk/network/domain/Request$Builder;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lmtopsdk/network/domain/Request$Builder;->bizId:I

    return v0
.end method


# virtual methods
.method public bizId(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->bizId:I

    .line 193
    return-object p0
.end method

.method public build()Lmtopsdk/network/domain/Request;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v0, Lmtopsdk/network/domain/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/network/domain/Request;-><init>(Lmtopsdk/network/domain/Request$Builder;Lmtopsdk/network/domain/Request$1;)V

    return-object v0
.end method

.method public connectTimeout(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .prologue
    .line 173
    if-lez p1, :cond_0

    .line 174
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 176
    :cond_0
    return-object p0
.end method

.method public get()Lmtopsdk/network/domain/Request$Builder;
    .locals 2

    .prologue
    .line 197
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmtopsdk/network/domain/Request$Builder;->method(Ljava/lang/String;Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/network/domain/Request$Builder;"
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    .line 164
    :cond_0
    return-object p0
.end method

.method public method(Ljava/lang/String;Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;
    .locals 3

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lmtopsdk/network/util/NetworkUtils;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lmtopsdk/network/util/NetworkUtils;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lmtopsdk/network/domain/Request$Builder;->body:Lmtopsdk/network/domain/RequestBody;

    .line 217
    return-object p0
.end method

.method public post(Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    .prologue
    .line 201
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lmtopsdk/network/domain/Request$Builder;->method(Ljava/lang/String;Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .prologue
    .line 180
    if-lez p1, :cond_0

    .line 181
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    .line 183
    :cond_0
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object p0
.end method

.method public retryTimes(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->retryTimes:I

    .line 188
    return-object p0
.end method

.method public seqNo(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->seqNo:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 2

    .prologue
    .line 134
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    .line 136
    return-object p0
.end method
