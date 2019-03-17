.class final enum Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;
.super Ljava/lang/Enum;
.source "TranslateDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

.field public static final enum IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

.field public static final enum IN_PROGRESS:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IN_PROGRESS:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IN_PROGRESS:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    return-object v0
.end method
