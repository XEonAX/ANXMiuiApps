.class Lmiui/telephony/SubscriptionManager$ConstantsDefiner;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstantsDefiner"
.end annotation


# static fields
.field private static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final SLOT_ID:Ljava/lang/String; = "slot_id"

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultPhoneIdConstant()I
    .locals 1

    .line 73
    const v0, 0x7fffffff

    return v0
.end method

.method static getDefaultSlotIdConstant()I
    .locals 1

    .line 77
    const v0, 0x7fffffff

    return v0
.end method

.method static getDefaultSubscriptionIdConstant()I
    .locals 1

    .line 69
    const v0, 0x7fffffff

    return v0
.end method

.method static getInvalidPhoneIdConstant()I
    .locals 1

    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method static getInvalidSlotIdConstant()I
    .locals 1

    .line 65
    const/4 v0, -0x1

    return v0
.end method

.method static getInvalidSubscriptionIdConstant()I
    .locals 1

    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method static getPhoneKeyConstant()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "phone_id"

    return-object v0
.end method

.method static getSlotKeyConstant()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "slot_id"

    return-object v0
.end method

.method static getSubscriptionKeyConstant()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "subscription_id"

    return-object v0
.end method
