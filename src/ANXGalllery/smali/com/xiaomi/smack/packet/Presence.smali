.class public Lcom/xiaomi/smack/packet/Presence;
.super Lcom/xiaomi/smack/packet/Packet;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/packet/Presence$Mode;,
        Lcom/xiaomi/smack/packet/Presence$Type;
    }
.end annotation


# instance fields
.field private mode:Lcom/xiaomi/smack/packet/Presence$Mode;

.field private priority:I

.field private status:Ljava/lang/String;

.field private type:Lcom/xiaomi/smack/packet/Presence$Type;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/packet/Packet;-><init>(Landroid/os/Bundle;)V

    .line 69
    sget-object v0, Lcom/xiaomi/smack/packet/Presence$Type;->available:Lcom/xiaomi/smack/packet/Presence$Type;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 70
    iput-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    .line 71
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    .line 72
    iput-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 101
    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 104
    :cond_0
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    .line 107
    :cond_1
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    .line 110
    :cond_2
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/Presence$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 113
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/packet/Presence$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/xiaomi/smack/packet/Presence$Type;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/xiaomi/smack/packet/Packet;-><init>()V

    .line 69
    sget-object v0, Lcom/xiaomi/smack/packet/Presence$Type;->available:Lcom/xiaomi/smack/packet/Presence$Type;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 70
    iput-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    .line 71
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    .line 72
    iput-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaomi/smack/packet/Presence;->setType(Lcom/xiaomi/smack/packet/Presence$Type;)V

    .line 82
    return-void
.end method


# virtual methods
.method public setMode(Lcom/xiaomi/smack/packet/Presence$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/xiaomi/smack/packet/Presence$Mode;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    .line 246
    return-void
.end method

.method public setPriority(I)V
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 220
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iput p1, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    .line 225
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setType(Lcom/xiaomi/smack/packet/Presence$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/xiaomi/smack/packet/Presence$Type;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    .line 181
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/xiaomi/smack/packet/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "ext_pres_type"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/Presence$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "ext_pres_status"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget v1, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 125
    const-string v1, "ext_pres_prio"

    iget v2, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    sget-object v2, Lcom/xiaomi/smack/packet/Presence$Mode;->available:Lcom/xiaomi/smack/packet/Presence$Mode;

    if-eq v1, v2, :cond_3

    .line 128
    const-string v1, "ext_pres_mode"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/Presence$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "<presence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 255
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 258
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 261
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 264
    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    if-eqz v2, :cond_5

    .line 267
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Presence;->type:Lcom/xiaomi/smack/packet/Presence$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_5
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 272
    const-string v2, "<status>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</status>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_6
    iget v2, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_7

    .line 275
    const-string v2, "<priority>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/smack/packet/Presence;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</priority>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_7
    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    sget-object v3, Lcom/xiaomi/smack/packet/Presence$Mode;->available:Lcom/xiaomi/smack/packet/Presence$Mode;

    if-eq v2, v3, :cond_8

    .line 278
    const-string v2, "<show>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/Presence;->mode:Lcom/xiaomi/smack/packet/Presence$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</show>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Presence;->getError()Lcom/xiaomi/smack/packet/XMPPError;

    move-result-object v1

    .line 285
    .local v1, "error":Lcom/xiaomi/smack/packet/XMPPError;
    if-eqz v1, :cond_9

    .line 286
    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_9
    const-string v2, "</presence>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
