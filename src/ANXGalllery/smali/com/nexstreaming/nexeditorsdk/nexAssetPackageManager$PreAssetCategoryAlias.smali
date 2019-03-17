.class public final enum Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;
.super Ljava/lang/Enum;
.source "nexAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreAssetCategoryAlias"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Audio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum BeatTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum ClipGraphics:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Collage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Effect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Extra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Font:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum TextEffect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

.field public static final enum Transition:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Effect"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Effect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 169
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Transition"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Transition:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 170
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Font"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Font:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 171
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Overlay"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 172
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Audio"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Audio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 173
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Template"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 174
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "ClipGraphics"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->ClipGraphics:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 175
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "TextEffect"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->TextEffect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 176
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Extra"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Extra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 177
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "Collage"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Collage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 178
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "StaticCollage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 179
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "DynamicCollage"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 180
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    const-string v1, "BeatTemplate"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->BeatTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    .line 167
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Effect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Transition:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Font:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Audio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->ClipGraphics:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->TextEffect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Extra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->Collage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->StaticCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->DynamicCollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->BeatTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$PreAssetCategoryAlias;

    return-object v0
.end method
