.class public Lmiui/upnp/typedef/device/Argument;
.super Ljava/lang/Object;
.source "Argument.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/typedef/device/Argument$Direction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Argument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields:Lmiui/upnp/typedef/field/FieldList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lmiui/upnp/typedef/device/Argument$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Argument$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Argument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 116
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 126
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    .line 128
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Argument;->readFromParcel(Landroid/os/Parcel;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;
    .param p3, "relatedStateVariable"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 68
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    .line 69
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Argument;->setName(Ljava/lang/String;)Z

    .line 70
    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/device/Argument;->setDirection(Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0, p3}, Lmiui/upnp/typedef/device/Argument;->setRelatedProperty(Ljava/lang/String;)Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "direction"    # Lmiui/upnp/typedef/device/Argument$Direction;
    .param p3, "relatedStateVariable"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 61
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    .line 62
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Argument;->setName(Ljava/lang/String;)Z

    .line 63
    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/device/Argument;->setDirection(Lmiui/upnp/typedef/device/Argument$Direction;)Z

    .line 64
    invoke-virtual {p0, p3}, Lmiui/upnp/typedef/device/Argument;->setRelatedProperty(Ljava/lang/String;)Z

    .line 65
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 120
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 123
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()Lmiui/upnp/typedef/device/Argument$Direction;
    .locals 2

    .line 83
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmiui/upnp/typedef/device/Argument$Direction;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/Argument$Direction;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedProperty()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 132
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 133
    return-void
.end method

.method public setDirection(Ljava/lang/String;)Z
    .locals 2
    .param p1, "direction"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDirection(Lmiui/upnp/typedef/device/Argument$Direction;)Z
    .locals 1
    .param p1, "direction"    # Lmiui/upnp/typedef/device/Argument$Direction;

    .line 87
    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Argument$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/typedef/device/Argument;->setDirection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRelatedProperty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "relatedStateVariable"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    return-void
.end method
