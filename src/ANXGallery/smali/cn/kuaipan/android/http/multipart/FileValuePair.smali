.class public Lcn/kuaipan/android/http/multipart/FileValuePair;
.super Ljava/lang/Object;
.source "FileValuePair.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/NameValuePair;


# instance fields
.field private final file:Ljava/io/File;

.field private final name:Ljava/lang/String;


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    instance-of v3, p1, Lcn/kuaipan/android/http/multipart/FileValuePair;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcn/kuaipan/android/http/multipart/FileValuePair;

    .line 63
    .local v0, "that":Lcn/kuaipan/android/http/multipart/FileValuePair;
    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->name:Ljava/lang/String;

    iget-object v4, v0, Lcn/kuaipan/android/http/multipart/FileValuePair;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    iget-object v4, v0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    const/16 v0, 0x11

    .line 71
    .local v0, "hash":I
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 43
    .local v1, "len":I
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    .line 45
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 47
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 49
    const-string v2, "=File[path="

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/FileValuePair;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 51
    const-string v2, "]"

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
