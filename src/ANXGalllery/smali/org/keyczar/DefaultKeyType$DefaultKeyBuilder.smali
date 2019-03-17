.class Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;
.super Ljava/lang/Object;
.source "DefaultKeyType.java"

# interfaces
.implements Lorg/keyczar/interfaces/KeyType$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/DefaultKeyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultKeyBuilder"
.end annotation


# instance fields
.field private final padding:Lorg/keyczar/enums/RsaPadding;

.field final synthetic this$0:Lorg/keyczar/DefaultKeyType;


# direct methods
.method private constructor <init>(Lorg/keyczar/DefaultKeyType;)V
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->padding:Lorg/keyczar/enums/RsaPadding;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/DefaultKeyType$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;-><init>(Lorg/keyczar/DefaultKeyType;)V

    return-void
.end method

.method private constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/enums/RsaPadding;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->padding:Lorg/keyczar/enums/RsaPadding;

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/enums/RsaPadding;Lorg/keyczar/DefaultKeyType$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/enums/RsaPadding;)V

    return-void
.end method


# virtual methods
.method public generate(I)Lorg/keyczar/KeyczarKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v1}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 243
    new-instance v0, Lorg/keyczar/exceptions/UnsupportedTypeException;

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v0

    .line 229
    :pswitch_0
    invoke-static {p1}, Lorg/keyczar/AesKey;->generate(I)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 231
    :pswitch_1
    invoke-static {p1}, Lorg/keyczar/HmacKey;->generate(I)Lorg/keyczar/HmacKey;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-static {p1}, Lorg/keyczar/DsaPrivateKey;->generate(I)Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->padding:Lorg/keyczar/enums/RsaPadding;

    invoke-static {p1, v0}, Lorg/keyczar/RsaPrivateKey;->generate(ILorg/keyczar/enums/RsaPadding;)Lorg/keyczar/RsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_4
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarKey.PublicKeyExport"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v1}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    new-instance v0, Lorg/keyczar/exceptions/UnsupportedTypeException;

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v0

    .line 205
    :pswitch_0
    invoke-static {p1}, Lorg/keyczar/AesKey;->read(Ljava/lang/String;)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 207
    :pswitch_1
    invoke-static {p1}, Lorg/keyczar/HmacKey;->read(Ljava/lang/String;)Lorg/keyczar/HmacKey;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-static {p1}, Lorg/keyczar/DsaPrivateKey;->read(Ljava/lang/String;)Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-static {p1}, Lorg/keyczar/DsaPublicKey;->read(Ljava/lang/String;)Lorg/keyczar/DsaPublicKey;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_4
    invoke-static {p1}, Lorg/keyczar/RsaPrivateKey;->read(Ljava/lang/String;)Lorg/keyczar/RsaPrivateKey;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_5
    invoke-static {p1}, Lorg/keyczar/RsaPublicKey;->read(Ljava/lang/String;)Lorg/keyczar/RsaPublicKey;

    move-result-object v0

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
