.class public Lcom/xiaomi/xmpush/thrift/ClientUploadData;
.super Ljava/lang/Object;
.source "ClientUploadData.java"

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
        "Lcom/xiaomi/xmpush/thrift/ClientUploadData;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final UPLOAD_DATA_ITEMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public uploadDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "ClientUploadData"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->UPLOAD_DATA_ITEMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public addToUploadDataItems(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 1
    .param p1, "elem"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public compareTo(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
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

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    .line 143
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 145
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/ClientUploadData;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->isSetUploadDataItems()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->isSetUploadDataItems()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 146
    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->isSetUploadDataItems()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 151
    if-nez v0, :cond_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->compareTo(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)Z
    .locals 5
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    .prologue
    const/4 v2, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->isSetUploadDataItems()Z

    move-result v1

    .line 121
    .local v1, "this_present_uploadDataItems":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->isSetUploadDataItems()Z

    move-result v0

    .line 122
    .local v0, "that_present_uploadDataItems":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 123
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 125
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 113
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 111
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    if-eqz v1, :cond_0

    .line 112
    check-cast p1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->equals(Lcom/xiaomi/xmpush/thrift/ClientUploadData;)Z

    move-result v0

    goto :goto_0
.end method

.method public getUploadDataItemsSize()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isSetUploadDataItems()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 163
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 164
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 191
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 194
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->validate()V

    .line 195
    return-void

    .line 167
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 187
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 189
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 169
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    .line 171
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 172
    .local v2, "_list5":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    .line 173
    const/4 v1, 0x0

    .local v1, "_i6":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_1

    .line 176
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 177
    .local v0, "_elem7":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 178
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    .end local v0    # "_elem7":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 183
    .end local v1    # "_i6":I
    .end local v2    # "_list5":Lorg/apache/thrift/protocol/TList;
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientUploadData("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 222
    .local v0, "first":Z
    const-string/jumbo v2, "uploadDataItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v2, :cond_0

    .line 224
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :goto_0
    const/4 v0, 0x0

    .line 229
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uploadDataItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->validate()V

    .line 200
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 201
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 202
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->UPLOAD_DATA_ITEMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 204
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 205
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->uploadDataItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 207
    .local v0, "_iter8":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 209
    .end local v0    # "_iter8":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 211
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 213
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 214
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 215
    return-void
.end method
