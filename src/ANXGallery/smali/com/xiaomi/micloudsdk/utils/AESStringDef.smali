.class public Lcom/xiaomi/micloudsdk/utils/AESStringDef;
.super Ljava/lang/Object;
.source "AESStringDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
    }
.end annotation


# instance fields
.field private IV:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    .locals 5
    .param p0, "AESString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v2, ":"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "tokens":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 31
    :cond_0
    new-instance v2, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid encrypt string format,the correct format is version:iv:content but original string is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_1
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;-><init>()V

    .line 37
    .local v0, "instance":Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    .line 38
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    .line 39
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    .line 40
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    .locals 3
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "IV"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;

    const-string v2, "invalid AES data"

    invoke-direct {v1, v2}, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;-><init>()V

    .line 49
    .local v0, "instance":Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    iput-object p0, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    .line 50
    iput-object p1, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    .line 51
    iput-object p2, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    .line 52
    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getIV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    const-string v0, "%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
