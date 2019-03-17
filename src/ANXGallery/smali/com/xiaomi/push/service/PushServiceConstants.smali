.class public abstract Lcom/xiaomi/push/service/PushServiceConstants;
.super Ljava/lang/Object;
.source "PushServiceConstants.java"


# static fields
.field public static ACTION_UNINSTALL:Ljava/lang/String;

.field public static final GEO_VALUE_AUTHORIZATION_NOT_GRANT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.xiaomi.xmsf.push.UNINSTALL"

    sput-object v0, Lcom/xiaomi/push/service/PushServiceConstants;->ACTION_UNINSTALL:Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/PushServiceConstants;->GEO_VALUE_AUTHORIZATION_NOT_GRANT:Ljava/lang/String;

    return-void
.end method
