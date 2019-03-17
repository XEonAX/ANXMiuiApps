.class public final enum Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;
.super Ljava/lang/Enum;
.source "EditorGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VersionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

.field public static final enum Alpha:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

.field public static final enum Beta:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

.field public static final enum Dev:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

.field public static final enum RC:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

.field public static final enum Release:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    const-string v1, "Alpha"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Alpha:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    const-string v1, "Beta"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Beta:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    const-string v1, "Dev"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Dev:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    const-string v1, "RC"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->RC:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    const-string v1, "Release"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Release:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Alpha:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Beta:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Dev:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->RC:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->Release:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$VersionType;

    return-object v0
.end method
