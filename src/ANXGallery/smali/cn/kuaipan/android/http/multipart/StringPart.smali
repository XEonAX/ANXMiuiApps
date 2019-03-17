.class public Lcn/kuaipan/android/http/multipart/StringPart;
.super Lcn/kuaipan/android/http/multipart/PartBase;
.source "StringPart.java"


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "text/plain"

    if-nez p3, :cond_0

    const-string p3, "US-ASCII"

    .end local p3    # "charset":Ljava/lang/String;
    :cond_0
    const-string v1, "8bit"

    invoke-direct {p0, p1, v0, p3, v1}, Lcn/kuaipan/android/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-nez p2, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    iput-object p2, p0, Lcn/kuaipan/android/http/multipart/StringPart;->value:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private getContent()[B
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/StringPart;->content:[B

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/StringPart;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/multipart/StringPart;->content:[B

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/StringPart;->content:[B

    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcn/kuaipan/android/http/multipart/StringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcn/kuaipan/android/http/multipart/StringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 125
    return-void
.end method
