.class public Lmiui/upnp/typedef/device/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Subscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields:Lmiui/upnp/typedef/field/FieldList;

.field private service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lmiui/upnp/typedef/device/Subscription$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Subscription$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Subscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 59
    invoke-direct {p0}, Lmiui/upnp/typedef/device/Subscription;->initialize()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 69
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Subscription;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 63
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lmiui/upnp/typedef/device/Service;
    .locals 1

    .line 14
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->service:Lmiui/upnp/typedef/device/Service;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 2

    .line 38
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    .line 74
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setService(Lmiui/upnp/typedef/device/Service;)V
    .locals 0
    .param p1, "service"    # Lmiui/upnp/typedef/device/Service;

    .line 18
    iput-object p1, p0, Lmiui/upnp/typedef/device/Subscription;->service:Lmiui/upnp/typedef/device/Service;

    .line 19
    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTimeout(I)Z
    .locals 3
    .param p1, "timeout"    # I

    .line 42
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/SubscriptionDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget-object v0, p0, Lmiui/upnp/typedef/device/Subscription;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    return-void
.end method
