.class public final Lcom/xiaomi/stat/MiStat$UserProperty;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/MiStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserProperty"
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final FIRST_ACTIVATION:Ljava/lang/String; = "first_activation"

.field public static final PACKAGE_CHANNEL:Ljava/lang/String; = "package_channel"

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final SIGN_UP_METHOD:Ljava/lang/String; = "sign_up_method"

.field public static final SIGN_UP_TIME:Ljava/lang/String; = "sign_up_time"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/MiStat;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/MiStat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/stat/MiStat;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xiaomi/stat/MiStat$UserProperty;->a:Lcom/xiaomi/stat/MiStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
