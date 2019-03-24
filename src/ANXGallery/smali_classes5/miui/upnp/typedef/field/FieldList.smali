.class public Lmiui/upnp/typedef/field/FieldList;
.super Ljava/lang/Object;
.source "FieldList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/field/FieldList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/field/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lmiui/upnp/typedef/field/FieldList$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/field/FieldList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    .line 97
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method private getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/Field;

    return-object v0
.end method

.method private getField(Lmiui/upnp/typedef/field/FieldDefinition;)Lmiui/upnp/typedef/field/Field;
    .locals 2
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;

    .line 19
    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/Field;

    return-object v0
.end method

.method private getFieldDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/field/FieldDefinition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    .line 24
    .local v0, "field":Lmiui/upnp/typedef/field/Field;
    if-nez v0, :cond_0

    .line 25
    const/4 v1, 0x0

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {v0}, Lmiui/upnp/typedef/field/Field;->getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    .line 42
    .local v0, "field":Lmiui/upnp/typedef/field/Field;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    return-object v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lmiui/upnp/typedef/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;
    .locals 2
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;

    .line 32
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Lmiui/upnp/typedef/field/FieldDefinition;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    .line 33
    .local v0, "field":Lmiui/upnp/typedef/field/Field;
    if-nez v0, :cond_0

    .line 34
    const/4 v1, 0x0

    return-object v1

    .line 37
    :cond_0
    invoke-virtual {v0}, Lmiui/upnp/typedef/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public initField(Lmiui/upnp/typedef/field/Field;)V
    .locals 2
    .param p1, "field"    # Lmiui/upnp/typedef/field/Field;

    .line 55
    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/Field;->getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V
    .locals 3
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 50
    new-instance v0, Lmiui/upnp/typedef/field/Field;

    invoke-direct {v0, p1, p2}, Lmiui/upnp/typedef/field/Field;-><init>(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 51
    .local v0, "field":Lmiui/upnp/typedef/field/Field;
    iget-object v1, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 103
    const-class v2, Lmiui/upnp/typedef/field/Field;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/field/Field;

    .line 104
    .local v2, "f":Lmiui/upnp/typedef/field/Field;
    iget-object v3, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/upnp/typedef/field/Field;->getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v2    # "f":Lmiui/upnp/typedef/field/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 70
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    .line 71
    .local v0, "field":Lmiui/upnp/typedef/field/Field;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    return v1

    .line 75
    :cond_0
    invoke-virtual {v0, p2}, Lmiui/upnp/typedef/field/Field;->setValue(Ljava/lang/Object;)Z

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Lmiui/upnp/typedef/field/FieldDefinition;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    .line 60
    .local v0, "field":Lmiui/upnp/typedef/field/Field;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    return v1

    .line 64
    :cond_0
    invoke-virtual {v0, p2}, Lmiui/upnp/typedef/field/Field;->setValue(Ljava/lang/Object;)Z

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/field/Field;

    .line 117
    .local v1, "f":Lmiui/upnp/typedef/field/Field;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    .end local v1    # "f":Lmiui/upnp/typedef/field/Field;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
