.class public final enum Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;
.super Ljava/lang/Enum;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FastPreviewOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum adj_brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum adj_contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum adj_saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum adj_sharpness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum adj_vignette:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum adj_vignetteRange:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum cts:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum customlut_clip:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum customlut_power:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum normal:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

.field public static final enum tintColor:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4139
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->normal:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "brightness"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "contrast"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "saturation"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "adj_brightness"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "adj_contrast"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "adj_saturation"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string/jumbo v1, "tintColor"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->tintColor:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "cts"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->cts:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "adj_vignette"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_vignette:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "adj_vignetteRange"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_vignetteRange:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "adj_sharpness"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_sharpness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "customlut_clip"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->customlut_clip:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const-string v1, "customlut_power"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->customlut_power:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    .line 4138
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->normal:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_brightness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_contrast:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_saturation:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->tintColor:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->cts:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_vignette:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_vignetteRange:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->adj_sharpness:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->customlut_clip:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->customlut_power:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

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
    .line 4138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;
    .locals 1

    .prologue
    .line 4138
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;
    .locals 1

    .prologue
    .line 4138
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    return-object v0
.end method
