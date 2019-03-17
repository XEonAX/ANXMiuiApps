.class public final Lmtopsdk/network/domain/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/network/domain/Response$1;,
        Lmtopsdk/network/domain/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lmtopsdk/network/domain/ResponseBody;

.field private final code:I

.field private final headers:Ljava/util/Map;
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

.field private final message:Ljava/lang/String;

.field private final request:Lmtopsdk/network/domain/Request;

.field private final stat:Lmtopsdk/network/domain/NetworkStats;


# direct methods
.method private constructor <init>(Lmtopsdk/network/domain/Response$Builder;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lmtopsdk/network/domain/Response$Builder;->access$000(Lmtopsdk/network/domain/Response$Builder;)Lmtopsdk/network/domain/Request;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    .line 21
    invoke-static {p1}, Lmtopsdk/network/domain/Response$Builder;->access$100(Lmtopsdk/network/domain/Response$Builder;)I

    move-result v0

    iput v0, p0, Lmtopsdk/network/domain/Response;->code:I

    .line 22
    invoke-static {p1}, Lmtopsdk/network/domain/Response$Builder;->access$200(Lmtopsdk/network/domain/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->message:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lmtopsdk/network/domain/Response$Builder;->access$300(Lmtopsdk/network/domain/Response$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->headers:Ljava/util/Map;

    .line 24
    invoke-static {p1}, Lmtopsdk/network/domain/Response$Builder;->access$400(Lmtopsdk/network/domain/Response$Builder;)Lmtopsdk/network/domain/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->body:Lmtopsdk/network/domain/ResponseBody;

    .line 25
    invoke-static {p1}, Lmtopsdk/network/domain/Response$Builder;->access$500(Lmtopsdk/network/domain/Response$Builder;)Lmtopsdk/network/domain/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->stat:Lmtopsdk/network/domain/NetworkStats;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/network/domain/Response$Builder;Lmtopsdk/network/domain/Response$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lmtopsdk/network/domain/Response;-><init>(Lmtopsdk/network/domain/Response$Builder;)V

    return-void
.end method


# virtual methods
.method public final body()Lmtopsdk/network/domain/ResponseBody;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmtopsdk/network/domain/Response;->body:Lmtopsdk/network/domain/ResponseBody;

    return-object v0
.end method

.method public final code()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lmtopsdk/network/domain/Response;->code:I

    return v0
.end method

.method public final headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lmtopsdk/network/domain/Response;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmtopsdk/network/domain/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final request()Lmtopsdk/network/domain/Request;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    return-object v0
.end method

.method public final stat()Lmtopsdk/network/domain/NetworkStats;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmtopsdk/network/domain/Response;->stat:Lmtopsdk/network/domain/NetworkStats;

    return-object v0
.end method
