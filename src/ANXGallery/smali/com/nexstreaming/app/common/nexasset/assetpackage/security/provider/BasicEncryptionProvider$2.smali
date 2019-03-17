.class Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;
.super Ljava/lang/Object;
.source "BasicEncryptionProvider.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/assetpackage/security/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/security/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lorg/keyczar/Crypter;

.field final synthetic d:Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;Ljava/util/Set;Lorg/keyczar/Crypter;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->d:Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;

    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->c:Lorg/keyczar/Crypter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 168
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->a:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, v0}, Lcom/nexstreaming/app/common/util/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 169
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 171
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->c:Lorg/keyczar/Crypter;

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    monitor-exit p0

    .line 178
    :cond_0
    return-object p1

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
