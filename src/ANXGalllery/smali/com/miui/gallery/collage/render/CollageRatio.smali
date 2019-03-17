.class public final enum Lcom/miui/gallery/collage/render/CollageRatio;
.super Ljava/lang/Enum;
.source "CollageRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/collage/render/CollageRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/collage/render/CollageRatio;

.field public static final enum RATIO_1_1:Lcom/miui/gallery/collage/render/CollageRatio;

.field public static final enum RATIO_3_4:Lcom/miui/gallery/collage/render/CollageRatio;


# instance fields
.field public final iconRes:I

.field public final ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRatio;

    const-string v1, "RATIO_3_4"

    const v2, 0x7f0200ab

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/gallery/collage/render/CollageRatio;-><init>(Ljava/lang/String;IIF)V

    sput-object v0, Lcom/miui/gallery/collage/render/CollageRatio;->RATIO_3_4:Lcom/miui/gallery/collage/render/CollageRatio;

    .line 7
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRatio;

    const-string v1, "RATIO_1_1"

    const v2, 0x7f0200a8

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/miui/gallery/collage/render/CollageRatio;-><init>(Ljava/lang/String;IIF)V

    sput-object v0, Lcom/miui/gallery/collage/render/CollageRatio;->RATIO_1_1:Lcom/miui/gallery/collage/render/CollageRatio;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/collage/render/CollageRatio;

    sget-object v1, Lcom/miui/gallery/collage/render/CollageRatio;->RATIO_3_4:Lcom/miui/gallery/collage/render/CollageRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/collage/render/CollageRatio;->RATIO_1_1:Lcom/miui/gallery/collage/render/CollageRatio;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/collage/render/CollageRatio;->$VALUES:[Lcom/miui/gallery/collage/render/CollageRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .param p3, "iconRes"    # I
    .param p4, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/miui/gallery/collage/render/CollageRatio;->iconRes:I

    .line 13
    iput p4, p0, Lcom/miui/gallery/collage/render/CollageRatio;->ratio:F

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/collage/render/CollageRatio;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/miui/gallery/collage/render/CollageRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/render/CollageRatio;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/collage/render/CollageRatio;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/miui/gallery/collage/render/CollageRatio;->$VALUES:[Lcom/miui/gallery/collage/render/CollageRatio;

    invoke-virtual {v0}, [Lcom/miui/gallery/collage/render/CollageRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/collage/render/CollageRatio;

    return-object v0
.end method
