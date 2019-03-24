.class public abstract Lmiui/util/async/tasks/HttpTextTask;
.super Lmiui/util/async/tasks/HttpTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/tasks/HttpTask<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 25
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 2

    .line 35
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/http/HttpSession;",
            "Lmiui/util/async/tasks/HttpTask$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method static d([B)Ljava/lang/String;
    .locals 4

    .line 78
    nop

    .line 80
    new-instance v0, Ljava/lang/String;

    .line 81
    const/16 v1, 0x1f4

    array-length v2, p0

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    const-string v2, "UTF-8"

    .line 82
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 83
    const-string v0, "CONTENT-TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 84
    if-ltz v0, :cond_3

    .line 85
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 86
    if-gez v1, :cond_1

    .line 87
    nop

    .line 89
    move v1, v3

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    if-gez v0, :cond_2

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 93
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 96
    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_7

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 98
    const-string v0, "CHARSET="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-ltz v0, :cond_7

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    add-int/lit8 v0, v0, 0x8

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 103
    const/16 v3, 0x27

    if-eq v2, v3, :cond_4

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 104
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_7
    const-string p0, "UTF-8"

    return-object p0
.end method


# virtual methods
.method protected final requestText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpTextTask;->request()Lmiui/net/http/HttpResponse;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 60
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/util/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 63
    invoke-static {v1}, Lmiui/util/async/tasks/HttpTextTask;->d([B)Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    move-object v1, v3

    :goto_0
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->release()V

    .line 67
    return-object v1
.end method
