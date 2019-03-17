.class Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;
.super Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseSyncListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/BackupTitle;)V
    .locals 1

    .prologue
    .line 522
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p2, "x1"    # Lcom/miui/gallery/ui/BackupTitle$1;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;)V

    return-void
.end method


# virtual methods
.method public onCustomClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BackupTitle;->showContextMenu()Z

    .line 527
    return-void
.end method
