.class public Lmiui/upnp/typedef/device/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/Argument;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lmiui/upnp/typedef/device/Action$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Action$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    .line 61
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Action;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public addArgument(Lmiui/upnp/typedef/device/Argument;)V
    .locals 1
    .param p1, "argument"    # Lmiui/upnp/typedef/device/Argument;

    .line 37
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/Argument;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lmiui/upnp/typedef/device/Service;
    .locals 1

    .line 17
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->service:Lmiui/upnp/typedef/device/Service;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "relatedStateVariable":Ljava/lang/String;
    new-instance v5, Lmiui/upnp/typedef/device/Argument;

    invoke-direct {v5, v2, v3, v4}, Lmiui/upnp/typedef/device/Argument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v5, "a":Lmiui/upnp/typedef/device/Argument;
    iget-object v6, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "direction":Ljava/lang/String;
    .end local v4    # "relatedStateVariable":Ljava/lang/String;
    .end local v5    # "a":Lmiui/upnp/typedef/device/Argument;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setService(Lmiui/upnp/typedef/device/Service;)V
    .locals 0
    .param p1, "service"    # Lmiui/upnp/typedef/device/Service;

    .line 21
    iput-object p1, p0, Lmiui/upnp/typedef/device/Action;->service:Lmiui/upnp/typedef/device/Service;

    .line 22
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Argument;

    .line 88
    .local v1, "a":Lmiui/upnp/typedef/device/Argument;
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getDirection()Lmiui/upnp/typedef/device/Argument$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Argument$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    .end local v1    # "a":Lmiui/upnp/typedef/device/Argument;
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
