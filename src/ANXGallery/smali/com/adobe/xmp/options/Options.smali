.class public abstract Lcom/adobe/xmp/options/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private optionNames:Ljava/util/Map;

.field private options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 49
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->setOptions(I)V

    .line 51
    return-void
.end method

.method private assertOptionsValid(I)V
    .locals 4
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getValidOptions()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v0, p1, v1

    .line 237
    .local v0, "invalidOptions":I
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertConsistency(I)V

    .line 246
    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The option bit(s) 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method protected assertConsistency(I)V
    .locals 0
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    check-cast p1, Lcom/adobe/xmp/options/Options;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOption(I)Z
    .locals 1
    .param p1, "optionBit"    # I

    .prologue
    .line 99
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return v0
.end method

.method protected abstract getValidOptions()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    return v0
.end method

.method public setOption(IZ)V
    .locals 2
    .param p1, "optionBits"    # I
    .param p2, "value"    # Z

    .prologue
    .line 109
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 110
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOptions(I)V
    .locals 0
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    .line 130
    iput p1, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/xmp/options/Options;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
