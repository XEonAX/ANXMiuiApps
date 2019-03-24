.class Lmiui/net/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/net/http/HttpResponse;


# instance fields
.field private CT:I

.field private CW:Ljava/io/InputStream;

.field private CX:Ljava/lang/String;

.field private Da:Ljava/lang/String;

.field private Db:J

.field private Dc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lmiui/net/http/a;->CT:I

    .line 41
    iput-object p3, p0, Lmiui/net/http/a;->CW:Ljava/io/InputStream;

    .line 42
    iput-wide p4, p0, Lmiui/net/http/a;->Db:J

    .line 43
    iput-object p6, p0, Lmiui/net/http/a;->CX:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lmiui/net/http/a;->Da:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lmiui/net/http/a;->Dc:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;J)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmiui/net/http/a;->CW:Ljava/io/InputStream;

    .line 56
    iput-wide p2, p0, Lmiui/net/http/a;->Db:J

    .line 57
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 66
    iget-object v0, p0, Lmiui/net/http/a;->CW:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lmiui/net/http/a;->Da:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lmiui/net/http/a;->Db:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lmiui/net/http/a;->CX:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lmiui/net/http/a;->Dc:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 61
    iget v0, p0, Lmiui/net/http/a;->CT:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lmiui/net/http/a;->CW:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/net/http/a;->CW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 98
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/http/a;->CW:Ljava/io/InputStream;

    .line 99
    return-void
.end method
