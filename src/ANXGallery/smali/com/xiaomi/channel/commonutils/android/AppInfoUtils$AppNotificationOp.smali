.class public final enum Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
.super Ljava/lang/Enum;
.source "AppInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppNotificationOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

.field public static final enum ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

.field public static final enum NOT_ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

.field public static final enum UNKNOWN:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->UNKNOWN:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    const-string v1, "ALLOWED"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    const-string v1, "NOT_ALLOWED"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->NOT_ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->UNKNOWN:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->NOT_ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->$VALUES:[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->$VALUES:[Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    invoke-virtual {v0}, [Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->value:I

    return v0
.end method
