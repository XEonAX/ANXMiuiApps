.class public final enum Lcom/milink/api/v1/type/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/milink/api/v1/type/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/DeviceType;

.field private static final AIRKAN:Ljava/lang/String; = "airkan"

.field private static final AIRPLAY:Ljava/lang/String; = "airplay"

.field private static final AIRTUNES:Ljava/lang/String; = "airtunes"

.field private static final DLNA_SPEAKER:Ljava/lang/String; = "dlna.speaker"

.field private static final DLNA_TV:Ljava/lang/String; = "dlna.tv"

.field public static final enum Speaker:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum TV:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum Unknown:Lcom/milink/api/v1/type/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    .line 7
    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "TV"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    .line 8
    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Speaker"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/milink/api/v1/type/DeviceType;

    sget-object v1, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->$VALUES:[Lcom/milink/api/v1/type/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 17
    const-string v0, "airkan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    .line 20
    :cond_0
    const-string v0, "airplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    .line 23
    :cond_1
    const-string v0, "airtunes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    .line 26
    :cond_2
    const-string v0, "dlna.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    .line 29
    :cond_3
    const-string v0, "dlna.speaker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    return-object v0

    .line 32
    :cond_4
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/milink/api/v1/type/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/milink/api/v1/type/DeviceType;
    .locals 1

    .line 4
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->$VALUES:[Lcom/milink/api/v1/type/DeviceType;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method
