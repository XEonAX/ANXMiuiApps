.class public final enum Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;
.super Ljava/lang/Enum;
.source "RemoverGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

.field public static final enum FREE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

.field public static final enum LINE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

.field public static final enum POINT:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;


# instance fields
.field private mBuilder:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    const-string v1, "FREE"

    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Free$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Free$Builder;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;-><init>(Ljava/lang/String;ILcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->FREE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .line 306
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    const-string v1, "LINE"

    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;

    invoke-direct {v2, v6}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;)V

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;-><init>(Ljava/lang/String;ILcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->LINE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .line 307
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    const-string v1, "POINT"

    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;

    invoke-direct {v2, v6}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;)V

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;-><init>(Ljava/lang/String;ILcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->POINT:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .line 304
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->FREE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->LINE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->POINT:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "builder":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->mBuilder:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;

    .line 313
    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->mBuilder:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    return-object v0
.end method


# virtual methods
.method activated()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->mBuilder:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
