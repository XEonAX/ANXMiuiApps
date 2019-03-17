.class public Lcom/miui/gallery/util/deviceprovider/BigIntentProvider;
.super Ljava/lang/Object;
.source "BigIntentProvider.java"

# interfaces
.implements Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "account"

    return-object v0
.end method

.method public getXiaomiAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "com.xiaomi"

    return-object v0
.end method
