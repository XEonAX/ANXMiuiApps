.class public Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;
.super Ljava/lang/Object;
.source "FaceAlbumHandlerBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceFolderItemImpl"
.end annotation


# instance fields
.field private mLocalGroupId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;
    .param p2, "displayFolderItem"    # Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v0, p2, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->mName:Ljava/lang/String;

    .line 102
    iget-object v0, p2, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;->localGroupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->mLocalGroupId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "localGroupId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->this$0:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->mName:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->mLocalGroupId:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->mLocalGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItemImpl;->mName:Ljava/lang/String;

    return-object v0
.end method
