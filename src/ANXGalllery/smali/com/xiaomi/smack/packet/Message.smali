.class public Lcom/xiaomi/smack/packet/Message;
.super Lcom/xiaomi/smack/packet/Packet;
.source "Message.java"


# instance fields
.field private fseq:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mBodyEncoding:Ljava/lang/String;

.field private mEncrypted:Z

.field private mSubject:Ljava/lang/String;

.field private mTransient:Z

.field private mseq:Ljava/lang/String;

.field private seq:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thread:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/xiaomi/smack/packet/Packet;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/Message;->mTransient:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/Message;->mEncrypted:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/packet/Packet;-><init>(Landroid/os/Bundle;)V

    .line 103
    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/Message;->mTransient:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/Message;->mEncrypted:Z

    .line 152
    const-string v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    .line 153
    const-string v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    .line 154
    const-string v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    .line 155
    const-string v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    .line 156
    const-string v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    .line 157
    const-string v0, "ext_body_encode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mBodyEncoding:Ljava/lang/String;

    .line 158
    const-string v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mAppId:Ljava/lang/String;

    .line 159
    const-string v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/smack/packet/Message;->mTransient:Z

    .line 160
    const-string v0, "ext_msg_encrypt"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/smack/packet/Message;->mEncrypted:Z

    .line 161
    const-string v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    .line 162
    const-string v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    .line 163
    const-string v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    .line 164
    const-string v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 476
    :cond_0
    :goto_0
    return v2

    .line 456
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 459
    check-cast v0, Lcom/xiaomi/smack/packet/Message;

    .line 461
    .local v0, "message":Lcom/xiaomi/smack/packet/Message;
    invoke-super {p0, v0}, Lcom/xiaomi/smack/packet/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    :cond_4
    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    :cond_5
    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_a

    :goto_1
    move v2, v1

    goto :goto_0

    .line 464
    :cond_6
    iget-object v3, v0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 467
    :cond_7
    iget-object v3, v0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 470
    :cond_8
    iget-object v3, v0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 473
    :cond_9
    iget-object v3, v0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_a
    move v1, v2

    .line 476
    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 483
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 484
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 485
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 486
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 487
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 482
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 483
    goto :goto_1

    :cond_3
    move v2, v1

    .line 484
    goto :goto_2

    :cond_4
    move v2, v1

    .line 485
    goto :goto_3
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->mAppId:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/xiaomi/smack/packet/Message;->mBodyEncoding:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "encrypted"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/xiaomi/smack/packet/Message;->mEncrypted:Z

    .line 233
    return-void
.end method

.method public setFSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "fseq"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setIsTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/xiaomi/smack/packet/Message;->mTransient:Z

    .line 179
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "mseq"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    invoke-super {p0}, Lcom/xiaomi/smack/packet/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 335
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "ext_msg_type"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "ext_msg_lang"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 342
    const-string v1, "ext_msg_sub"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 345
    const-string v1, "ext_msg_body"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    const-string v1, "ext_body_encode"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 351
    const-string v1, "ext_msg_thread"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 354
    const-string v1, "ext_msg_appid"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_6
    iget-boolean v1, p0, Lcom/xiaomi/smack/packet/Message;->mTransient:Z

    if-eqz v1, :cond_7

    .line 357
    const-string v1, "ext_msg_trans"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 360
    const-string v1, "ext_msg_seq"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->seq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 363
    const-string v1, "ext_msg_mseq"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 366
    const-string v1, "ext_msg_fseq"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->fseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_a
    iget-boolean v1, p0, Lcom/xiaomi/smack/packet/Message;->mEncrypted:Z

    if-eqz v1, :cond_b

    .line 370
    const-string v1, "ext_msg_encrypt"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 374
    const-string v1, "ext_msg_status"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_c
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "<message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 386
    const-string v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 389
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 392
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 395
    const-string v2, " seq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getMSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 398
    const-string v2, " mseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getMSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getFSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 401
    const-string v2, " fseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getFSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 404
    const-string v2, " status=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 407
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 410
    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_9
    iget-boolean v2, p0, Lcom/xiaomi/smack/packet/Message;->mTransient:Z

    if-eqz v2, :cond_a

    .line 413
    const-string v2, " transient=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 416
    const-string v2, " appid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_b
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 419
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_c
    iget-boolean v2, p0, Lcom/xiaomi/smack/packet/Message;->mEncrypted:Z

    if-eqz v2, :cond_d

    .line 422
    const-string v2, " s=\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_d
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 427
    const-string v2, "<subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v2, "</subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_e
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 431
    const-string v2, "<body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 433
    const-string v2, " encode=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_f
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->mBody:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_10
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 438
    const-string v2, "<thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thread>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_11
    const-string v2, "error"

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 442
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getError()Lcom/xiaomi/smack/packet/XMPPError;

    move-result-object v1

    .line 443
    .local v1, "error":Lcom/xiaomi/smack/packet/XMPPError;
    if-eqz v1, :cond_12

    .line 444
    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .end local v1    # "error":Lcom/xiaomi/smack/packet/XMPPError;
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v2, "</message>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
