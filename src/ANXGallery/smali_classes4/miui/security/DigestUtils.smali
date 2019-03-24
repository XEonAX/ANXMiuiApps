.class public Lmiui/security/DigestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_SHA_1:Ljava/lang/String; = "SHA-1"

.field private static final Fk:I = 0x1000


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 73
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NoSuchAlgorithmException"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .locals 0

    .line 40
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static get([BLjava/lang/String;)[B
    .locals 1

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    :try_start_0
    invoke-static {v0, p1}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 53
    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IO exception happend in ByteArrayInputStream"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
