.class public Lmiui/upnp/typedef/property/AllowedValueList;
.super Ljava/lang/Object;
.source "AllowedValueList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/AllowedValueList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allowedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dataType:Lmiui/upnp/typedef/datatype/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lmiui/upnp/typedef/property/AllowedValueList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueList;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueList$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/AllowedValueList$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/AllowedValueList;->readFromParcel(Landroid/os/Parcel;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 1
    .param p1, "t"    # Lmiui/upnp/typedef/datatype/DataType;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lmiui/upnp/typedef/property/AllowedValueList;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 21
    return-void
.end method


# virtual methods
.method public appendAllowedValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    .line 31
    .local v0, "append":Z
    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueList;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueList;->TAG:Ljava/lang/String;

    const-string v2, "append dataType invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowedValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "valid":Z
    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueList;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueList;->TAG:Ljava/lang/String;

    const-string v2, "dataType invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_1

    .line 52
    :cond_0
    iget-object v1, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 55
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueList;->TAG:Ljava/lang/String;

    const-string v2, "value is \"NONE\", As a legal value to process!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_1

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, "invalid, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "value must be one of these: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, "v":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 72
    :cond_2
    sget-object v2, Lmiui/upnp/typedef/property/AllowedValueList;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/datatype/DataType;->valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    .line 101
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lmiui/upnp/typedef/property/AllowedValueList;->allowedValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 113
    return-void
.end method
