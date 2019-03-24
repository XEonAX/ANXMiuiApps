.class public Lmiui/upnp/typedef/property/PropertyDefinition;
.super Ljava/lang/Object;
.source "PropertyDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

.field private allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

.field private allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

.field private dataType:Lmiui/upnp/typedef/datatype/DataType;

.field private defaultValue:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sendEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/PropertyDefinition;->TAG:Ljava/lang/String;

    .line 157
    new-instance v0, Lmiui/upnp/typedef/property/PropertyDefinition$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyDefinition$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 174
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->readFromParcel(Landroid/os/Parcel;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "t"    # Lmiui/upnp/typedef/datatype/DataType;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 23
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->setDataType(Lmiui/upnp/typedef/datatype/DataType;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;Z)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "t"    # Lmiui/upnp/typedef/datatype/DataType;
    .param p3, "event"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 28
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->setName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->setDataType(Lmiui/upnp/typedef/datatype/DataType;)V

    .line 30
    invoke-virtual {p0, p3}, Lmiui/upnp/typedef/property/PropertyDefinition;->setSendEvents(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 136
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 137
    return v1

    .line 140
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 141
    return v1

    .line 144
    :cond_2
    move-object v2, p1

    check-cast v2, Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 145
    .local v2, "other":Lmiui/upnp/typedef/property/PropertyDefinition;
    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 146
    iget-object v3, v2, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 147
    return v1

    .line 150
    :cond_3
    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    iget-object v4, v2, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    return v1

    .line 154
    :cond_4
    return v0
.end method

.method public getAllowedValueList()Lmiui/upnp/typedef/property/AllowedValueList;
    .locals 1

    .line 78
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    return-object v0
.end method

.method public getAllowedValueRange()Lmiui/upnp/typedef/property/AllowedValueRange;
    .locals 1

    .line 87
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    return-object v0
.end method

.method public getAllowedValueType()Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1

    .line 70
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public getDataType()Lmiui/upnp/typedef/datatype/DataType;
    .locals 1

    .line 54
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 124
    const/16 v0, 0x1f

    .line 125
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 126
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 127
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isSendEvents()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 179
    .local v0, "a":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 180
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/upnp/typedef/datatype/DataType;->valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v1

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lmiui/upnp/typedef/property/AllowedValueType;->retrieveType(I)Lmiui/upnp/typedef/property/AllowedValueType;

    move-result-object v1

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 187
    sget-object v1, Lmiui/upnp/typedef/property/PropertyDefinition$2;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    const-class v1, Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/AllowedValueRange;

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    .line 197
    goto :goto_0

    .line 192
    :pswitch_1
    const-class v1, Lmiui/upnp/typedef/property/AllowedValueList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/AllowedValueList;

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    .line 193
    goto :goto_0

    .line 189
    :pswitch_2
    nop

    .line 202
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllowedValueList(Lmiui/upnp/typedef/property/AllowedValueList;)V
    .locals 1
    .param p1, "allowedValueList"    # Lmiui/upnp/typedef/property/AllowedValueList;

    .line 82
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 83
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    .line 84
    return-void
.end method

.method public setAllowedValueRange(Lmiui/upnp/typedef/property/AllowedValueRange;)V
    .locals 1
    .param p1, "allowedValueRange"    # Lmiui/upnp/typedef/property/AllowedValueRange;

    .line 91
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 92
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    .line 93
    return-void
.end method

.method public setAllowedValueType(Lmiui/upnp/typedef/property/AllowedValueType;)V
    .locals 0
    .param p1, "allowedValueType"    # Lmiui/upnp/typedef/property/AllowedValueType;

    .line 74
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    .line 75
    return-void
.end method

.method public setDataType(Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 0
    .param p1, "dataType"    # Lmiui/upnp/typedef/datatype/DataType;

    .line 58
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 59
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSendEvents(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendEvents"    # Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lmiui/upnp/typedef/datatype/DataType;->BooleanValueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    .line 39
    return-void
.end method

.method public setSendEvents(Z)V
    .locals 0
    .param p1, "sendEvents"    # Z

    .line 42
    iput-boolean p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    .line 43
    return-void
.end method

.method public validate(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 97
    return v0

    .line 100
    :cond_0
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 101
    sget-object v1, Lmiui/upnp/typedef/property/PropertyDefinition;->TAG:Ljava/lang/String;

    const-string v3, "dataType is %s, value type is %s, invalid!"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 102
    invoke-virtual {v5}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 101
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0

    .line 107
    :cond_1
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    invoke-virtual {v0, p1}, Lmiui/upnp/typedef/property/AllowedValueList;->isValid(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 111
    :cond_2
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-virtual {v0, p1}, Lmiui/upnp/typedef/property/AllowedValueRange;->isValid(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 115
    :cond_3
    return v2
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0, p1}, Lmiui/upnp/typedef/datatype/DataType;->toObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 212
    .local v0, "a":[Z
    iget-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 215
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/datatype/DataType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/AllowedValueType;->toInt()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    sget-object v1, Lmiui/upnp/typedef/property/PropertyDefinition$2;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 226
    goto :goto_0

    .line 222
    :pswitch_2
    nop

    .line 235
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
