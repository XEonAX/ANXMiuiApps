.class public final enum Lcom/miui/gallery/picker/helper/Picker$ImageType;
.super Ljava/lang/Enum;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/helper/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/picker/helper/Picker$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/picker/helper/Picker$ImageType;

.field public static final enum ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

.field public static final enum ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

.field public static final enum THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/helper/Picker$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;

    const-string v1, "ORIGIN"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/picker/helper/Picker$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    new-instance v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;

    const-string v1, "ORIGIN_OR_DOWNLOAD_INFO"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/picker/helper/Picker$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/picker/helper/Picker$ImageType;

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ImageType;->THUMBNAIL:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->$VALUES:[Lcom/miui/gallery/picker/helper/Picker$ImageType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->$VALUES:[Lcom/miui/gallery/picker/helper/Picker$ImageType;

    invoke-virtual {v0}, [Lcom/miui/gallery/picker/helper/Picker$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/picker/helper/Picker$ImageType;

    return-object v0
.end method
