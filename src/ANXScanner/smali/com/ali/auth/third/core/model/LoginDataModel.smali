.class public Lcom/ali/auth/third/core/model/LoginDataModel;
.super Ljava/lang/Object;


# instance fields
.field public autoLoginToken:Ljava/lang/String;

.field public cookies:[Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public expires:J

.field public extendAttribute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public externalCookies:[Ljava/lang/String;

.field public headPicLink:Ljava/lang/String;

.field public loginPhone:Ljava/lang/String;

.field public loginServiceExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loginTime:J

.field public nick:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public openSid:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public topAccessToken:Ljava/lang/String;

.field public topAuthCode:Ljava/lang/String;

.field public topExpireTime:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
