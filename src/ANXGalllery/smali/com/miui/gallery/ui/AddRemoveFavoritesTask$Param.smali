.class public Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;
.super Ljava/lang/Object;
.source "AddRemoveFavoritesTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddRemoveFavoritesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field private mAddRemoveBy:I

.field private mData:[Ljava/lang/String;

.field private mIds:[J

.field private mOperationType:I


# direct methods
.method public constructor <init>(II[J)V
    .locals 0
    .param p1, "operationType"    # I
    .param p2, "addRemoveBy"    # I
    .param p3, "ids"    # [J

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mOperationType:I

    .line 87
    iput p2, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mAddRemoveBy:I

    .line 88
    iput-object p3, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mIds:[J

    .line 89
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # I
    .param p2, "addRemoveBy"    # I
    .param p3, "data"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mOperationType:I

    .line 81
    iput p2, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mAddRemoveBy:I

    .line 82
    iput-object p3, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mData:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mOperationType:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mAddRemoveBy:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;->mIds:[J

    return-object v0
.end method
