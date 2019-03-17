.class public final enum Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
.super Ljava/lang/Enum;
.source "ColorFormatChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

.field public static final enum NV12:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

.field public static final enum NV21:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

.field public static final enum UNKNOWN:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->UNKNOWN:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    const-string v1, "NV12"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->NV12:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    const-string v1, "NV21"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->NV21:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->UNKNOWN:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->NV12:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->NV21:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    return-object v0
.end method
