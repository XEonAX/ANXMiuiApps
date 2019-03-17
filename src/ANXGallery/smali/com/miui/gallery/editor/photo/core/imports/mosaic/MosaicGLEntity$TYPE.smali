.class final enum Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;
.super Ljava/lang/Enum;
.source "MosaicGLEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

.field public static final enum EFFECT:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

.field public static final enum ORIGIN:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

.field public static final enum RESOURCE:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    const-string v1, "ORIGIN"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->ORIGIN:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .line 18
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    const-string v1, "EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->EFFECT:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .line 19
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->RESOURCE:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->ORIGIN:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->EFFECT:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->RESOURCE:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    return-object v0
.end method
