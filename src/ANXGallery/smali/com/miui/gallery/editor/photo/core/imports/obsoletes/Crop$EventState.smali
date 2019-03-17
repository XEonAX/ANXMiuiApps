.class final enum Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;
.super Ljava/lang/Enum;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EventState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum ANIMATOR:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum RESIZE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum SCALE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field public static final enum TRANSLATE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "RESIZE"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->RESIZE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "TRANSLATE"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->TRANSLATE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "ANIMATOR"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ANIMATOR:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "ROTATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const-string v1, "SKIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->RESIZE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->TRANSLATE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ANIMATOR:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    return-object v0
.end method
