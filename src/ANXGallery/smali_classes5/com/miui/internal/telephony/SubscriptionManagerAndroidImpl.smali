.class public Lcom/miui/internal/telephony/SubscriptionManagerAndroidImpl;
.super Ljava/lang/Object;
.source "SubscriptionManagerAndroidImpl.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SubscriptionAndroidImpl"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManager;
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 24
    new-instance v0, Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api26SubscriptionManagerImpl;-><init>()V

    return-object v0

    .line 25
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 26
    new-instance v0, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api24SubscriptionManagerImpl;-><init>()V

    return-object v0

    .line 27
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 28
    new-instance v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;-><init>()V

    return-object v0

    .line 29
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 30
    new-instance v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;-><init>()V

    return-object v0

    .line 32
    :cond_3
    new-instance v0, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;-><init>()V

    return-object v0
.end method
