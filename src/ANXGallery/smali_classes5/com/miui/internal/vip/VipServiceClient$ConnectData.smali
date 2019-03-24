.class Lcom/miui/internal/vip/VipServiceClient$ConnectData;
.super Ljava/lang/Object;
.source "VipServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/VipServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectData"
.end annotation


# instance fields
.field public achievements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field public isServiceAvailable:Z

.field public userInfo:Lmiui/vip/VipUserInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
