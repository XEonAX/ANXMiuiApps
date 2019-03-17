.class Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener$1;
.super Ljava/lang/Object;
.source "BackupTitle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->onCustomClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener$1;->this$1:Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener$1;->this$1:Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener$1;->this$1:Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;

    invoke-static {v1}, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;->access$1700(Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->access$1800(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    .line 551
    return-void
.end method
