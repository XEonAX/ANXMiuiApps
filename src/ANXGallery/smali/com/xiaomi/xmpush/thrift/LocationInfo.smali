.class public Lcom/xiaomi/xmpush/thrift/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/xmpush/thrift/LocationInfo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CELL_LIST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final GPS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final WIFI_LIST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public cellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Cellular;",
            ">;"
        }
    .end annotation
.end field

.field public gps:Lcom/xiaomi/xmpush/thrift/GPS;

.field public wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Wifi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "LocationInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->WIFI_LIST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->CELL_LIST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->GPS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/LocationInfo;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/LocationInfo;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 237
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 239
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/LocationInfo;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 240
    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 245
    if-nez v0, :cond_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 250
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 255
    if-nez v0, :cond_0

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 260
    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 265
    if-nez v0, :cond_0

    .line 269
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/xiaomi/xmpush/thrift/LocationInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->compareTo(Lcom/xiaomi/xmpush/thrift/LocationInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/LocationInfo;)Z
    .locals 9
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/LocationInfo;

    .prologue
    const/4 v6, 0x0

    .line 193
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v6

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v5

    .line 197
    .local v5, "this_present_wifiList":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v2

    .line 198
    .local v2, "that_present_wifiList":Z
    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    .line 199
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 201
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v3

    .line 206
    .local v3, "this_present_cellList":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v0

    .line 207
    .local v0, "that_present_cellList":Z
    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    .line 208
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 210
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v4

    .line 215
    .local v4, "this_present_gps":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v1

    .line 216
    .local v1, "that_present_gps":Z
    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    .line 217
    :cond_6
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 219
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-virtual {v7, v8}, Lcom/xiaomi/xmpush/thrift/GPS;->equals(Lcom/xiaomi/xmpush/thrift/GPS;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 189
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 187
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/LocationInfo;

    if-eqz v1, :cond_0

    .line 188
    check-cast p1, Lcom/xiaomi/xmpush/thrift/LocationInfo;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->equals(Lcom/xiaomi/xmpush/thrift/LocationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGps()Lcom/xiaomi/xmpush/thrift/GPS;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public isSetCellList()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetGps()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetWifiList()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 10
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xf

    .line 274
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 277
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v6

    .line 278
    .local v6, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v7, :cond_0

    .line 331
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 334
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->validate()V

    .line 335
    return-void

    .line 281
    :cond_0
    iget-short v7, v6, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v7, :pswitch_data_0

    .line 327
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 329
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 283
    :pswitch_0
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v7, v9, :cond_2

    .line 285
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v4

    .line 286
    .local v4, "_list13":Lorg/apache/thrift/protocol/TList;
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v4, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    .line 287
    const/4 v2, 0x0

    .local v2, "_i14":I
    :goto_2
    iget v7, v4, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v2, v7, :cond_1

    .line 290
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Wifi;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Wifi;-><init>()V

    .line 291
    .local v0, "_elem15":Lcom/xiaomi/xmpush/thrift/Wifi;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Wifi;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 292
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 294
    .end local v0    # "_elem15":Lcom/xiaomi/xmpush/thrift/Wifi;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 297
    .end local v2    # "_i14":I
    .end local v4    # "_list13":Lorg/apache/thrift/protocol/TList;
    :cond_2
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 301
    :pswitch_1
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v7, v9, :cond_4

    .line 303
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v5

    .line 304
    .local v5, "_list16":Lorg/apache/thrift/protocol/TList;
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v5, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    .line 305
    const/4 v3, 0x0

    .local v3, "_i17":I
    :goto_3
    iget v7, v5, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v3, v7, :cond_3

    .line 308
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Cellular;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Cellular;-><init>()V

    .line 309
    .local v1, "_elem18":Lcom/xiaomi/xmpush/thrift/Cellular;
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Cellular;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 310
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 312
    .end local v1    # "_elem18":Lcom/xiaomi/xmpush/thrift/Cellular;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 315
    .end local v3    # "_i17":I
    .end local v5    # "_list16":Lorg/apache/thrift/protocol/TList;
    :cond_4
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 319
    :pswitch_2
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v8, 0xc

    if-ne v7, v8, :cond_5

    .line 320
    new-instance v7, Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-direct {v7}, Lcom/xiaomi/xmpush/thrift/GPS;-><init>()V

    iput-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    .line 321
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-virtual {v7, p1}, Lcom/xiaomi/xmpush/thrift/GPS;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 323
    :cond_5
    iget-byte v7, v6, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCellList(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/LocationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Cellular;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/LocationInfo;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "cellList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/Cellular;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    .line 141
    return-object p0
.end method

.method public setGps(Lcom/xiaomi/xmpush/thrift/GPS;)Lcom/xiaomi/xmpush/thrift/LocationInfo;
    .locals 0
    .param p1, "gps"    # Lcom/xiaomi/xmpush/thrift/GPS;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    .line 165
    return-object p0
.end method

.method public setWifiList(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/LocationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/Wifi;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/LocationInfo;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "wifiList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/Wifi;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    .line 102
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 385
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    const-string/jumbo v2, "wifiList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    if-nez v2, :cond_5

    .line 388
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    const/4 v0, 0x0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_1
    const-string v2, "cellList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    if-nez v2, :cond_6

    .line 398
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_1
    const/4 v0, 0x0

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_3
    const-string v2, "gps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    if-nez v2, :cond_7

    .line 408
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :goto_2
    const/4 v0, 0x0

    .line 414
    :cond_4
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 390
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 410
    :cond_7
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 420
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    .line 338
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->validate()V

    .line 340
    sget-object v2, Lcom/xiaomi/xmpush/thrift/LocationInfo;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v2}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 341
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetWifiList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    sget-object v2, Lcom/xiaomi/xmpush/thrift/LocationInfo;->WIFI_LIST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 345
    new-instance v2, Lorg/apache/thrift/protocol/TList;

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 346
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->wifiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/Wifi;

    .line 348
    .local v0, "_iter19":Lcom/xiaomi/xmpush/thrift/Wifi;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Wifi;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 350
    .end local v0    # "_iter19":Lcom/xiaomi/xmpush/thrift/Wifi;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 352
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetCellList()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    sget-object v2, Lcom/xiaomi/xmpush/thrift/LocationInfo;->CELL_LIST_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 359
    new-instance v2, Lorg/apache/thrift/protocol/TList;

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v2}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 360
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->cellList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/Cellular;

    .line 362
    .local v1, "_iter20":Lcom/xiaomi/xmpush/thrift/Cellular;
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Cellular;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 364
    .end local v1    # "_iter20":Lcom/xiaomi/xmpush/thrift/Cellular;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 366
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 369
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    if-eqz v2, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/LocationInfo;->isSetGps()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    sget-object v2, Lcom/xiaomi/xmpush/thrift/LocationInfo;->GPS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v2}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 372
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/LocationInfo;->gps:Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/GPS;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 373
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 376
    :cond_4
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 377
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 378
    return-void
.end method
