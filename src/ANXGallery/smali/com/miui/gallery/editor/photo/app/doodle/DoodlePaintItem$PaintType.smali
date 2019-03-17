.class final enum Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;
.super Ljava/lang/Enum;
.source "DoodlePaintItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PaintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

.field public static final enum HEAVY:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

.field public static final enum LIGHT:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

.field public static final enum MEDIUM:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;


# instance fields
.field public final paintSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    const-string v1, "HEAVY"

    const v2, 0x415553f8    # 13.333f

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->HEAVY:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    .line 32
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    const-string v1, "MEDIUM"

    const v2, 0x408aa7f0    # 4.333f

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->MEDIUM:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    .line 33
    new-instance v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    const-string v1, "LIGHT"

    const v2, 0x3faa9fbe    # 1.333f

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->LIGHT:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    sget-object v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->HEAVY:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->MEDIUM:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->LIGHT:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->$VALUES:[Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "paintSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->paintSize:F

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->$VALUES:[Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    return-object v0
.end method
