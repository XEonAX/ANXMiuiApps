.class public Lcom/miui/gallery/ui/DeletionTask$Param;
.super Ljava/lang/Object;
.source "DeletionTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DeletionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public mAlbumId:J

.field public mAlbumName:Ljava/lang/String;

.field public mDeleteBy:I

.field public mDeleteOptions:I

.field public mDeleteReason:I

.field public mDupType:I

.field public mIds:[J

.field public mPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>([JII)V
    .locals 2
    .param p1, "albumIds"    # [J
    .param p2, "options"    # I
    .param p3, "deleteReason"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDupType:I

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    .line 102
    iput-object p1, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    .line 103
    iput p2, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteOptions:I

    .line 104
    iput p3, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteReason:I

    .line 105
    return-void
.end method

.method public constructor <init>([JIJLjava/lang/String;I)V
    .locals 3
    .param p1, "ids"    # [J
    .param p2, "dupType"    # I
    .param p3, "albumId"    # J
    .param p5, "albumName"    # Ljava/lang/String;
    .param p6, "deleteReason"    # I

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v2, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDupType:I

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    .line 108
    iput-object p1, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    .line 109
    iput p2, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDupType:I

    .line 110
    iput-wide p3, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    .line 111
    iput-object p5, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumName:Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    .line 113
    iput p6, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteReason:I

    .line 114
    return-void
.end method


# virtual methods
.method public getItemsCount()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    array-length v0, v0

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mPaths:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    array-length v0, v0

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
