.class public Lmiui/upnp/typedef/device/SubscriptionDefinition;
.super Ljava/lang/Object;
.source "SubscriptionDefinition.java"


# static fields
.field private static final CALLBACK_URL:Ljava/lang/String; = "callbackUrl"

.field public static CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final TIMEOUT:Ljava/lang/String; = "timeout"

.field public static Timeout:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "callbackUrl"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/SubscriptionDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 13
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "subscriptionId"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/SubscriptionDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    .line 14
    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    const-string v1, "timeout"

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/SubscriptionDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
