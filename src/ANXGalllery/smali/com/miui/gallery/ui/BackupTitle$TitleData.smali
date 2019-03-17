.class Lcom/miui/gallery/ui/BackupTitle$TitleData;
.super Ljava/lang/Object;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleData"
.end annotation


# instance fields
.field public mDirtyPhoto:I

.field public mDirtyVideo:I

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/BackupTitle$TitleItemData;",
            ">;"
        }
    .end annotation
.end field

.field public mShowDirty:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/BackupTitle;)V
    .locals 1

    .prologue
    .line 697
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleData;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mItems:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p2, "x1"    # Lcom/miui/gallery/ui/BackupTitle$1;

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle$TitleData;-><init>(Lcom/miui/gallery/ui/BackupTitle;)V

    return-void
.end method
