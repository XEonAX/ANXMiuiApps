.class public final enum Lcom/miui/gallery/share/QRPreference$Status;
.super Ljava/lang/Enum;
.source "QRPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/QRPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/share/QRPreference$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/share/QRPreference$Status;

.field public static final enum FAILED:Lcom/miui/gallery/share/QRPreference$Status;

.field public static final enum REQUESTING:Lcom/miui/gallery/share/QRPreference$Status;

.field public static final enum SUCCESS:Lcom/miui/gallery/share/QRPreference$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/miui/gallery/share/QRPreference$Status;

    const-string v1, "REQUESTING"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/share/QRPreference$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/share/QRPreference$Status;->REQUESTING:Lcom/miui/gallery/share/QRPreference$Status;

    .line 28
    new-instance v0, Lcom/miui/gallery/share/QRPreference$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/share/QRPreference$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/share/QRPreference$Status;->SUCCESS:Lcom/miui/gallery/share/QRPreference$Status;

    .line 29
    new-instance v0, Lcom/miui/gallery/share/QRPreference$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/share/QRPreference$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/share/QRPreference$Status;->FAILED:Lcom/miui/gallery/share/QRPreference$Status;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/share/QRPreference$Status;

    sget-object v1, Lcom/miui/gallery/share/QRPreference$Status;->REQUESTING:Lcom/miui/gallery/share/QRPreference$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/share/QRPreference$Status;->SUCCESS:Lcom/miui/gallery/share/QRPreference$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/share/QRPreference$Status;->FAILED:Lcom/miui/gallery/share/QRPreference$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/share/QRPreference$Status;->$VALUES:[Lcom/miui/gallery/share/QRPreference$Status;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/share/QRPreference$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/miui/gallery/share/QRPreference$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/share/QRPreference$Status;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/share/QRPreference$Status;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/miui/gallery/share/QRPreference$Status;->$VALUES:[Lcom/miui/gallery/share/QRPreference$Status;

    invoke-virtual {v0}, [Lcom/miui/gallery/share/QRPreference$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/share/QRPreference$Status;

    return-object v0
.end method
