.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Phone"
.end annotation


# static fields
.field static CONTACT_ID:Ljava/lang/String;

.field static DISPLAY_NAME:Ljava/lang/String;

.field static NUMBER:Ljava/lang/String;

.field static PHOTO_THUMBNAIL_URI:Ljava/lang/String;

.field static PHOTO_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    const-string v0, "_id"

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->CONTACT_ID:Ljava/lang/String;

    .line 521
    const-string v0, "display_name"

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->DISPLAY_NAME:Ljava/lang/String;

    .line 522
    const-string v0, "data1"

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->NUMBER:Ljava/lang/String;

    .line 523
    const-string v0, "photo_uri"

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->PHOTO_URI:Ljava/lang/String;

    .line 524
    const-string v0, "photo_thumb_uri"

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->PHOTO_THUMBNAIL_URI:Ljava/lang/String;

    return-void
.end method
