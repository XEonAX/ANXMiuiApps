.class public final enum Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;
.super Ljava/lang/Enum;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "nexPlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

.field public static final enum IDLE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

.field public static final enum NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

.field public static final enum RECORD:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

.field public static final enum RUN:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4448
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    .line 4449
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->IDLE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    .line 4450
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    const-string v1, "RUN"

    invoke-direct {v0, v1, v4, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->RUN:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    .line 4451
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v5, v5}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->RECORD:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    .line 4446
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->IDLE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->RUN:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->RECORD:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 4455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4456
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->mValue:I

    .line 4457
    return-void
.end method

.method public static fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;
    .locals 5

    .prologue
    .line 4464
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->values()[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 4465
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 4468
    :goto_1
    return-object v0

    .line 4464
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4468
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;
    .locals 1

    .prologue
    .line 4446
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;
    .locals 1

    .prologue
    .line 4446
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 4460
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexPlayState;->mValue:I

    return v0
.end method
