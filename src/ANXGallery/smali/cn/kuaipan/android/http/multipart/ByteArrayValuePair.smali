.class public Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;
.super Ljava/lang/Object;
.source "ByteArrayValuePair.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/NameValuePair;


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;

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
    .line 76
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

    .line 53
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 55
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    instance-of v3, p1, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;

    .line 59
    .local v0, "that":Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;
    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->name:Ljava/lang/String;

    iget-object v4, v0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->filename:Ljava/lang/String;

    iget-object v4, v0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->filename:Ljava/lang/String;

    .line 60
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->data:[B

    iget-object v4, v0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->data:[B

    .line 61
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->data:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    const/16 v0, 0x11

    .line 69
    .local v0, "hash":I
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 72
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->filename:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->data:[B

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "=File[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
