.class public Lcom/miui/gallery/model/DisplayFolderItem;
.super Ljava/lang/Object;
.source "DisplayFolderItem.java"


# instance fields
.field public count:I

.field public coverImagePath:Ljava/lang/String;

.field public imageJob:Ljava/lang/String;

.field public isNewlyCreate:Z

.field public localGroupId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aJob"    # Ljava/lang/String;
    .param p3, "aCount"    # I
    .param p4, "aLocalGroupId"    # Ljava/lang/String;
    .param p5, "aPath"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/gallery/model/DisplayFolderItem;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/model/DisplayFolderItem;->imageJob:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/miui/gallery/model/DisplayFolderItem;->count:I

    .line 25
    iput-object p4, p0, Lcom/miui/gallery/model/DisplayFolderItem;->localGroupId:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/miui/gallery/model/DisplayFolderItem;->coverImagePath:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/model/DisplayFolderItem;->isNewlyCreate:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aThumbnailPath"    # Ljava/lang/String;
    .param p3, "aLocalGroupId"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/model/DisplayFolderItem;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/miui/gallery/model/DisplayFolderItem;->thumbnailPath:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/miui/gallery/model/DisplayFolderItem;->localGroupId:Ljava/lang/String;

    .line 19
    return-void
.end method
