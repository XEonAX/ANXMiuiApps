.class public final Lcom/android/volley/toolbox/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final mContent:Ljava/io/InputStream;

.field private final mContentLength:I

.field private final mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p3, "contentLength"    # I
    .param p4, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/volley/toolbox/HttpResponse;->mStatusCode:I

    .line 54
    iput-object p2, p0, Lcom/android/volley/toolbox/HttpResponse;->mHeaders:Ljava/util/List;

    .line 55
    iput p3, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentLength:I

    .line 56
    iput-object p4, p0, Lcom/android/volley/toolbox/HttpResponse;->mContent:Ljava/io/InputStream;

    .line 57
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentLength:I

    return v0
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mStatusCode:I

    return v0
.end method
