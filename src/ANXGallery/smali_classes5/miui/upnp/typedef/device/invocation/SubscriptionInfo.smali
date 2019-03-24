.class public Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private discoveryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Lmiui/upnp/typedef/field/FieldList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 143
    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->initialize()V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    .line 15
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 162
    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->initialize()V

    .line 164
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 165
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 147
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 159
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCpAddress()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCpPort()I
    .locals 2

    .line 122
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoveryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    return-object v0
.end method

.method public getEventSubUrl()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFullEventSubUrl()Ljava/lang/String;
    .locals 4

    .line 30
    const-string v0, "http://%s:%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->getHostPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->getEventSubUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .line 26
    const-string v0, "%s:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->getHostPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHostPort()I
    .locals 2

    .line 42
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 2

    .line 90
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v2

    .line 173
    .local v2, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCpAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCpPort(I)Z
    .locals 3
    .param p1, "port"    # I

    .line 126
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDiscoveryTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "discoveryTypes":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/DiscoveryType;>;"
    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    .line 19
    return-void
.end method

.method public setEventSubUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setHostAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setHostPort(I)Z
    .locals 3
    .param p1, "port"    # I

    .line 46
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSessionId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSubscribed(Z)Z
    .locals 3
    .param p1, "subscribed"    # Z

    .line 86
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSubscriptionId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTimeout(I)Z
    .locals 3
    .param p1, "timeout"    # I

    .line 94
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/DiscoveryType;

    .line 188
    .local v1, "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    invoke-virtual {v1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    .end local v1    # "discoveryType":Lmiui/upnp/typedef/device/DiscoveryType;
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method
