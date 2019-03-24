.class Lmiui/telephony/TelephonyHelper$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/telephony/TelephonyHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected cS()Lmiui/telephony/TelephonyHelper;
    .locals 2

    .line 26
    new-instance v0, Lmiui/telephony/TelephonyHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/TelephonyHelper;-><init>(Lmiui/telephony/TelephonyHelper$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lmiui/telephony/TelephonyHelper$1;->cS()Lmiui/telephony/TelephonyHelper;

    move-result-object v0

    return-object v0
.end method
