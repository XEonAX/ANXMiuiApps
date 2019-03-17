.class public final enum Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;
.super Ljava/lang/Enum;
.source "StatusHandleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/StatusHandleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoViewPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

.field public static final enum FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

.field public static final enum FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

.field public static final enum HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

.field public static final enum NONE:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->NONE:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 22
    new-instance v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    const-string v1, "FULL_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 23
    new-instance v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 24
    new-instance v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    const-string v1, "FOOTER"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    sget-object v1, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->NONE:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FULL_SCREEN:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->HEADER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->FOOTER:Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->$VALUES:[Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->$VALUES:[Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    invoke-virtual {v0}, [Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;

    return-object v0
.end method
