.class public final enum Lcom/ali/auth/third/core/broadcast/LoginAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/auth/third/core/broadcast/LoginAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/auth/third/core/broadcast/LoginAction;

.field public static final enum NOTIFY_LOGIN_CANCEL:Lcom/ali/auth/third/core/broadcast/LoginAction;

.field public static final enum NOTIFY_LOGIN_FAILED:Lcom/ali/auth/third/core/broadcast/LoginAction;

.field public static final enum NOTIFY_LOGIN_SUCCESS:Lcom/ali/auth/third/core/broadcast/LoginAction;

.field public static final enum NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ali/auth/third/core/broadcast/LoginAction;

    const-string v1, "NOTIFY_LOGIN_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/broadcast/LoginAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_SUCCESS:Lcom/ali/auth/third/core/broadcast/LoginAction;

    new-instance v0, Lcom/ali/auth/third/core/broadcast/LoginAction;

    const-string v1, "NOTIFY_LOGIN_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/ali/auth/third/core/broadcast/LoginAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_FAILED:Lcom/ali/auth/third/core/broadcast/LoginAction;

    new-instance v0, Lcom/ali/auth/third/core/broadcast/LoginAction;

    const-string v1, "NOTIFY_LOGIN_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/ali/auth/third/core/broadcast/LoginAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_CANCEL:Lcom/ali/auth/third/core/broadcast/LoginAction;

    new-instance v0, Lcom/ali/auth/third/core/broadcast/LoginAction;

    const-string v1, "NOTIFY_LOGOUT"

    invoke-direct {v0, v1, v5}, Lcom/ali/auth/third/core/broadcast/LoginAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ali/auth/third/core/broadcast/LoginAction;

    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_SUCCESS:Lcom/ali/auth/third/core/broadcast/LoginAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_FAILED:Lcom/ali/auth/third/core/broadcast/LoginAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_CANCEL:Lcom/ali/auth/third/core/broadcast/LoginAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->$VALUES:[Lcom/ali/auth/third/core/broadcast/LoginAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/auth/third/core/broadcast/LoginAction;
    .locals 1

    const-class v0, Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/broadcast/LoginAction;

    return-object v0
.end method

.method public static values()[Lcom/ali/auth/third/core/broadcast/LoginAction;
    .locals 1

    sget-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->$VALUES:[Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-virtual {v0}, [Lcom/ali/auth/third/core/broadcast/LoginAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/auth/third/core/broadcast/LoginAction;

    return-object v0
.end method
