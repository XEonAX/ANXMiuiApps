.class public final enum Lcom/miui/extraphoto/sdk/ExtraFunc;
.super Ljava/lang/Enum;
.source "ExtraFunc.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/extraphoto/sdk/ExtraFunc;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/extraphoto/sdk/ExtraFunc;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/extraphoto/sdk/ExtraFunc;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FUNC_FANCYCOLOR:Lcom/miui/extraphoto/sdk/ExtraFunc;

.field public static final enum FUNC_FREEVIEW:Lcom/miui/extraphoto/sdk/ExtraFunc;

.field public static final enum FUNC_REFOCUS:Lcom/miui/extraphoto/sdk/ExtraFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraFunc;

    const-string v1, "FUNC_FANCYCOLOR"

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/sdk/ExtraFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraFunc;->FUNC_FANCYCOLOR:Lcom/miui/extraphoto/sdk/ExtraFunc;

    .line 8
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraFunc;

    const-string v1, "FUNC_REFOCUS"

    invoke-direct {v0, v1, v3}, Lcom/miui/extraphoto/sdk/ExtraFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraFunc;->FUNC_REFOCUS:Lcom/miui/extraphoto/sdk/ExtraFunc;

    .line 9
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraFunc;

    const-string v1, "FUNC_FREEVIEW"

    invoke-direct {v0, v1, v4}, Lcom/miui/extraphoto/sdk/ExtraFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraFunc;->FUNC_FREEVIEW:Lcom/miui/extraphoto/sdk/ExtraFunc;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/extraphoto/sdk/ExtraFunc;

    sget-object v1, Lcom/miui/extraphoto/sdk/ExtraFunc;->FUNC_FANCYCOLOR:Lcom/miui/extraphoto/sdk/ExtraFunc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/extraphoto/sdk/ExtraFunc;->FUNC_REFOCUS:Lcom/miui/extraphoto/sdk/ExtraFunc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/extraphoto/sdk/ExtraFunc;->FUNC_FREEVIEW:Lcom/miui/extraphoto/sdk/ExtraFunc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraFunc;->$VALUES:[Lcom/miui/extraphoto/sdk/ExtraFunc;

    .line 21
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraFunc$1;

    invoke-direct {v0}, Lcom/miui/extraphoto/sdk/ExtraFunc$1;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraFunc;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/extraphoto/sdk/ExtraFunc;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/miui/extraphoto/sdk/ExtraFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/sdk/ExtraFunc;

    return-object v0
.end method

.method public static values()[Lcom/miui/extraphoto/sdk/ExtraFunc;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/miui/extraphoto/sdk/ExtraFunc;->$VALUES:[Lcom/miui/extraphoto/sdk/ExtraFunc;

    invoke-virtual {v0}, [Lcom/miui/extraphoto/sdk/ExtraFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/extraphoto/sdk/ExtraFunc;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/ExtraFunc;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    return-void
.end method
