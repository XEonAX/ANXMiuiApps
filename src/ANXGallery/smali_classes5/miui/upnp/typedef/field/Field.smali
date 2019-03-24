.class public Lmiui/upnp/typedef/field/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/field/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private definition:Lmiui/upnp/typedef/field/FieldDefinition;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lmiui/upnp/typedef/field/Field$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/Field$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/field/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/field/Field;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V
    .locals 0
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1, p2}, Lmiui/upnp/typedef/field/Field;->init(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method private init(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V
    .locals 1
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;
    .param p2, "value"    # Ljava/lang/Object;

    .line 16
    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object p2

    .line 20
    :cond_0
    iput-object p1, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 21
    iput-object p2, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;
    .locals 1

    .line 25
    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    const-class v0, Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldDefinition;

    iput-object v0, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 61
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public setDefinition(Lmiui/upnp/typedef/field/FieldDefinition;)V
    .locals 1
    .param p1, "definition"    # Lmiui/upnp/typedef/field/FieldDefinition;

    .line 29
    iput-object p1, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 30
    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
