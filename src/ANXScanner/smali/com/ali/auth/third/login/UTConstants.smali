.class public Lcom/ali/auth/third/login/UTConstants;
.super Ljava/lang/Object;


# static fields
.field public static final E_AUTO_LOGIN_FAILURE:Ljava/lang/String;

.field public static final E_AUTO_LOGIN_SUCCESS:Ljava/lang/String;

.field public static final E_COOOPERATION_BIND:Ljava/lang/String; = "COOPERATION_TB_BIND"

.field public static final E_COOOPERATION_ERROR:Ljava/lang/String; = "COOPERATION_SYSTEM_ERROR"

.field public static final E_COOOPERATION_LOGIN:Ljava/lang/String; = "COOPERATION_TB_LOGIN"

.field public static final E_COOOPERATION_TRUST:Ljava/lang/String; = "COOPERATION_TRUST_LOGIN"

.field public static final E_GENERATE_TAOBAO_SIGN:Ljava/lang/String; = "GENERATE_TOPAPPLINK_TOKEN"

.field public static final E_H5_LOGIN_CANCEL:Ljava/lang/String;

.field public static final E_H5_LOGIN_FAILURE:Ljava/lang/String;

.field public static final E_H5_LOGIN_SUCCESS:Ljava/lang/String;

.field public static final E_H5_OPERATION_BIND_FAILURE:Ljava/lang/String;

.field public static final E_IV_LOGIN_FAILURE:Ljava/lang/String;

.field public static final E_TB_LOGIN_CANCEL:Ljava/lang/String;

.field public static final E_TB_LOGIN_FAILURE:Ljava/lang/String;

.field public static final E_TB_LOGIN_SUCCESS:Ljava/lang/String;

.field public static final E_TOP_TOKEN_LOGIN:Ljava/lang/String; = "TOP_TOKEN_LOGIN"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h5_bind_failure"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_H5_OPERATION_BIND_FAILURE:Ljava/lang/String;

    const-string v0, "h5_login_success"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_H5_LOGIN_SUCCESS:Ljava/lang/String;

    const-string v0, "h5_login_failure"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    const-string v0, "iv_login_failure"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_IV_LOGIN_FAILURE:Ljava/lang/String;

    const-string v0, "tb_login_success"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_TB_LOGIN_SUCCESS:Ljava/lang/String;

    const-string v0, "tb_login_failure"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    const-string v0, "auto_login_success"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_AUTO_LOGIN_SUCCESS:Ljava/lang/String;

    const-string v0, "auto_login_failure"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_AUTO_LOGIN_FAILURE:Ljava/lang/String;

    const-string v0, "h5_login_cancel"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_H5_LOGIN_CANCEL:Ljava/lang/String;

    const-string v0, "tb_login_cancel"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/login/UTConstants;->E_TB_LOGIN_CANCEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
