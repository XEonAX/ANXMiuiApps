.class public Lorg/keyczar/SessionMaterial;
.super Ljava/lang/Object;
.source "SessionMaterial.java"


# annotations
.annotation build Lorg/keyczar/annotations/Experimental;
.end annotation


# instance fields
.field private key:Lorg/keyczar/AesKey;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private nonce:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/SessionMaterial;->key:Lorg/keyczar/AesKey;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/keyczar/SessionMaterial;->nonce:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/AesKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/SessionMaterial;->key:Lorg/keyczar/AesKey;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/keyczar/SessionMaterial;->nonce:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lorg/keyczar/SessionMaterial;->key:Lorg/keyczar/AesKey;

    .line 47
    iput-object p2, p0, Lorg/keyczar/SessionMaterial;->nonce:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static read(Ljava/lang/String;)Lorg/keyczar/SessionMaterial;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/SessionMaterial;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/SessionMaterial;

    return-object v0
.end method


# virtual methods
.method public getKey()Lorg/keyczar/AesKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/keyczar/SessionMaterial;->key:Lorg/keyczar/AesKey;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Key has not been initialized"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/keyczar/SessionMaterial;->key:Lorg/keyczar/AesKey;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/keyczar/SessionMaterial;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
