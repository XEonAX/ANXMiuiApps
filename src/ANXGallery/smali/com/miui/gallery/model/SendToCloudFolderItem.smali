.class public Lcom/miui/gallery/model/SendToCloudFolderItem;
.super Ljava/lang/Object;
.source "SendToCloudFolderItem.java"


# instance fields
.field private babyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

.field private final count:I

.field private folderName:Ljava/lang/String;

.field private final isShareAlbum:Z

.field private final localGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "localGroupId"    # Ljava/lang/String;
    .param p3, "isShareAlbum"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->count:I

    .line 15
    iput-object p2, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->localGroupId:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->isShareAlbum:Z

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "localGroupId"    # Ljava/lang/String;
    .param p3, "isShareAlbum"    # Z
    .param p4, "folderName"    # Ljava/lang/String;
    .param p5, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/model/SendToCloudFolderItem;-><init>(ILjava/lang/String;Z)V

    .line 22
    iput-object p4, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->folderName:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->babyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 24
    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->localGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public isShareAlbum()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miui/gallery/model/SendToCloudFolderItem;->isShareAlbum:Z

    return v0
.end method
