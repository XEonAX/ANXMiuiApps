.class public final enum Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;
.super Ljava/lang/Enum;
.source "nexApplicationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APILevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

.field public static final enum OverlayAnimateLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

.field public static final enum OverlayImageLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

.field public static final enum OverlayVideoLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

.field public static final enum UnLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;


# instance fields
.field private final internalValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 860
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    const-string v1, "UnLimited"

    invoke-direct {v0, v1, v2, v2}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->UnLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    .line 861
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    const-string v1, "OverlayImageLimited"

    invoke-direct {v0, v1, v3, v3}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->OverlayImageLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    .line 862
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    const-string v1, "OverlayVideoLimited"

    invoke-direct {v0, v1, v4, v4}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->OverlayVideoLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    .line 863
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    const-string v1, "OverlayAnimateLimited"

    invoke-direct {v0, v1, v5, v5}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->OverlayAnimateLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    .line 859
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->UnLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->OverlayImageLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->OverlayVideoLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->OverlayAnimateLimited:Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

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
    .line 866
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 867
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->internalValue:I

    .line 868
    return-void
.end method

.method public static fromValue(I)Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;
    .locals 5

    .prologue
    .line 872
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->values()[Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 873
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 876
    :goto_1
    return-object v0

    .line 872
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 876
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;
    .locals 1

    .prologue
    .line 859
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$APILevel;->internalValue:I

    return v0
.end method
