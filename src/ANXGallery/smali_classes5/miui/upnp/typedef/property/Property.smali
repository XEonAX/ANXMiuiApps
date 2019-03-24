.class public Lmiui/upnp/typedef/property/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private definition:Lmiui/upnp/typedef/property/PropertyDefinition;

.field private volatile value:Lmiui/upnp/typedef/property/PropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Lmiui/upnp/typedef/property/Property$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/Property$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/Property;->readFromParcel(Landroid/os/Parcel;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V
    .locals 1
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    .line 19
    .local v0, "v":Lmiui/upnp/typedef/property/PropertyValue;
    invoke-direct {p0, p1, v0}, Lmiui/upnp/typedef/property/Property;->init(Lmiui/upnp/typedef/property/PropertyDefinition;Lmiui/upnp/typedef/property/PropertyValue;)V

    .line 20
    return-void
.end method

.method private init(Lmiui/upnp/typedef/property/PropertyDefinition;Lmiui/upnp/typedef/property/PropertyValue;)V
    .locals 1
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;
    .param p2, "value"    # Lmiui/upnp/typedef/property/PropertyValue;

    .line 23
    if-nez p2, :cond_0

    .line 24
    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object p2

    .line 27
    :cond_0
    iput-object p1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 28
    iput-object p2, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    .line 29
    return-void
.end method

.method private isMultipleValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "multiple":Z
    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getAllowedValueType()Lmiui/upnp/typedef/property/AllowedValueType;

    move-result-object v1

    sget-object v2, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    if-ne v1, v2, :cond_0

    .line 64
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "a":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 73
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "a":[Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public cleanState()V
    .locals 1

    .line 167
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->cleanState()V

    .line 168
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentStringValue()Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;
    .locals 1

    .line 32
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    return-object v0
.end method

.method public getOldStringValue()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyValue;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;
    .locals 1

    .line 41
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    const-class v0, Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/PropertyDefinition;

    iput-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 189
    const-class v0, Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/PropertyValue;

    iput-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    .line 190
    return-void
.end method

.method public setDataValue(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    .line 80
    .local v0, "ret":Z
    if-nez p1, :cond_0

    .line 81
    sget-object v1, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v2, "newValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    .line 83
    goto/16 :goto_2

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 90
    .local v1, "multiple":Z
    iget-object v2, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyDefinition;->getAllowedValueType()Lmiui/upnp/typedef/property/AllowedValueType;

    move-result-object v2

    sget-object v3, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    .line 91
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 92
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "string":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "a":[Ljava/lang/String;
    array-length v6, v3

    if-le v6, v5, :cond_2

    .line 95
    const/4 v1, 0x1

    .line 96
    sget-object v6, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multiple value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    array-length v6, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v3, v7

    .line 99
    .local v8, "v":Ljava/lang/String;
    iget-object v9, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v9, v8}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 100
    sget-object v9, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v10, "invalid value: %s, skip it!"

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_1

    .line 104
    :cond_1
    iget-object v9, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v9, v8}, Lmiui/upnp/typedef/property/PropertyValue;->addMultipleValue(Ljava/lang/Object;)V

    .line 98
    .end local v8    # "v":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "a":[Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 111
    goto :goto_2

    .line 117
    :cond_3
    iget-object v2, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v2, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    sget-object v2, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v3, "invalid value: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 120
    goto :goto_2

    .line 123
    :cond_4
    iget-object v2, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v2, p1}, Lmiui/upnp/typedef/property/PropertyValue;->update(Ljava/lang/Object;)V

    .line 126
    .end local v1    # "multiple":Z
    :goto_2
    return v0
.end method

.method public setDataValueByString(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "nullValueAllowed"    # Z

    .line 132
    const/4 v0, 0x0

    .line 135
    .local v0, "ret":Z
    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/upnp/typedef/datatype/DataType;->toObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 137
    if-eqz p2, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 139
    goto :goto_0

    .line 142
    :cond_0
    sget-object v2, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v3, "value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .line 144
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v1}, Lmiui/upnp/typedef/property/Property;->setDataValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    sget-object v2, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v3, "%s setDataValue failed: %s(%s), dataType is: %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 149
    invoke-virtual {v6}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 152
    invoke-virtual {v6}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/upnp/typedef/datatype/DataType;->getStringType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 148
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x1

    .line 159
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return v0
.end method

.method public setDefinition(Lmiui/upnp/typedef/property/PropertyDefinition;)V
    .locals 1
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 36
    iput-object p1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 37
    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValueUtil;->createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    return-void
.end method
