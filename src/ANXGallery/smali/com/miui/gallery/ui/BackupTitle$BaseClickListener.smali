.class abstract Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;
.super Ljava/lang/Object;
.source "BackupTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/BackupTitle;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p2, "x1"    # Lcom/miui/gallery/ui/BackupTitle$1;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;->onCustomClick(Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->access$1500(Lcom/miui/gallery/ui/BackupTitle;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method protected abstract onCustomClick(Landroid/view/View;)V
.end method
