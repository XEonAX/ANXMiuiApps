.class public Lmiui/upnp/typedef/property/PropertyList;
.super Ljava/lang/Object;
.source "PropertyList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private propertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lmiui/upnp/typedef/property/PropertyList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/PropertyList;->TAG:Ljava/lang/String;

    .line 187
    new-instance v0, Lmiui/upnp/typedef/property/PropertyList$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyList$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    .line 204
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->readFromParcel(Landroid/os/Parcel;)V

    .line 205
    return-void
.end method


# virtual methods
.method public cleanState()V
    .locals 3

    .line 30
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 31
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyValue;->cleanState()V

    .line 32
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getChangedPropertyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 43
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/property/Property;>;"
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 44
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 49
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_1
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "property":Lmiui/upnp/typedef/property/Property;
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 61
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    move-object v0, v2

    .line 64
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    return-object v0
.end method

.method public getProperty(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/Property;
    .locals 4
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "property":Lmiui/upnp/typedef/property/Property;
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 73
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    move-object v0, v2

    .line 75
    goto :goto_1

    .line 77
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPropertyDataValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    .line 125
    .local v1, "property":Lmiui/upnp/typedef/property/Property;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0
.end method

.method public getPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Ljava/lang/Object;
    .locals 4
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 112
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 114
    goto :goto_1

    .line 116
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "def":Lmiui/upnp/typedef/property/PropertyDefinition;
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 86
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v0

    .line 88
    goto :goto_1

    .line 90
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPropertyValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 4
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "value":Lmiui/upnp/typedef/property/PropertyValue;
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 99
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    .line 101
    goto :goto_1

    .line 103
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 105
    :cond_1
    :goto_1
    return-object v0
.end method

.method public initProperty(Lmiui/upnp/typedef/property/Property;)V
    .locals 1
    .param p1, "property"    # Lmiui/upnp/typedef/property/Property;

    .line 138
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public initProperty(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V
    .locals 2
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 133
    new-instance v0, Lmiui/upnp/typedef/property/Property;

    invoke-direct {v0, p1, p2}, Lmiui/upnp/typedef/property/Property;-><init>(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V

    .line 134
    .local v0, "property":Lmiui/upnp/typedef/property/Property;
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public isChanged()Z
    .locals 4

    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, "changed":Z
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 20
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_1

    .line 24
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    .line 211
    .local v2, "p":Lmiui/upnp/typedef/property/Property;
    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v2    # "p":Lmiui/upnp/typedef/property/Property;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setPropertyDataValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, "ret":Z
    if-nez p2, :cond_0

    .line 173
    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v1

    .line 177
    .local v1, "definition":Lmiui/upnp/typedef/property/PropertyDefinition;
    if-nez v1, :cond_1

    .line 178
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0, v1, p2}, Lmiui/upnp/typedef/property/PropertyList;->setPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)Z

    move-result v0

    .line 184
    .end local v1    # "definition":Lmiui/upnp/typedef/property/PropertyDefinition;
    :goto_0
    return v0
.end method

.method public setPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "definition"    # Lmiui/upnp/typedef/property/PropertyDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    .line 145
    .local v0, "ret":Z
    if-nez p2, :cond_0

    .line 146
    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    sget-object v1, Lmiui/upnp/typedef/property/PropertyList;->TAG:Ljava/lang/String;

    const-string v2, "invalid value: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    .line 152
    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getPropertyValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v1

    .line 156
    .local v1, "v":Lmiui/upnp/typedef/property/PropertyValue;
    if-nez v1, :cond_2

    .line 157
    const/4 v0, 0x0

    .line 158
    goto :goto_0

    .line 161
    :cond_2
    const/4 v0, 0x1

    .line 162
    invoke-virtual {v1, p2}, Lmiui/upnp/typedef/property/PropertyValue;->update(Ljava/lang/Object;)V

    .line 165
    .end local v1    # "v":Lmiui/upnp/typedef/property/PropertyValue;
    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 222
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 224
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 225
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method
