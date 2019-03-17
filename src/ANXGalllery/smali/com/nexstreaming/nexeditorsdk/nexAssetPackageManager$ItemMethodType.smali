.class public final enum Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;
.super Ljava/lang/Enum;
.source "nexAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemMethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemAudio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemBeat:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemDynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemExtra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemFont:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemKedl:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemLut:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemMedia:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemOverlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemRenderitem:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemStaticCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

.field public static final enum ItemTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemOverlay"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemOverlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 201
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemRenderitem"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemRenderitem:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 202
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemKedl"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemKedl:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 203
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemAudio"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemAudio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 204
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemFont"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemFont:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 205
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemTemplate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 206
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemLut"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemLut:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 207
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemMedia"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemMedia:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 208
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemExtra"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemExtra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 209
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemCollage"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 210
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemStaticCollage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemStaticCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 211
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemDynamicCollage"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemDynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 212
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    const-string v1, "ItemBeat"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemBeat:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    .line 199
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemOverlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemRenderitem:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemKedl:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemAudio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemFont:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemLut:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemMedia:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemExtra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemStaticCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemDynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemBeat:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

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
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;
    .locals 1

    .prologue
    .line 199
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    return-object v0
.end method
