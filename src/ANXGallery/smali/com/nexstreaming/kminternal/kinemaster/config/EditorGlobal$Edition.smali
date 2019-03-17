.class public final enum Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;
.super Ljava/lang/Enum;
.source "EditorGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

.field public static final enum DeviceLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

.field public static final enum PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

.field public static final enum TimeLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    const-string v1, "DeviceLock"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->DeviceLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    const-string v1, "TimeLock"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->TimeLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    const-string v1, "PlayStore"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->DeviceLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->TimeLock:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->PlayStore:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$Edition;

    return-object v0
.end method
