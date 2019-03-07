.class public final enum Lcom/miui/screenrecorder/config/PhoneConfigInstance;
.super Ljava/lang/Enum;
.source "PhoneConfigInstance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/screenrecorder/config/PhoneConfigInstance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/screenrecorder/config/PhoneConfigInstance;

.field public static final enum INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;


# instance fields
.field private instance:Lcom/miui/screenrecorder/config/PhoneConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    sget-object v1, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->$VALUES:[Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance v3, Lcom/miui/screenrecorder/config/PhoneConfig;

    invoke-direct {v3}, Lcom/miui/screenrecorder/config/PhoneConfig;-><init>()V

    iput-object v3, p0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->instance:Lcom/miui/screenrecorder/config/PhoneConfig;

    .line 16
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "PhoneConfig.json"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/JsonUtils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/screenrecorder/tools/JsonUtils;->parseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 18
    .local v1, "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/config/PhoneConfig;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/config/PhoneConfig;

    .line 19
    .local v0, "config":Lcom/miui/screenrecorder/config/PhoneConfig;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/PhoneConfig;->getPhoneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    iput-object v0, p0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->instance:Lcom/miui/screenrecorder/config/PhoneConfig;

    .line 24
    .end local v0    # "config":Lcom/miui/screenrecorder/config/PhoneConfig;
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/screenrecorder/config/PhoneConfigInstance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    return-object v0
.end method

.method public static values()[Lcom/miui/screenrecorder/config/PhoneConfigInstance;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->$VALUES:[Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-virtual {v0}, [Lcom/miui/screenrecorder/config/PhoneConfigInstance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    return-object v0
.end method


# virtual methods
.method public getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->instance:Lcom/miui/screenrecorder/config/PhoneConfig;

    return-object v0
.end method
