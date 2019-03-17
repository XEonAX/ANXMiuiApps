.class public final enum Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;
.super Ljava/lang/Enum;
.source "EditorGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

.field public static final enum ASK_WIFI_MOBILE_NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

.field public static final enum ASK_WIFI_OR_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

.field public static final enum NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

.field public static final enum WIFI_AND_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

.field public static final enum WIFI_ONLY:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    const-string v1, "WIFI_AND_MOBILE"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->WIFI_AND_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    .line 49
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    const-string v1, "WIFI_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->WIFI_ONLY:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    .line 50
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    .line 51
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    const-string v1, "ASK_WIFI_OR_MOBILE"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->ASK_WIFI_OR_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    .line 52
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    const-string v1, "ASK_WIFI_MOBILE_NEVER"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->ASK_WIFI_MOBILE_NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->WIFI_AND_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->WIFI_ONLY:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->ASK_WIFI_OR_MOBILE:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->ASK_WIFI_MOBILE_NEVER:Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->$VALUES:[Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal$DataUsage;

    return-object v0
.end method
