.class public Lcom/ali/auth/third/core/model/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_CONFIRMLOGIN:Ljava/lang/String; = "mobile_confirm_login"

.field public static final ACTION_CONTINUELOGIN:Ljava/lang/String; = "continueLogin"

.field public static final ACTION_QUIT:Ljava/lang/String; = "quit"

.field public static final ACTION_RELOGIN:Ljava/lang/String; = "relogin"

.field public static final ACTION_TRUSTLOGIN:Ljava/lang/String; = "trustLogin"

.field public static final COOKIES:Ljava/lang/String; = "cookies"

.field public static final COOKIE_SPLIT:Ljava/lang/String; = "\u0005"

.field public static final H5_SCENE:Ljava/lang/String; = "h5_scene"

.field public static final H5_TOKEN:Ljava/lang/String; = "h5_token"

.field public static final ISV_SCOPE_FLAG:Ljava/lang/String; = "$isv_scope$"

.field public static final KERNEL_NAME:Ljava/lang/String; = "kernel"

.field public static final NATIVE_SCENE:Ljava/lang/String; = "native_scene"

.field public static final NATIVE_TOKEN:Ljava/lang/String; = "native_token"

.field public static final PARAM_HAVANA_IV_TOKEN:Ljava/lang/String; = "havana_iv_token"

.field public static final PARAM_IV_TOKEN:Ljava/lang/String; = "iv_token"

.field public static final PARAM_SCENE:Ljava/lang/String; = "scene"

.field public static final PARAM_TOKEN:Ljava/lang/String; = "token"

.field public static final PLUGIN_VENDOR_KEY:Ljava/lang/String; = "plugin.vendor"

.field public static final QUERY_STRING:Ljava/lang/String; = "aliusersdk_h5querystring"

.field public static final SERVICE_SCOPE_FLAG_VALUE:Ljava/lang/String; = "true"

.field public static final SHORTURL:Ljava/lang/String; = "shortUrl"

.field public static TB_SESSION:Ljava/lang/String; = null

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UA:Ljava/lang/String; = "ua"

.field public static final UMID:Ljava/lang/String; = "umidtoken"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USER_ACTIVITY:Ljava/lang/String; = "userDefActivity"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final WEB_ACTION:Ljava/lang/String; = "action"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tb_session"

    sput-object v0, Lcom/ali/auth/third/core/model/Constants;->TB_SESSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
