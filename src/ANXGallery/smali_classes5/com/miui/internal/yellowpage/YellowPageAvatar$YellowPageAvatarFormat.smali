.class public final enum Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
.super Ljava/lang/Enum;
.source "YellowPageAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/YellowPageAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YellowPageAvatarFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "PHOTO_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 24
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "THUMBNAIL_NUMBER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 26
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "PHOTO_YID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 27
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "THUMBNAIL_YID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 29
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "PHOTO_NAME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 30
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const-string v1, "THUMBNAIL_NAME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->$VALUES:[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
    .locals 1

    .line 22
    sget-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->$VALUES:[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-virtual {v0}, [Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    return-object v0
.end method
