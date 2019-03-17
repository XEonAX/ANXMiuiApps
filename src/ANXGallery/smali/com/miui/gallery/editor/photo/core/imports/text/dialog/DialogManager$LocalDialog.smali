.class public final enum Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;
.super Ljava/lang/Enum;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum ARROW_1:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum ARROW_2:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum NONE:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum OVAL:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum RECTANGLE:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

.field public static final enum RECT_HORIZONTAL:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;


# instance fields
.field public final mBackGroundColor:I

.field public final mBottomPercent:F

.field public final mCornerPosition:I

.field public final mGraphics:I

.field public final mIsCorner:Z

.field public final mLeftPercent:F

.field public final mRightPercent:F

.field public final mSmallIcon:I

.field public final mTopPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v15, 0x3e4ccccd    # 0.2f

    const v14, 0x7f1000eb

    const/4 v6, 0x0

    const/4 v2, 0x0

    const v13, 0x3e19999a    # 0.15f

    .line 26
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v1, "NONE"

    const v3, 0x7f02029c

    const v5, 0x7f1000ed

    move v4, v2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIIFFFF)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 27
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v4, "CIRCULAR"

    const/4 v5, 0x1

    const v6, 0x7f02029b

    const v7, 0x7f02029a

    const v10, 0x3e6147ae    # 0.22f

    const v12, 0x3e6b851f    # 0.23f

    move v8, v14

    move v9, v13

    move v11, v13

    invoke-direct/range {v3 .. v12}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIIFFFF)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 28
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v4, "RECTANGLE"

    const/4 v5, 0x2

    const v6, 0x7f0202a2

    const v7, 0x7f0202a1

    const v8, 0x7f1000ec

    const/high16 v12, 0x3e800000    # 0.25f

    move v9, v13

    move v10, v13

    move v11, v13

    invoke-direct/range {v3 .. v12}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIIFFFF)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->RECTANGLE:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 29
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v4, "RECT_HORIZONTAL"

    const/4 v5, 0x3

    const v6, 0x7f0202a0

    const v7, 0x7f02029f

    const v11, 0x3dcccccd    # 0.1f

    move v8, v14

    move v9, v13

    move v10, v15

    move v12, v15

    invoke-direct/range {v3 .. v12}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIIFFFF)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->RECT_HORIZONTAL:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 30
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v4, "OVAL"

    const/4 v5, 0x4

    const v6, 0x7f02029e

    const v7, 0x7f02029d

    const v8, 0x7f1000ee

    const v10, 0x3e2e147b    # 0.17f

    const v12, 0x3ea3d70a    # 0.32f

    move v9, v13

    move v11, v13

    invoke-direct/range {v3 .. v12}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIIFFFF)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->OVAL:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 31
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v4, "ARROW_1"

    const/4 v5, 0x5

    const v6, 0x7f020297

    const v7, 0x7f020296

    move v8, v14

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->ARROW_1:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 32
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    const-string v4, "ARROW_2"

    const/4 v5, 0x6

    const v6, 0x7f020299

    const v7, 0x7f020298

    const v8, 0x7f1000ee

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->ARROW_2:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->RECTANGLE:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->RECT_HORIZONTAL:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->OVAL:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->ARROW_1:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->ARROW_2:Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIFFFF)V
    .locals 1
    .param p3, "smallIcon"    # I
    .param p4, "graphics"    # I
    .param p5, "backGroundColor"    # I
    .param p6, "leftPercent"    # F
    .param p7, "topPercent"    # F
    .param p8, "rightPercent"    # F
    .param p9, "bottomPercent"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFFFF)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mSmallIcon:I

    .line 45
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mGraphics:I

    .line 46
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mBackGroundColor:I

    .line 47
    iput p6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mLeftPercent:F

    .line 48
    iput p7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mTopPercent:F

    .line 49
    iput p8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mRightPercent:F

    .line 50
    iput p9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mBottomPercent:F

    .line 51
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mIsCorner:Z

    .line 52
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mCornerPosition:I

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1
    .param p3, "smallIcon"    # I
    .param p4, "graphics"    # I
    .param p5, "backGroundColor"    # I
    .param p6, "cornerPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mSmallIcon:I

    .line 57
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mGraphics:I

    .line 58
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mBackGroundColor:I

    .line 59
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mLeftPercent:F

    .line 60
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mTopPercent:F

    .line 61
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mRightPercent:F

    .line 62
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mBottomPercent:F

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mIsCorner:Z

    .line 64
    iput p6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mCornerPosition:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    return-object v0
.end method
