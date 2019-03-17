.class public final enum Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;
.super Ljava/lang/Enum;
.source "nexCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexCrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

.field public static final enum FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

.field public static final enum FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

.field public static final enum NONE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

.field public static final enum PANORAMA:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

.field public static final enum PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

.field public static final enum PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 250
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    const-string v1, "FIT"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    const-string v1, "FILL"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    const-string v1, "PAN_RAND"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    const-string v1, "PAN_FACE"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->NONE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    const-string v1, "PANORAMA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PANORAMA:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    .line 249
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->NONE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PANORAMA:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

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
    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;
    .locals 1

    .prologue
    .line 249
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    return-object v0
.end method
