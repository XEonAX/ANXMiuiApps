.class public final enum Lcom/nexstreaming/app/common/util/FileType$FileCategory;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/util/FileType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/util/FileType$FileCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/util/FileType$FileCategory;

.field public static final enum Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

.field public static final enum Font:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

.field public static final enum Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

.field public static final enum Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

.field public static final enum VideoOrAudio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    const-string v1, "Audio"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/util/FileType$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    const-string v1, "Video"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/app/common/util/FileType$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    const-string v1, "VideoOrAudio"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/app/common/util/FileType$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->VideoOrAudio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    const-string v1, "Image"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/app/common/util/FileType$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    new-instance v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    const-string v1, "Font"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/app/common/util/FileType$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Font:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Audio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Video:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->VideoOrAudio:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Image:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->Font:Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->$VALUES:[Lcom/nexstreaming/app/common/util/FileType$FileCategory;

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
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/util/FileType$FileCategory;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/util/FileType$FileCategory;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/nexstreaming/app/common/util/FileType$FileCategory;->$VALUES:[Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/util/FileType$FileCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/util/FileType$FileCategory;

    return-object v0
.end method
