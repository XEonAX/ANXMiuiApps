.class public final enum Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
.super Ljava/lang/Enum;
.source "SyncStateDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/SyncStateDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

.field public static final enum SCENE_ALWAYS:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

.field public static final enum SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

.field public static final enum SCENE_NONE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    const-string v1, "SCENE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_NONE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .line 6
    new-instance v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    const-string v1, "SCENE_IN_CHECK_MODE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .line 7
    new-instance v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    const-string v1, "SCENE_ALWAYS"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_ALWAYS:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    sget-object v1, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_NONE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_ALWAYS:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->$VALUES:[Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->$VALUES:[Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-virtual {v0}, [Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    return-object v0
.end method
