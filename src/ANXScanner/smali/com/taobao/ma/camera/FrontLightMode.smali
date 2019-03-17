.class public final enum Lcom/taobao/ma/camera/FrontLightMode;
.super Ljava/lang/Enum;
.source "FrontLightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/ma/camera/FrontLightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/ma/camera/FrontLightMode;

.field public static final enum AUTO:Lcom/taobao/ma/camera/FrontLightMode;

.field public static final enum OFF:Lcom/taobao/ma/camera/FrontLightMode;

.field public static final enum ON:Lcom/taobao/ma/camera/FrontLightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/taobao/ma/camera/FrontLightMode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/taobao/ma/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/ma/camera/FrontLightMode;->ON:Lcom/taobao/ma/camera/FrontLightMode;

    .line 31
    new-instance v0, Lcom/taobao/ma/camera/FrontLightMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/taobao/ma/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/ma/camera/FrontLightMode;->AUTO:Lcom/taobao/ma/camera/FrontLightMode;

    .line 33
    new-instance v0, Lcom/taobao/ma/camera/FrontLightMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/taobao/ma/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/ma/camera/FrontLightMode;->OFF:Lcom/taobao/ma/camera/FrontLightMode;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/ma/camera/FrontLightMode;

    sget-object v1, Lcom/taobao/ma/camera/FrontLightMode;->ON:Lcom/taobao/ma/camera/FrontLightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/ma/camera/FrontLightMode;->AUTO:Lcom/taobao/ma/camera/FrontLightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/ma/camera/FrontLightMode;->OFF:Lcom/taobao/ma/camera/FrontLightMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/ma/camera/FrontLightMode;->$VALUES:[Lcom/taobao/ma/camera/FrontLightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static parse(Ljava/lang/String;)Lcom/taobao/ma/camera/FrontLightMode;
    .locals 1
    .param p0, "modeString"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p0, :cond_0

    sget-object v0, Lcom/taobao/ma/camera/FrontLightMode;->OFF:Lcom/taobao/ma/camera/FrontLightMode;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/taobao/ma/camera/FrontLightMode;->valueOf(Ljava/lang/String;)Lcom/taobao/ma/camera/FrontLightMode;

    move-result-object v0

    goto :goto_0
.end method

.method public static readPref(Landroid/content/SharedPreferences;)Lcom/taobao/ma/camera/FrontLightMode;
    .locals 2
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 40
    const-string v0, "preferences_front_light_mode"

    sget-object v1, Lcom/taobao/ma/camera/FrontLightMode;->OFF:Lcom/taobao/ma/camera/FrontLightMode;

    invoke-virtual {v1}, Lcom/taobao/ma/camera/FrontLightMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/ma/camera/FrontLightMode;->parse(Ljava/lang/String;)Lcom/taobao/ma/camera/FrontLightMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/ma/camera/FrontLightMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/taobao/ma/camera/FrontLightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/camera/FrontLightMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/ma/camera/FrontLightMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/taobao/ma/camera/FrontLightMode;->$VALUES:[Lcom/taobao/ma/camera/FrontLightMode;

    invoke-virtual {v0}, [Lcom/taobao/ma/camera/FrontLightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/ma/camera/FrontLightMode;

    return-object v0
.end method
