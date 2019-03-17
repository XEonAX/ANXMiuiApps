.class public final enum Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;
.super Ljava/lang/Enum;
.source "nexTranscode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field public static final enum BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field public static final enum CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field public static final enum CW_180:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field public static final enum CW_270:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field public static final enum CW_90:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    const-string v1, "BYPASS"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 115
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    const-string v1, "CW_0"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 116
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    const-string v1, "CW_90"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_90:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 117
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    const-string v1, "CW_180"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_180:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 118
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    const-string v1, "CW_270"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_270:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_90:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_180:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_270:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    return-object v0
.end method
