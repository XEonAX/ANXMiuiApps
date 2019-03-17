.class public final enum Lcom/miui/gallery/picker/helper/Picker$ResultType;
.super Ljava/lang/Enum;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/helper/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/picker/helper/Picker$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/picker/helper/Picker$ResultType;

.field public static final enum ID:Lcom/miui/gallery/picker/helper/Picker$ResultType;

.field public static final enum LEGACY_GENERAL:Lcom/miui/gallery/picker/helper/Picker$ResultType;

.field public static final enum LEGACY_MEDIA:Lcom/miui/gallery/picker/helper/Picker$ResultType;

.field public static final enum OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;

    const-string v1, "ID"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/helper/Picker$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ID:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;

    const-string v1, "LEGACY_GENERAL"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/picker/helper/Picker$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_GENERAL:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;

    const-string v1, "LEGACY_MEDIA"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/picker/helper/Picker$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_MEDIA:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;

    const-string v1, "OPEN_URI"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/picker/helper/Picker$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/picker/helper/Picker$ResultType;

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ID:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_GENERAL:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_MEDIA:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;->$VALUES:[Lcom/miui/gallery/picker/helper/Picker$ResultType;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/picker/helper/Picker$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/picker/helper/Picker$ResultType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ResultType;->$VALUES:[Lcom/miui/gallery/picker/helper/Picker$ResultType;

    invoke-virtual {v0}, [Lcom/miui/gallery/picker/helper/Picker$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/picker/helper/Picker$ResultType;

    return-object v0
.end method
