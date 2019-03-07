.class public final enum Lcom/xiaomi/analytics/LogEvent$LogType;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/analytics/LogEvent$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

.field public static final enum TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

.field public static final enum TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    const-string v1, "TYPE_EVENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/analytics/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    const-string v1, "TYPE_AD"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/analytics/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/analytics/LogEvent$LogType;

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    .line 34
    iput p3, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    .line 35
    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 42
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v0}, [Lcom/xiaomi/analytics/LogEvent$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    return v0
.end method
