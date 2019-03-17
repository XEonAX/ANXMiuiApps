.class final enum Lcom/larvalabs/svgandroid/SVGParser$Prefix;
.super Ljava/lang/Enum;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Prefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/larvalabs/svgandroid/SVGParser$Prefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/larvalabs/svgandroid/SVGParser$Prefix;

.field public static final enum matrix:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

.field public static final enum rotate:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

.field public static final enum scale:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

.field public static final enum skewX:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

.field public static final enum skewY:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

.field public static final enum translate:Lcom/larvalabs/svgandroid/SVGParser$Prefix;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 469
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    const-string v1, "matrix"

    invoke-direct {v0, v1, v3}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->matrix:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    .line 470
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    const-string/jumbo v1, "translate"

    invoke-direct {v0, v1, v4}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->translate:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    .line 471
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    const-string v1, "scale"

    invoke-direct {v0, v1, v5}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->scale:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    .line 472
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    const-string/jumbo v1, "skewX"

    invoke-direct {v0, v1, v6}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->skewX:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    .line 473
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    const-string/jumbo v1, "skewY"

    invoke-direct {v0, v1, v7}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->skewY:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    .line 474
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    const-string v1, "rotate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/larvalabs/svgandroid/SVGParser$Prefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->rotate:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    .line 468
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    sget-object v1, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->matrix:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    aput-object v1, v0, v3

    sget-object v1, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->translate:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    aput-object v1, v0, v4

    sget-object v1, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->scale:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    aput-object v1, v0, v5

    sget-object v1, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->skewX:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    aput-object v1, v0, v6

    sget-object v1, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->skewY:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->rotate:Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    aput-object v2, v0, v1

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->$VALUES:[Lcom/larvalabs/svgandroid/SVGParser$Prefix;

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
    .line 468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$Prefix;
    .locals 1

    .prologue
    .line 468
    const-class v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    return-object v0
.end method

.method public static values()[Lcom/larvalabs/svgandroid/SVGParser$Prefix;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/larvalabs/svgandroid/SVGParser$Prefix;->$VALUES:[Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    invoke-virtual {v0}, [Lcom/larvalabs/svgandroid/SVGParser$Prefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/larvalabs/svgandroid/SVGParser$Prefix;

    return-object v0
.end method
