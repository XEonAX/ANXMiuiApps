.class public Lmtopsdk/network/domain/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/domain/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lmtopsdk/network/domain/ResponseBody;

.field private code:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private request:Lmtopsdk/network/domain/Request;

.field private stat:Lmtopsdk/network/domain/NetworkStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lmtopsdk/network/domain/Response$Builder;->code:I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/network/domain/Response$Builder;)Lmtopsdk/network/domain/Request;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->request:Lmtopsdk/network/domain/Request;

    return-object v0
.end method

.method static synthetic access$100(Lmtopsdk/network/domain/Response$Builder;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lmtopsdk/network/domain/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$200(Lmtopsdk/network/domain/Response$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmtopsdk/network/domain/Response$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lmtopsdk/network/domain/Response$Builder;)Lmtopsdk/network/domain/ResponseBody;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->body:Lmtopsdk/network/domain/ResponseBody;

    return-object v0
.end method

.method static synthetic access$500(Lmtopsdk/network/domain/Response$Builder;)Lmtopsdk/network/domain/NetworkStats;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->stat:Lmtopsdk/network/domain/NetworkStats;

    return-object v0
.end method


# virtual methods
.method public body(Lmtopsdk/network/domain/ResponseBody;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->body:Lmtopsdk/network/domain/ResponseBody;

    .line 86
    return-object p0
.end method

.method public build()Lmtopsdk/network/domain/Response;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->request:Lmtopsdk/network/domain/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Lmtopsdk/network/domain/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/network/domain/Response;-><init>(Lmtopsdk/network/domain/Response$Builder;Lmtopsdk/network/domain/Response$1;)V

    return-object v0
.end method

.method public code(I)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lmtopsdk/network/domain/Response$Builder;->code:I

    .line 71
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lmtopsdk/network/domain/Response$Builder;"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->headers:Ljava/util/Map;

    .line 81
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->message:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->request:Lmtopsdk/network/domain/Request;

    .line 66
    return-object p0
.end method

.method public stat(Lmtopsdk/network/domain/NetworkStats;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->stat:Lmtopsdk/network/domain/NetworkStats;

    .line 91
    return-object p0
.end method
