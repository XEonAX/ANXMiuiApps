.class public Lcom/xiaomi/smack/packet/IQ;
.super Lcom/xiaomi/smack/packet/Packet;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/packet/IQ$Type;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/xiaomi/smack/packet/IQ$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/xiaomi/smack/packet/Packet;-><init>()V

    .line 52
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->attributes:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/packet/Packet;-><init>(Landroid/os/Bundle;)V

    .line 52
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->attributes:Ljava/util/Map;

    .line 60
    const-string v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lcom/xiaomi/smack/packet/IQ$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/xiaomi/smack/packet/IQ$Type;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    return-object v0
.end method

.method public declared-synchronized setAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setType(Lcom/xiaomi/smack/packet/IQ$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/xiaomi/smack/packet/IQ$Type;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    sget-object v0, Lcom/xiaomi/smack/packet/IQ$Type;->GET:Lcom/xiaomi/smack/packet/IQ$Type;

    iput-object v0, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/xiaomi/smack/packet/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "ext_iq_type"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 7

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v4, "<iq "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 122
    const-string/jumbo v4, "to=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 125
    const-string v4, "from=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 128
    const-string v4, "chid=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/smack/packet/IQ;->attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v4, p0, Lcom/xiaomi/smack/packet/IQ;->type:Lcom/xiaomi/smack/packet/IQ$Type;

    if-nez v4, :cond_7

    .line 137
    const-string/jumbo v4, "type=\"get\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "queryXML":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getExtensionsXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getError()Lcom/xiaomi/smack/packet/XMPPError;

    move-result-object v2

    .line 149
    .local v2, "error":Lcom/xiaomi/smack/packet/XMPPError;
    if-eqz v2, :cond_6

    .line 150
    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_6
    const-string v4, "</iq>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 139
    .end local v2    # "error":Lcom/xiaomi/smack/packet/XMPPError;
    .end local v3    # "queryXML":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "type=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/IQ;->getType()Lcom/xiaomi/smack/packet/IQ$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
