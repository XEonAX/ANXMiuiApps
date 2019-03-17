.class public final Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;
.super Ljava/lang/Object;
.source "nexOverlayKineMasterExpression.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DRIFTING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final DROP:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final FADE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final FLOATING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final POP:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final SCALE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final SLIDE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final SPIN:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field public static final SQUISHING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

.field private static final values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;


# instance fields
.field private KMinID:Ljava/lang/String;

.field private KMoutID:Ljava/lang/String;

.field private KMoverallID:Ljava/lang/String;

.field private KineMasterID:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v1, "None"

    const-string v3, "none"

    const-string v4, "none"

    const-string v5, "none"

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 42
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Fade"

    const-string v6, "FadeIn"

    const-string v7, "FadeOut"

    const-string v8, "none"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->FADE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 43
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Pop"

    const-string v6, "PopIn"

    const-string v7, "ScaleUpOut"

    const-string v8, "none"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->POP:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 44
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Slide"

    const-string v6, "SlideRightIn"

    const-string v7, "SlideRightOut"

    const-string v8, "none"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SLIDE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 45
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Spin"

    const-string v6, "SpinCCWIn"

    const-string v7, "SpinCWOut"

    const-string v8, "none"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SPIN:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 46
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Drop"

    const/4 v5, 0x5

    const-string v6, "DropIn"

    const-string v7, "FadeOut"

    const-string v8, "none"

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->DROP:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 47
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Scale"

    const/4 v5, 0x6

    const-string v6, "ScaleUpIn"

    const-string v7, "ScaleDownOut"

    const-string v8, "none"

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SCALE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 48
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Floating"

    const/4 v5, 0x7

    const-string v6, "FadeIn"

    const-string v7, "FadeOut"

    const-string v8, "FloatingOverall"

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->FLOATING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 49
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Drifting"

    const/16 v5, 0x8

    const-string v6, "FadeIn"

    const-string v7, "FadeOut"

    const-string v8, "DriftingOverall"

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->DRIFTING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 50
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    const-string v4, "Squishing"

    const/16 v5, 0x9

    const-string v6, "FadeIn"

    const-string v7, "FadeOut"

    const-string v8, "SquishingOverall"

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SQUISHING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->FADE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->POP:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v1, v0, v10

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SLIDE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v1, v0, v11

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SPIN:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->DROP:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SCALE:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->FLOATING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->DRIFTING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->SQUISHING:Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->name:Ljava/lang/String;

    .line 114
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KineMasterID:I

    .line 115
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KMinID:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KMoutID:Ljava/lang/String;

    .line 117
    iput-object p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KMoverallID:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static getExpression(I)Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 89
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 92
    :cond_0
    if-gez p0, :cond_1

    .line 93
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(I)V

    throw v0

    .line 95
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getNames()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 107
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method

.method public static getPresetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->values:[Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    return-object v0
.end method


# virtual methods
.method public getID()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KineMasterID:I

    return v0
.end method

.method getNames(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KMinID:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KMoutID:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->KMoverallID:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
