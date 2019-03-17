.class public Lcom/xiaomi/smack/packet/XMPPError;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/packet/XMPPError$Condition;
    }
.end annotation


# instance fields
.field private applicationExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/packet/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private condition:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/packet/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p6, "extension":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/packet/CommonPacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 244
    iput p1, p0, Lcom/xiaomi/smack/packet/XMPPError;->code:I

    .line 245
    iput-object p2, p0, Lcom/xiaomi/smack/packet/XMPPError;->type:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/xiaomi/smack/packet/XMPPError;->reason:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    .line 248
    iput-object p5, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 249
    iput-object p6, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 253
    const-string v4, "ext_err_code"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->code:I

    .line 254
    const-string v4, "ext_err_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    const-string v4, "ext_err_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->type:Ljava/lang/String;

    .line 257
    :cond_0
    const-string v4, "ext_err_cond"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    .line 258
    const-string v4, "ext_err_reason"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->reason:Ljava/lang/String;

    .line 259
    const-string v4, "ext_err_msg"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 260
    const-string v4, "ext_exts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 261
    .local v2, "extBundles":[Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 263
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v2, v4

    .local v3, "p":Landroid/os/Parcelable;
    move-object v0, v3

    .line 264
    check-cast v0, Landroid/os/Bundle;

    .line 265
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v1

    .line 266
    .local v1, "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    if-eqz v1, :cond_1

    .line 267
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .end local v3    # "p":Landroid/os/Parcelable;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/packet/XMPPError$Condition;)V
    .locals 1
    .param p1, "condition"    # Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 185
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/packet/XMPPError;->init(Lcom/xiaomi/smack/packet/XMPPError$Condition;)V

    .line 186
    iput-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private init(Lcom/xiaomi/smack/packet/XMPPError$Condition;)V
    .locals 1
    .param p1, "condition"    # Lcom/xiaomi/smack/packet/XMPPError$Condition;

    .prologue
    .line 281
    invoke-static {p1}, Lcom/xiaomi/smack/packet/XMPPError$Condition;->access$000(Lcom/xiaomi/smack/packet/XMPPError$Condition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    .line 282
    return-void
.end method


# virtual methods
.method public declared-synchronized getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/packet/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 411
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->type:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 327
    const-string v6, "ext_err_type"

    iget-object v7, p0, Lcom/xiaomi/smack/packet/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    const-string v6, "ext_err_code"

    iget v7, p0, Lcom/xiaomi/smack/packet/XMPPError;->code:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->reason:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 331
    const-string v6, "ext_err_reason"

    iget-object v7, p0, Lcom/xiaomi/smack/packet/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 334
    const-string v6, "ext_err_cond"

    iget-object v7, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_2
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 337
    const-string v6, "ext_err_msg"

    iget-object v7, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_3
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 340
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [Landroid/os/Bundle;

    .line 341
    .local v2, "extBundle":[Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 342
    .local v3, "i":I
    iget-object v6, p0, Lcom/xiaomi/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smack/packet/CommonPacketExtension;

    .line 343
    .local v1, "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 344
    .local v5, "subBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_4

    .line 345
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-object v5, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 348
    .end local v1    # "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .end local v5    # "subBundle":Landroid/os/Bundle;
    :cond_5
    const-string v6, "ext_exts"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 350
    .end local v2    # "extBundle":[Landroid/os/Bundle;
    .end local v3    # "i":I
    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v0, "txt":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 395
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "<error code=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/smack/packet/XMPPError;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 362
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->reason:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 367
    const-string v2, " reason=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 373
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v2, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 377
    const-string v2, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v2, p0, Lcom/xiaomi/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v2, "</text>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/XMPPError;->getExtensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smack/packet/PacketExtension;

    .line 382
    .local v1, "element":Lcom/xiaomi/smack/packet/PacketExtension;
    invoke-interface {v1}, Lcom/xiaomi/smack/packet/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    .end local v1    # "element":Lcom/xiaomi/smack/packet/PacketExtension;
    :cond_4
    const-string v2, "</error>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
