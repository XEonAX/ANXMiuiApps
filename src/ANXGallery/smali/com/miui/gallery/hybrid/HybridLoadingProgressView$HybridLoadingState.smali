.class public final enum Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
.super Ljava/lang/Enum;
.source "HybridLoadingProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/HybridLoadingProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HybridLoadingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field public static final enum DATA_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field public static final enum LOCATION_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field public static final enum NETWORK_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field public static final enum OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field public static final enum SERVICE_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;


# instance fields
.field private mDefaultDescription:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    const-string v1, "NETWORK_ERROR"

    const v2, 0x7f0c0251

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->NETWORK_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 33
    new-instance v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    const-string v1, "SERVICE_ERROR"

    const v2, 0x7f0c0255

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->SERVICE_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 34
    new-instance v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    const-string v1, "DATA_ERROR"

    const v2, 0x7f0c024e

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->DATA_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 35
    new-instance v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    const-string v1, "LOCATION_ERROR"

    const v2, 0x7f0c024f

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->LOCATION_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 36
    new-instance v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    const-string v1, "OK"

    const v2, 0x104000a

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->NETWORK_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->SERVICE_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->DATA_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->LOCATION_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->$VALUES:[Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "defaultDesc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->mDefaultDescription:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->$VALUES:[Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    invoke-virtual {v0}, [Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-object v0
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->mDefaultDescription:I

    return v0
.end method
