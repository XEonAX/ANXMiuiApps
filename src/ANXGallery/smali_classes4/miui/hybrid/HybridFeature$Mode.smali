.class public final enum Lmiui/hybrid/HybridFeature$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/HybridFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/hybrid/HybridFeature$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASYNC:Lmiui/hybrid/HybridFeature$Mode;

.field public static final enum CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

.field public static final enum SYNC:Lmiui/hybrid/HybridFeature$Mode;

.field private static final synthetic yv:[Lmiui/hybrid/HybridFeature$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lmiui/hybrid/HybridFeature$Mode;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/HybridFeature$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    .line 56
    new-instance v0, Lmiui/hybrid/HybridFeature$Mode;

    const-string v1, "ASYNC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/hybrid/HybridFeature$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    .line 62
    new-instance v0, Lmiui/hybrid/HybridFeature$Mode;

    const-string v1, "CALLBACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/hybrid/HybridFeature$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/hybrid/HybridFeature$Mode;

    sget-object v1, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/hybrid/HybridFeature$Mode;->yv:[Lmiui/hybrid/HybridFeature$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 45
    const-class v0, Lmiui/hybrid/HybridFeature$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/hybrid/HybridFeature$Mode;

    return-object p0
.end method

.method public static values()[Lmiui/hybrid/HybridFeature$Mode;
    .locals 1

    .line 45
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->yv:[Lmiui/hybrid/HybridFeature$Mode;

    invoke-virtual {v0}, [Lmiui/hybrid/HybridFeature$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/hybrid/HybridFeature$Mode;

    return-object v0
.end method
