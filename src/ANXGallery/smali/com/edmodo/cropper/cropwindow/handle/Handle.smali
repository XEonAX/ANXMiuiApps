.class public final enum Lcom/edmodo/cropper/cropwindow/handle/Handle;
.super Ljava/lang/Enum;
.source "Handle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/edmodo/cropper/cropwindow/handle/Handle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;


# instance fields
.field private mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "TOP_LEFT"

    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v5, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 27
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "TOP_RIGHT"

    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v6, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 28
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "BOTTOM_LEFT"

    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v7, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 29
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "BOTTOM_RIGHT"

    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v8, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 30
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "LEFT"

    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3}, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v9, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 31
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "TOP"

    const/4 v2, 0x5

    new-instance v3, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 32
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "RIGHT"

    const/4 v2, 0x6

    new-instance v3, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 33
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "BOTTOM"

    const/4 v2, 0x7

    new-instance v3, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 34
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    const-string v1, "CENTER"

    const/16 v2, 0x8

    new-instance v3, Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;

    invoke-direct {v3}, Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/edmodo/cropper/cropwindow/handle/Handle;

    sget-object v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v7

    sget-object v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v8

    sget-object v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/edmodo/cropper/cropwindow/handle/Handle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V
    .locals 0
    .param p3, "helper"    # Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    return-object v0
.end method

.method public static values()[Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/edmodo/cropper/cropwindow/handle/Handle;

    invoke-virtual {v0}, [Lcom/edmodo/cropper/cropwindow/handle/Handle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/edmodo/cropper/cropwindow/handle/Handle;

    return-object v0
.end method


# virtual methods
.method public updateCropWindow(FFFLandroid/graphics/RectF;F)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/RectF;
    .param p5, "snapRadius"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->updateCropWindow(FFFLandroid/graphics/RectF;F)V

    .line 63
    return-void
.end method

.method public updateCropWindow(FFLandroid/graphics/RectF;F)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/RectF;
    .param p4, "snapRadius"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->updateCropWindow(FFLandroid/graphics/RectF;F)V

    .line 54
    return-void
.end method
