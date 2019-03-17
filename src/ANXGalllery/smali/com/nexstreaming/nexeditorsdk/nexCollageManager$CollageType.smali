.class public final enum Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;
.super Ljava/lang/Enum;
.source "nexCollageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexCollageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

.field public static final enum ALL:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

.field public static final enum DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

.field public static final enum StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    const-string v1, "StaticCollage"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    const-string v1, "DynamicCollage"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->ALL:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->ALL:Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexCollageManager$CollageType;

    return-object v0
.end method
