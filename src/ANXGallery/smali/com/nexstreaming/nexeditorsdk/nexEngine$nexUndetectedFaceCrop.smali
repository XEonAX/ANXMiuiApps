.class public final enum Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;
.super Ljava/lang/Enum;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "nexUndetectedFaceCrop"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

.field public static final enum NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

.field public static final enum ZOOM:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5099
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    .line 5100
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v3, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->ZOOM:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    .line 5097
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->ZOOM:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

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
    .line 5105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5106
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->mValue:I

    .line 5107
    return-void
.end method

.method public static fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;
    .locals 5

    .prologue
    .line 5114
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->values()[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 5115
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 5118
    :goto_1
    return-object v0

    .line 5114
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5118
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;
    .locals 1

    .prologue
    .line 5097
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;
    .locals 1

    .prologue
    .line 5097
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 5110
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->mValue:I

    return v0
.end method
