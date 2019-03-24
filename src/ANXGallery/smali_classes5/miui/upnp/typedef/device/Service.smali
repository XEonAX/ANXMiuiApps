.class public Lmiui/upnp/typedef/device/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/device/Action;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lmiui/upnp/typedef/device/Device;

.field private fields:Lmiui/upnp/typedef/field/FieldList;

.field private volatile properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private subscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/device/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lmiui/upnp/typedef/device/urn/ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lmiui/upnp/typedef/device/Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/device/Service;->TAG:Ljava/lang/String;

    .line 270
    new-instance v0, Lmiui/upnp/typedef/device/Service$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Service$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Service;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 23
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    .line 199
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Service;->initialize()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 23
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    .line 218
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Service;->readFromParcel(Landroid/os/Parcel;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/device/urn/ServiceType;)V
    .locals 1
    .param p1, "serviceType"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 23
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    .line 203
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Service;->initialize()V

    .line 204
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Service;->setType(Lmiui/upnp/typedef/device/urn/ServiceType;)V

    .line 205
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 208
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ScpdUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 215
    return-void
.end method


# virtual methods
.method public addAction(Lmiui/upnp/typedef/device/Action;)V
    .locals 2
    .param p1, "action"    # Lmiui/upnp/typedef/device/Action;

    .line 161
    invoke-virtual {p1, p0}, Lmiui/upnp/typedef/device/Action;->setService(Lmiui/upnp/typedef/device/Service;)V

    .line 162
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public addProperty(Lmiui/upnp/typedef/property/Property;)V
    .locals 2
    .param p1, "property"    # Lmiui/upnp/typedef/property/Property;

    .line 153
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public addProperty(Lmiui/upnp/typedef/property/PropertyDefinition;)V
    .locals 4
    .param p1, "def"    # Lmiui/upnp/typedef/property/PropertyDefinition;

    .line 149
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/upnp/typedef/property/Property;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lmiui/upnp/typedef/property/Property;-><init>(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public addSubscription(Lmiui/upnp/typedef/device/Subscription;)V
    .locals 2
    .param p1, "subscriber"    # Lmiui/upnp/typedef/device/Subscription;

    .line 170
    invoke-virtual {p1, p0}, Lmiui/upnp/typedef/device/Subscription;->setService(Lmiui/upnp/typedef/device/Service;)V

    .line 171
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Subscription;->getCallbackUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public cleanPropertyState()V
    .locals 3

    .line 191
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 192
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyDefinition;->isSendEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->cleanState()V

    .line 195
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/device/Action;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

    return-object v0
.end method

.method public getControlUrl()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Lmiui/upnp/typedef/device/Device;
    .locals 1

    .line 29
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->device:Lmiui/upnp/typedef/device/Device;

    return-object v0
.end method

.method public getEventSubUrl()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/Property;

    return-object v0
.end method

.method public getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 137
    .local v0, "def":Lmiui/upnp/typedef/property/PropertyDefinition;
    iget-object v1, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 138
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    if-nez v1, :cond_0

    .line 139
    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v0

    .line 145
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    :goto_0
    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 105
    .local v1, "property":Lmiui/upnp/typedef/property/Property;
    if-nez v1, :cond_0

    .line 106
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 113
    .end local v1    # "property":Lmiui/upnp/typedef/property/Property;
    :goto_0
    sget-object v1, Lmiui/upnp/typedef/device/Service;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPropertyValue name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v0
.end method

.method public getScpdUrl()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ScpdUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/device/Subscription;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lmiui/upnp/typedef/device/urn/ServiceType;
    .locals 1

    .line 37
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-object v0
.end method

.method public isPropertyChanged()Z
    .locals 3

    .line 179
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 180
    .local v1, "p":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyDefinition;->isSendEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v0, 0x1

    return v0

    .line 185
    .end local v1    # "p":Lmiui/upnp/typedef/property/Property;
    :cond_0
    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSubscribed()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

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

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 223
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 227
    const-class v3, Lmiui/upnp/typedef/device/Action;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/device/Action;

    .line 228
    .local v3, "action":Lmiui/upnp/typedef/device/Action;
    invoke-virtual {p0, v3}, Lmiui/upnp/typedef/device/Service;->addAction(Lmiui/upnp/typedef/device/Action;)V

    .line 226
    .end local v3    # "action":Lmiui/upnp/typedef/device/Action;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 233
    const-class v3, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/property/Property;

    .line 234
    .local v3, "property":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {p0, v3}, Lmiui/upnp/typedef/device/Service;->addProperty(Lmiui/upnp/typedef/property/Property;)V

    .line 232
    .end local v3    # "property":Lmiui/upnp/typedef/property/Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 239
    const-class v2, Lmiui/upnp/typedef/device/Subscription;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/Subscription;

    .line 240
    .local v2, "sub":Lmiui/upnp/typedef/device/Subscription;
    invoke-virtual {p0, v2}, Lmiui/upnp/typedef/device/Service;->addSubscription(Lmiui/upnp/typedef/device/Subscription;)V

    .line 238
    .end local v2    # "sub":Lmiui/upnp/typedef/device/Subscription;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 242
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public setControlUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDevice(Lmiui/upnp/typedef/device/Device;)V
    .locals 0
    .param p1, "device"    # Lmiui/upnp/typedef/device/Device;

    .line 33
    iput-object p1, p0, Lmiui/upnp/typedef/device/Service;->device:Lmiui/upnp/typedef/device/Device;

    .line 34
    return-void
.end method

.method public setEventSubUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":Z
    iget-object v1, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 122
    .local v1, "property":Lmiui/upnp/typedef/property/Property;
    if-nez v1, :cond_0

    .line 123
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v1, p2}, Lmiui/upnp/typedef/property/Property;->setDataValue(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .end local v1    # "property":Lmiui/upnp/typedef/property/Property;
    :goto_0
    sget-object v1, Lmiui/upnp/typedef/device/Service;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPropertyValue name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0
.end method

.method public setScpdUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ScpdUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSubscribed(Z)Z
    .locals 3
    .param p1, "subscribed"    # Z

    .line 81
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSubscriptionId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ServiceDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setType(Lmiui/upnp/typedef/device/urn/ServiceType;)V
    .locals 0
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 41
    iput-object p1, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 246
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->type:Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->actions:Ljava/util/Map;

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

    check-cast v1, Lmiui/upnp/typedef/device/Action;

    .line 251
    .local v1, "action":Lmiui/upnp/typedef/device/Action;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 252
    .end local v1    # "action":Lmiui/upnp/typedef/device/Action;
    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    .line 256
    .local v1, "def":Lmiui/upnp/typedef/property/Property;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 257
    .end local v1    # "def":Lmiui/upnp/typedef/property/Property;
    goto :goto_1

    .line 259
    :cond_1
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lmiui/upnp/typedef/device/Service;->subscribers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Subscription;

    .line 261
    .local v1, "sub":Lmiui/upnp/typedef/device/Subscription;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 262
    .end local v1    # "sub":Lmiui/upnp/typedef/device/Subscription;
    goto :goto_2

    .line 263
    :cond_2
    return-void
.end method
