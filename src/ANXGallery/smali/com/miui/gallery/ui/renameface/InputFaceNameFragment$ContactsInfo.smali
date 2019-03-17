.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsInfo"
.end annotation


# instance fields
.field _id:Ljava/lang/String;

.field coverPath:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    return-void
.end method
