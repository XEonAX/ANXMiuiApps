.class public Lmiui/upnp/typedef/property/AllowedValueRange;
.super Ljava/lang/Object;
.source "AllowedValueRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/AllowedValueRange;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dataType:Lmiui/upnp/typedef/datatype/DataType;

.field private maxValue:Ljava/lang/Object;

.field private minValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueRange;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueRange$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/AllowedValueRange$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/AllowedValueRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method public static create(Lmiui/upnp/typedef/datatype/DataType;Ljava/lang/Object;Ljava/lang/Object;)Lmiui/upnp/typedef/property/AllowedValueRange;
    .locals 3
    .param p0, "type"    # Lmiui/upnp/typedef/datatype/DataType;
    .param p1, "min"    # Ljava/lang/Object;
    .param p2, "max"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0, p1, p2}, Lmiui/upnp/typedef/datatype/DataType;->validate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/AllowedValueRange;-><init>()V

    .line 34
    .local v0, "thiz":Lmiui/upnp/typedef/property/AllowedValueRange;
    iput-object p0, v0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 35
    iput-object p1, v0, Lmiui/upnp/typedef/property/AllowedValueRange;->minValue:Ljava/lang/Object;

    .line 36
    iput-object p2, v0, Lmiui/upnp/typedef/property/AllowedValueRange;->maxValue:Ljava/lang/Object;

    .line 38
    return-object v0

    .line 30
    .end local v0    # "thiz":Lmiui/upnp/typedef/property/AllowedValueRange;
    :cond_0
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    const-string v2, "min >= max"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    const-string v2, "max dataType invalid"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    const-string v2, "min dataType invalid"

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->maxValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinValue()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->minValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->minValue:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->maxValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/upnp/typedef/datatype/DataType;->validate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/datatype/DataType;->valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 75
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->minValue:Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->maxValue:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->minValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueRange;->maxValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
